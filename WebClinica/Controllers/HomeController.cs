using System;
using System.Collections.Generic;
using System.Linq;
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
        public ActionResult mapa()
        {
            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
    }
}