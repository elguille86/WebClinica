using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

using System.Data.Entity;
using WebClinica.Models;
using System.Net;



using PagedList;

 

namespace WebClinica.Controllers
{
    public class AuthController : Controller
    {

        ModelContacto DbContacto = new ModelContacto();
        // GET: Auth
        [Authorize]
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
    }
}