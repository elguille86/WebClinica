using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using WebClinica.Models;


namespace WebClinica.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult locales()
        {
            LocalClinica local = new LocalClinica();

            //var item = (from x in Items where x.Id == 123 select x).First();
            var datos = ( from x in  local.Clinicas where x.Est_cli=="1" select x );

            ViewBag.Message = "Lista de los Clinicas.";

            return View(datos);
        }
        public ActionResult mapa(long? id)
        {
            if (id == null)
            {
                
                RedirectToAction("locales", "Home");
               // return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            LocalClinica local = new LocalClinica();
            String codigo = id.ToString();
         
                var datos = (from x in local.Clinicas where x.cod_cli == codigo select x).First();
                if (datos == null)
                {
                    ViewBag.Message = "No se encuentra Datos";
                    return View();
                }

                ViewBag.Lat = datos.Lat_cli;
                ViewBag.Log = datos.Log_cli;
                ViewBag.descrip = datos.des_cli;
                ViewBag.nom_cli = datos.nom_cli;
                ViewBag.tel_cli = datos.tel_cli;

         
                return View(datos);
          
            

      
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
    }
}