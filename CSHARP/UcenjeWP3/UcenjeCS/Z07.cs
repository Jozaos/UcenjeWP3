using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace UcenjeCS
{//program unosi ime, visinu i tezinu osobe,
 //program ispisuje crvenom bojom ako je visina>170 i <190,
 //tezina<90,5 ti, {} si zgodan/zgodna
    internal class Z07
    {
        public static void Izvedi()
        {
            string ime = Pomocno.UcitajString("Unesi svoje ime");
            int visina = Pomocno.UcitajCijeliBroj("Unesi svoju visinu u cm");
            float tezina = Pomocno.UcitajDecimalniBroj("Unesi svoju tezinu u kg");

            if(visina>170 && visina < 190)
            {
                if (tezina < 90.5)
                {
                    if (ime.EndsWith('a'))
                    {
                        Console.WriteLine("Ti, "+ime+" si zgodna.");
                    }
                    else
                    {
                        Console.WriteLine("Ti, " + ime + " si zgodan.");
                    }
                }
            }
        }
    }
}
