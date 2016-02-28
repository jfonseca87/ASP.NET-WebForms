using PruebasAjax.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace PruebasAjax.Controllers
{
    public class HomeController : Controller
    {
        //
        // GET: /Home/
        public static List<Persona> personas = new List<Persona>();

        public ActionResult Index()
        {
            return View(personas.ToList());
        }

        public ActionResult Ingresar()
        {
            return View();
        }

        [HttpPost]
        public void ingresarDatos (Persona persona)
        {
            personas.Add(persona);
        }

    }
}
