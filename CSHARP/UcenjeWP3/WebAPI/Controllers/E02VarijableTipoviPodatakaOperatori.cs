using Microsoft.AspNetCore.Mvc;
using System.Numerics;
using System.Reflection.Metadata.Ecma335;

namespace WebAPI.Controllers
{
    [ApiController]
    [Route("E02")]
    public class E02VarijableTipoviPodatakaOperatori : ControllerBase
    {

        [HttpGet]
        [Route("zad1")]
        public int Zad1()
        {
            return int.MaxValue;
        }

        [HttpGet]
        [Route("zad2")]
        public float Zad2(int a, int b)
        {
            return a/(float)b;
        }


        [HttpGet]
        [Route("zad3")]
        public float Zad3(int a, int b)
        {
            return (a*b)+(a/(float)b);
        }


        [HttpGet]
        [Route("zad4")]
        public bool Zad4(int a, int b)
        {
            return a == b;
        }

        [HttpGet]
        [Route("zad5")]
        public string Zad5(string a, string b)
        {
            return a + " " + b;
        }
    }
}
