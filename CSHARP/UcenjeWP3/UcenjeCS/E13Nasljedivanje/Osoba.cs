using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace UcenjeCS.E13Nasljedivanje
{
    internal abstract class Osoba:Object
    {

        
        public Osoba() { }

        public Osoba(string Ime, string Prezime)
        {
            this.Ime = Ime;
            this.Prezime = Prezime;
        }



        public string? Ime { get; set; }
        public string? Prezime { get; set; }

        public override string ToString()
        {
            return Ime+" "+Prezime;
        }
    }
}
