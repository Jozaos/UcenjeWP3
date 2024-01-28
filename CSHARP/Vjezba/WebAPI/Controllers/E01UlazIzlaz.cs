


using Microsoft.AspNetCore.Mvc;

namespace WebAPI.Controllers
{
    [Route("Proba")]
    public class E01UlazIzlaz:ControllerBase
    {
        [HttpGet]
        [Route("v1")]
        
        public string Rendom(string Ime)
        {
            return "Dobro večer " + Ime;
        }
    }
}
