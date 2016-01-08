using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

using WebClinica.Models;

namespace WebClinica.Controllers
{
    public class AuthController : Controller
    {
        // GET: Auth
         [Authorize] 
        public ActionResult Index()
        {
            return View();
        }
 

         // POST: auth2/Create
         [HttpPost]
         public ActionResult Index(FormCollection collection)
         {
             try
             {
                 // TODO: Add insert logic here

                 return RedirectToAction("Index");
             }
             catch
             {
                 return View();
             }
         }

    }
}