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
            Console.WriteLine("** Izbornik **");
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
            switch (Pomocno.UcitajCijeliBroj("Odaberi opciju "))
            {
               
                case 1:
                    Console.ForegroundColor = ConsoleColor.Yellow;
                    PrikaziOsobe(true);
                    break;
                case 2:
                    Console.ForegroundColor = ConsoleColor.Yellow;
                    Console.WriteLine("** 2. Unos nove osobe **");
                    UnosNoveOsobe();
                    break;
                case 3:
                    Console.ForegroundColor = ConsoleColor.Yellow;
                    Console.WriteLine("** 3. Promjena osobe **");
                    PromjenaOsobe();
                    break;
                case 4:
                    Console.ForegroundColor = ConsoleColor.Yellow;
                    Console.WriteLine("** 4. Brisanje osobe **");
                    BrisanjeOsobe();
                    break;
                case 5:
                    Console.ForegroundColor = ConsoleColor.Yellow;
                    Console.WriteLine("Program je gotov, doviđenja");
                    return;
                default:
                    Console.ForegroundColor = ConsoleColor.Red;
                    Console.WriteLine("Nije dobra opcija");
                    Console.WriteLine("*****************");
                    Izbornik();
                    break;
            }
            Izbornik();
        }

        private void BrisanjeOsobe()
        {

            if (Osobe.Count == 0)
            {
                Console.WriteLine("Nema osoba, ne mozemo brisati podatke.");
                return;
            }
            PrikaziOsobe();
            Console.ForegroundColor = ConsoleColor.Red;
            int Izbor = Pomocno.UcitajCijeliBroj("Izaberi broj osobe koju brišeš", 0, Osobe.Count);
            if (Izbor == 0)
            {
                return;
            }
            Osobe.RemoveAt(Izbor-1);
        }

        private void PromjenaOsobe()
        {
            if(Osobe.Count == 0)
            {
                Console.WriteLine("Nema osoba, ne mozemo brisati podatke.");
                return;
            }
            PrikaziOsobe();
            Console.ForegroundColor = ConsoleColor.Cyan;
            int Izbor = Pomocno.UcitajCijeliBroj("Izaberi broj osobe (0 -> ODUSTANI)",0,Osobe.Count);
            if(Izbor==0)
            {
                return;
            }
            var o = Osobe[Izbor - 1];
            o.Ime = Pomocno.UcitajString("Ucitaj ime ["+o.Ime+"]");
            o.Prezime = Pomocno.UcitajString("Ucitaj Prezime ["+o.Prezime+"]");
            o.Dob = Pomocno.UcitajCijeliBroj("Ucitaj dob ["+o.Dob+"]");

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

        private void PrikaziOsobe(bool PrikaziNaslov=false)
        {
            if (PrikaziNaslov == true)
            {
                Console.ForegroundColor = ConsoleColor.Green;
                Console.WriteLine("****************");
                Console.WriteLine("** Osobe u sustavu **");
                Console.WriteLine("****************");
            }

            if (Osobe.Count == 0)
            {
                Console.WriteLine("Nema ni jedne osobe u sustavu. Unesi novu osobu (2)");
                return;
            }

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