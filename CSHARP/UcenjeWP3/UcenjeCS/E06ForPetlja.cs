using System;
using System.Collections.Generic;
using System.Diagnostics.CodeAnalysis;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace UcenjeCS
{
    internal class E06ForPetlja
    {
        public static void Izvedi()
        {
            //for(int i = 0; i < 10; i++)
            //{
            //    Console.WriteLine(i);
            //}

            //int[] niz = { 1, 23, 5, 21, 56, 1267, 78, 437, 32};

            //for(int i=0; i < niz.Length; i++)
            //{
            //    Console.WriteLine(niz[i]);
            //}

            //for(int i=3; i<=43; i++)
            //{
            //    if (i % 2 == 0)
            //    {
            //        Console.WriteLine(i);
            //    }
            //}
            //int suma = 0;
            //for (int i = 1; i <= 100; i++)
            //{
            //     suma += i;
            //}
            //Console.WriteLine(suma);


            //for (int i = 78; i >= 4; i--)
            //{
            //    Console.WriteLine(i);
            //}


            //for(int i=1; i<=100; i += 7)
            //{
            //    Console.WriteLine(i);
            //}


            //for(int i = 1; i <= 20; i++)
            //{
            //    Console.Write(i+" ");
            //}


            for (int i = 1;i <= 10; i++)
            {
                for(int j = 1;j <= 10; j++)
                {
                    Console.Write(i*j +" ");
                }
                Console.WriteLine();
            }


        }
    }
}
