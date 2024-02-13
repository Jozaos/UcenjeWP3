using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace UcenjeCS
{
    internal class E10Metode
    {

        public static void Izvedi()
        {
            Tip1();
            Tip1();
            Tip2("Osijek");
            Tip2("Maja", "Zimska");
            Tip3();
            Console.WriteLine(Tip3());
            Console.WriteLine(Tip4(2,77));

        }


        private static void Tip1()
        {
                Console.WriteLine("Hello iz metode koja nije primila parametre i ne vraća vrijednost");
        }


        static void Tip2(string Ime)
        {
            Console.WriteLine("Dobar dan " + Ime);
        }


        static void Tip2(string Ime, string Prezime)
        {
            Console.WriteLine("Dobar dan "+Ime+" "+Prezime);
        }


        internal static int Tip3()
        {
            return '7';
        }

        /// <summary>
        /// Primjer metode koja prima 2 parametra i vraća vrijednost
        /// </summary>
        /// <param name="odBroja">Prvi primljeni parametar od kojeg se kreće</param>
        /// <param name="doBroja">Drugi primljeni parametar do kojeg se ide(<=)</param>
        /// <returns>Vraća broj svakog drugog broja između dva primljena</returns>
        protected static int Tip4(int odBroja, int doBroja)
        {
            int suma = 0;
            for (int i = odBroja; i<=doBroja; i+=2)
            {
                suma += i;
            }
            return suma;
        }









    }
}
