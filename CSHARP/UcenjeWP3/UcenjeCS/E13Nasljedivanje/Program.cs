using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace UcenjeCS.E13Nasljedivanje
{
    internal class Program
    {

        public Program()
        {
            Console.WriteLine("Nalazim se u konstruktoru Programa u namespace E13");

            Primjer1();

            
        }

        private void Primjer1()
        {
            Predavac p=new Predavac();
            p.Ime = "Pero";
            p.Iban = "HR21512521";

            Polaznik polaznik = new Polaznik();
            polaznik.Ime = "Josip";
            polaznik.BrojUgovora = "12/24";

            Console.WriteLine(polaznik.BrojUgovora);

        }
    }
}
