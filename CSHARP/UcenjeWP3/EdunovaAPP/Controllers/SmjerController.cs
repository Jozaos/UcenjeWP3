using EdunovaAPP.Data;
using Microsoft.AspNetCore.Mvc;

namespace EdunovaAPP.Controllers
{
    [ApiController]
    [Route("api/v1/[controller]")]
    public class SmjerController
    {
        // Dependency injection
        // Definiraš privatno svojstvo
        private readonly EdunovaContext _context;

        // Dependency injection
        // U konstruktoru primir instancu i dodjeliš privatnom svojstvu
        public SmjerController(EdunovaContext context)
        {
            _context = context;
        }


        [HttpGet]
        public IActionResult Get()
        {
            return new JsonResult(_context.Smjerovi.ToList());
        }

    }
}
