using System;
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
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult locales(int? page)
        {
            string currentFilter = null; string searchString = null;
            LocalClinica local = new LocalClinica();

            if (searchString != null)
            {
                page = 1;
            }
            else
            {
                searchString = currentFilter;
            }

            ViewBag.CurrentFilter = searchString;


            var datos = ( from x in  local.Clinicas where x.Est_cli=="1" orderby x.cod_cli select x );

 
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
            LocalClinica local = new LocalClinica();
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
            return View(datos);
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
    }
}