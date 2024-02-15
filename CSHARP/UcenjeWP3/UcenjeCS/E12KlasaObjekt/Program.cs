using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Text;
using System.Threading.Tasks;
using UcenjeCS.E12KlasaObjekt.Edunova;

namespace UcenjeCS.E12KlasaObjekt
{
    internal class Program
    {
        public static void Izvedi()
        {
            Osoba osoba= new Osoba();

            osoba.Ime = Pomocno.UcitajString("Unesi ime osobe");
            osoba.Prezime = "Peridanko";

            Console.WriteLine(osoba.ImePrezime());

            osoba = new Osoba
            {
                Ime = Pomocno.UcitajString("Unesi ime"),
                Prezime = "Krkan"
            };

            Osoba o = new()
            {
                Ime = "Ivko",
                Prezime = "Huejko"
            };

            var direktor = new Osoba() { Prezime = "Klord" };

            var m = new Mjesto() { Naziv = "Osijek" };

            direktor.Mjesto = m;

            Console.WriteLine(direktor.Mjesto?.Naziv);



            var s = new Smjer()
            {
                Naziv = "Web programiranje",
                Trajanje = 135,
                Cijena = 1234.55m,
                Sifra = 1,
                Vaucer = true
            };

            Predavac[] predavaci =
            {
                new (){Ime="Šaki", Prezime="O'Neal"},
                new Predavac(){Ime="Maja", Prezime="Hihi"}
            };
            
            Grupa g=new Grupa();
            g.Naziv = "WP3";
            g.Smjer = s;
            g.Predavac = predavaci[1];

            Console.WriteLine(g.Smjer.Trajanje);






        }
    }
}
