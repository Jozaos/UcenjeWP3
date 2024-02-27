using System;
using System.Buffers;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
//klasa je opisnik objekta, konstruktor je metoda u klasi koja se poziva sa "new", objekt je instanca klase
namespace UcenjeCS.E14VjezbanjeRadaSObjektima
{
    internal class Program
    {
        private List<Osoba> Osobe;
        public Program()
        {
            Osobe= new List<Osoba>();
            TestPodaci();
            PozdravnaPoruka();
            Izbornik();
            



        }

        private void TestPodaci()
        {
            Osobe.Add(new()
            { Ime = "Ana", Prezime = "Malenica", Dob = 52 });
            Osobe.Add(new()
            { Ime = "Petar", Prezime = "Klarik", Dob = 25 });
        }

        private void Izbornik()
        {
            Console.ForegroundColor = ConsoleColor.White;
            Console.WriteLine("1. Pregled osoba");
            Console.WriteLine("2. Unos nove osobe");
            Console.WriteLine("3. Promjena osobe");
            Console.WriteLine("4. Brisanje osobe");
            Console.WriteLine("5. Izlaz iz programa");
            OdaberiOpciju();
        }
        private void OdaberiOpciju()
        {
            Console.ForegroundColor = ConsoleColor.White;
            switch(Pomocno.UcitajCijeliBroj("Odaberi opciju: "))
            {
               
                case 1:
                    PrikaziOsobe();
                    Izbornik();
                    break;
                case 2: UnosNoveOsobe();
                    Izbornik();
                    break;
                case 3:
                    PromjenaOsobe();
                    Izbornik();
                    break;
                case 5:
                    Console.WriteLine("Program je gotov, doviđenja");
                    break;
                default:
                    Console.WriteLine("Nije dobra opcija");
                    Console.WriteLine("*****************");
                    Izbornik();
                    break;
            }
        }

        private void PromjenaOsobe()
        {
            PrikaziOsobe();
            Console.ForegroundColor = ConsoleColor.Red;
            int Izbor = Pomocno.UcitajCijeliBroj("Izaberi broj osobe");
            var o = Osobe[Izbor - 1];
            o.Ime = Pomocno.UcitajString("Ucitaj ime");
            o.Prezime = Pomocno.UcitajString("Ucitaj Prezime");
            o.Dob = Pomocno.UcitajCijeliBroj("Ucitaj dob");

        }

        private void UnosNoveOsobe()
        {
            Osobe.Add(new()
            {
                Ime = Pomocno.UcitajString("Unesi ime osobe"),
                Prezime = Pomocno.UcitajString("Unesi prezime osobe"),
                Dob = Pomocno.UcitajCijeliBroj("Unesi dob osobe")
            });
            
        }

        private void PrikaziOsobe()
        {
            Console.ForegroundColor = ConsoleColor.Green;
            Console.WriteLine("****************");
            Console.WriteLine("** Osobe u sustavu **");
            Console.WriteLine("****************");
            int i = 1;
            foreach (var o in Osobe)
            {
                Console.WriteLine(i++ + ". " + o);
            }
            Console.WriteLine("****************");
        }

        private void PozdravnaPoruka()
        {
            Console.WriteLine("Osobe program V1");
            Console.WriteLine("****************");
        }
    }
}
