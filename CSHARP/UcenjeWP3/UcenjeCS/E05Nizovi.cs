using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace UcenjeCS
{
    internal class E05Nizovi
    {
        public static void Izvedi()
        {
            int[] Temperature = new int[6];
            Temperature[0] = 1;
            Temperature[Temperature.Length-1] = 2;
            Console.WriteLine(Temperature);
            Console.WriteLine(string.Join(",",Temperature));


            string[] Gradovi = new string[3];
            Gradovi[0] = "Osijek";
            Gradovi[1] = "Donji Miholjac";
            Gradovi[2] = "Zagreb";

            Console.WriteLine(string.Join(", ",Gradovi));

            int[] Brojevi = { 2, 3, 4, 5, 6, 7, 8, 6, 5};
            Console.WriteLine(string.Join(" ",Brojevi));
            Console.WriteLine(Brojevi[4]);
            Console.WriteLine(Brojevi[0]);
            Console.WriteLine(Brojevi[Brojevi.Length-1]);

            int[,] Tablica =
            {
                {1,2,3 },
                {4,5,6},
                {7,8,9}
            };
            Console.WriteLine(Tablica[1,2]);


            int[,,] Kocka = new int[10, 10, 10];


            int[,,,,,] ZvjezdaneStaze;

            string grad = "Osijek";
            Console.WriteLine(grad[3]);

            char znak = 'j';
            Console.WriteLine((int)znak);




            int[] niz = { 1, 2, 3, 4, 5 };

            int i = 0;
            i++;
            
           


        }

    }
}
