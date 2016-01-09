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

        ModelContacto DbContacto = new ModelContacto();
        // GET: Auth
        [Authorize] 
        public ActionResult Index()
        {
    
            return View();
        }
 

 

    }
}