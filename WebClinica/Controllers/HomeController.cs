﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using WebClinica.Models;

using PagedList;

namespace WebClinica.Controllers
{
    public class HomeController : Controller
    {
        ModelContacto DbContacto = new ModelContacto();
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult locales(int? page, string searchString)
        {
            string currentFilter = null;  
            ModelClinica local = new ModelClinica();
            //var datos = (from x in local.Clinicas where x.Est_cli == "1" orderby x.cod_cli select x);
            var datos = (from x in local.Clinicas where x.Est_cli == "1" select x);
            if (!String.IsNullOrEmpty(searchString))
            {
                datos = datos.Where(s => s.nom_cli.Contains(  searchString.ToString()   ) );
                /*
                 datos = datos.Where(s => s.des_cli.Contains(searchString)
                                 || s.FirstMidName.Contains(searchString));
                 */
            }
         
            datos = datos.OrderBy(x => x.cod_cli);
            if (searchString != null)
            {
                page = 1;
            }
            else
            {
                searchString = currentFilter;
            }

            ViewBag.CurrentFilter = searchString;


            //var datos = ( from x in  local.Clinicas where x.Est_cli=="1" orderby x.cod_cli select x );

 
            int pageSize = 8;
            int pageNumber = (page ?? 1);

            return View(datos.ToPagedList(pageNumber, pageSize));
        }
        public ActionResult mapa(long? id)
        {
            if (id == null){
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
 

        public ActionResult Contact()
        {
            if (TempData["mensaje"] != null)
            {
                ViewBag.mensaje = TempData["mensaje"];
                TempData["mensaje"] = null;
            }
            ViewBag.Message = "Puede Contactarse con nosostros "   ;
            return View();
        }


        // POST: auth2/Create
        [HttpPost]
        [ValidateAntiForgeryToken]
        //[Bind(Include = "nom_cont,emi_cont")]
        public ActionResult Contact( TbContacto dbcont)
        {
            try
            {
                dbcont.fecreg = System.DateTime.Now;
                DbContacto.TbContacto.Add(dbcont);
                DbContacto.SaveChanges();
                TempData["mensaje"] =  ("<div class='exito'>Su Mensaje Fue Registrado con Exito</div>");
                return RedirectToAction("Contact");

            }
            catch
            {
                ViewBag.mensaje =  ("<div class='alerta'>Error al Registra Valores</div>");
                return View();
            }
        }

     

    }
}