using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace UcenjeCS
{
    internal class Z04
    {
        public static void Izvedi()
        {
            Console.WriteLine("Unesi prvi cijeli broj: ");
           int a=int.Parse(Console.ReadLine());
            Console.WriteLine("Unesi drugi cijeli broj: ");
           int b=int.Parse(Console.ReadLine());
            int manji = a < b ? a : b;
            int veci= a>b ? a : b;
            for(int i=manji; i <= veci; i++)
            {

                if (i % 2 == 1)
                {
                    Console.WriteLine(i);
                }
                
                
            }
            


        }
    }
}
