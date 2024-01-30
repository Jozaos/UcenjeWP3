using Microsoft.AspNetCore.Mvc;

namespace WebAPI.Controllers
{
    [ApiController]
    [Route("E01")]
    public class E01UlazIzlaz:ControllerBase
    {
        [HttpGet]
        [Route ("Hello")]
        public string HelloWorld(string Ime)
        {
            return "Dobrodošao, " + Ime;
        }

        [HttpGet]
        [Route("zad1")]
        public int Zad1(int a, int b)
        {
            return a+b;
        }

    }
}
