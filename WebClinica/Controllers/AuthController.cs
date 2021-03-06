﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

using System.Data.Entity;
using WebClinica.Models;
using System.Net;
 
using PagedList;
using System.Configuration;
using System.Data.SqlClient;
using Dapper;
using System.Data;
 

namespace WebClinica.Controllers
{
    [Authorize]
    public class AuthController : Controller
    {

        ModelContacto DbContacto = new ModelContacto();
        ModelClinica DbClinica = new ModelClinica();
        //public AreaModel model = new AreaModel();
       //CClienteDataContext DcCliente = new DCClienteDataContext();//
        // GET: Auth
       
        public ActionResult Index(int? page, string searchString)
        {

            string currentFilter = null;
            ModelContacto Contacto = new ModelContacto();
            var datos = (from x in Contacto.TbContacto  select x);
            if (!String.IsNullOrEmpty(searchString))
            {
                datos = datos.Where(s => s.nom_cont.Contains(searchString.ToString()));
            }

            datos = datos.OrderByDescending(x => x.cod_cont );
            if (searchString != null)
            {
                page = 1;
            }
            else
            {
                searchString = currentFilter;
            }
            ViewBag.CurrentFilter = searchString;
            int pageSize = 6;
            int pageNumber = (page ?? 1);

            return View(datos.ToPagedList(pageNumber, pageSize));
        }

        public ActionResult DetailsContact(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            TbContacto datos = DbContacto.TbContacto.Find(id);

            if (datos == null)
            {
                return HttpNotFound();
            }
            return View(datos);
        }




        public ActionResult ListaClinicas(int? page, string searchString)
        {
            if (TempData["mensaje"] != null)
            {
                ViewBag.mensaje = TempData["mensaje"];
                TempData["mensaje"] = null;
            }
            string currentFilter = null;
            ModelClinica local = new ModelClinica();
            //var datos = (from x in local.Clinicas where x.Est_cli == "1" orderby x.cod_cli select x);
            var datos = (from x in local.Clinicas where x.Est_cli == "1" select x);
            if (!String.IsNullOrEmpty(searchString))
            {
                datos = datos.Where(s => s.nom_cli.Contains(searchString.ToString()));
 
            }

            datos = datos.OrderByDescending(x => x.cod_cli);
            if (searchString != null)
            {
                page = 1;
            }
            else
            {
                searchString = currentFilter;
            }

            ViewBag.CurrentFilter = searchString;
 

            int pageSize = 8;
            int pageNumber = (page ?? 1);

            return View(datos.ToPagedList(pageNumber, pageSize));
        }


        public ActionResult DetalleClinicas(long? id)
        {
            if (id == null)
            {
                //RedirectToAction("locales", "Home");
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            ModelClinica local = new ModelClinica();
            String codigo = id.ToString();

            var datos = (from x in local.Clinicas where x.cod_cli == codigo select x).First();
            if (datos.Equals(null))
            {
                ViewBag.Message = "No se encuentra Datos";
                return View();
            }
            ViewBag.Lat = datos.Lat_cli;
            ViewBag.Log = datos.Log_cli;
            ViewBag.descrip = datos.des_cli;
            ViewBag.nom_cli = datos.nom_cli;
            ViewBag.tel_cli = datos.tel_cli;
            ViewBag.dir_cli = datos.dir_cli;
            return View(datos);
        }
 

///-----------------------------------------------------
     

        public ActionResult CreateClinica()
        {
            if (TempData["mensaje"] != null)
            {
                ViewBag.mensaje = TempData["mensaje"];
                TempData["mensaje"] = null;
            }
            ViewBag.Message = "Puede Contactarse con nosostros ";
            return View();
        }


        // POST: auth2/Create
        [HttpPost]
        [ValidateAntiForgeryToken]
        //[Bind(Include = "nom_cont,emi_cont")]
        public ActionResult CreateClinica(Clinicas dbcont)
        {
            try
            {
                // this.ConnectionString = ConfigurationManager.ConnectionStrings["Movies"].ConnectionString;
                string Conexion = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
                ModelClinica DBClinica = new ModelClinica();
           using (var con = new SqlConnection(@Conexion))
                {
                    //result = Dapper.SqlMapper.Query<int>(Conexion,"SP_INSERTACLINICA",System.Data.CommandType.StoredProcedure);
                    con.Open();
                      var parameter = new DynamicParameters();  
                        parameter.Add("@nom_cli", dbcont.nom_cli);  
                        parameter.Add("@des_cli", dbcont.des_cli);  
                        parameter.Add("@dir_cli", dbcont.dir_cli);  
                        parameter.Add("@tel_cli", dbcont.tel_cli);  
                        parameter.Add("@Lat_cli", dbcont.Lat_cli);  
                        parameter.Add("@Log_cli", dbcont.Log_cli); 

                    Dapper.SqlMapper.Execute(con, "SP_INSERTACLINICA", parameter,    commandType: CommandType.StoredProcedure);
                    con.Close();
                }

                TempData["mensaje"] = ("<div class='exito'>Su Mensaje Fue Registrado con Exito</div>");
                return RedirectToAction("CreateClinica");

            }
            catch( Exception ex)
            {
                string mimsg = ex.Message;
                //ViewBag.mensaje = ("<div class='alerta'>Error al Registra Valores > " +ex.Message+" </div>");
                ViewBag.mensaje = ("<div class='alerta'>Error al Registra Valores   </div>");
                return View();
            }
        }




        public ActionResult EditClinicas(long? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            string codigo = id.ToString();
            ModelClinica local = new ModelClinica();
            Clinicas datos = (from x in local.Clinicas where x.cod_cli == codigo select x).First();
            //Clinicas datos = DbClinica.Clinicas.Find(id);
            if (datos == null)
            {
                return HttpNotFound();
            }
            if (TempData["mensaje"] != null)
            {
                ViewBag.mensaje = TempData["mensaje"];
                TempData["mensaje"] = null;
            }
            return View(datos);



    
   

        }


        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult EditClinicas(Clinicas miClinica)
        {

            try
            {
                if (ModelState.IsValid)
                {
                    miClinica.fec_Reg = System.DateTime.Now;
                    DbClinica.Entry(miClinica).State = EntityState.Modified;
                    DbClinica.SaveChanges();
                    TempData["mensaje"] = ("<div class='exito'>Dato Actualizado con Exito</div>");
                    return RedirectToAction("ListaClinicas");
                }
  
                return RedirectToAction("EditClinicas");
               // return RedirectToAction("EditClinicas");
                //return View(miClinica);
            }
            catch (Exception ex)
            {
                string mimsg = ex.Message;
                //ViewBag.mensaje = ("<div class='alerta'>Error al Registra Valores > " +ex.Message+" </div>");
                ViewBag.mensaje = ("<div class='alerta'>Error al Editar Valores  " + mimsg + " </div>");
                return View();
            }
        }


    }
}