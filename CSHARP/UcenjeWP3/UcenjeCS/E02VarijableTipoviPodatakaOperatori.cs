using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace UcenjeCS
{
    internal class E02VarijableTipoviPodatakaOperatori
    {
        public static void Izvedi()
        {
            int CijeliBroj;

            CijeliBroj = 7;
            Console.WriteLine(CijeliBroj);

            Console.WriteLine("Unesi cijeli broj: ");
            int Broj = int.Parse(Console.ReadLine());
            Console.WriteLine(CijeliBroj + Broj);



            string v1 = "Osijek";
            var v2 = "Edunova";
            Console.WriteLine(v1 + v2);


            float db = 3.14F;
            double vdb = 0.9876541236968476;
            Console.WriteLine("Unesi visinu u metrima:");
            float Visina = float.Parse(Console.ReadLine());
            Console.WriteLine("Visok si " + Visina + "m");



            int NajveciBroj = int.MaxValue;
            Console.WriteLine(NajveciBroj + 1);



            int i = 2, j = 3;

            Console.WriteLine(i - j);
            Console.WriteLine(i * j);
            Console.WriteLine(i / (float)j);


            Console.Write("Unesi dvoznamenkasti broj: ");
            int dbroj = int.Parse(Console.ReadLine());
            Console.WriteLine(dbroj / 10);
            Console.WriteLine(dbroj % 10);

            bool uvjet = true;
            int k = 2, l = 2;
            Console.WriteLine(k == l);
            Console.WriteLine(k != l);

            Console.WriteLine("{0} {1} {2} {3}", k > l, k >= l, k < l, k <= l);


            int v = 1;
            Console.WriteLine(v);
            v = v + 1;
            Console.WriteLine(v);
            v += 1;
            Console.WriteLine(v);


            v = 1;
            Console.WriteLine(v++);
            Console.WriteLine(++v);


            int x = 2, y = 1;
            x = x + ++y;
            y = --x;
            Console.WriteLine(x+y);





        }
    }
}
