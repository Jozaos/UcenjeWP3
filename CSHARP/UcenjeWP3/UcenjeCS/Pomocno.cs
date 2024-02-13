using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace UcenjeCS
{
    internal class Pomocno
    {
        public static int UcitajCijeliBroj(string Poruka)
        {
            

            while (true)
            {
                Console.Write(Poruka+": ");
                  try
                  {
                     return int.Parse(Console.ReadLine());
                  }
                 catch (Exception)
                 {
                        Console.WriteLine("Nisi unio cijeli broj");
                 }
            }
        }


        public static int UcitajCijeliBroj(string Poruka, int min, int max)
        {
            int i;
            while (true)
            {
                i=UcitajCijeliBroj(Poruka);
                if(i<min || i > max)
                {
                    Console.WriteLine("Učitani broj nije u danom rasponu "+min+" - "+max);
                    continue;
                }
                return i;
            }
            
        }


        public static float UcitajDecimalniBroj(string Poruka)
        {
            while (true)
            {
                Console.Write(Poruka + ": ");
                try
                {
                    return float.Parse(Console.ReadLine());
                }
                catch (Exception)
                {
                    Console.WriteLine("Nisi unio decimalni broj");
                }
            }
        }
        //napisi metodu koja prima string poruku i vraca string koji ne smije biti prazan

        public static string UcitajString(string Poruka)
        {
            string s;
            for(; ; )
            {
                Console.WriteLine(Poruka+": ");
                s = Console.ReadLine().Trim();
                if (s.Length == 0)
                {
                    Console.WriteLine("Obavezan unos");
                    continue;
                }
                try
                {
                    int.Parse(s);
                    Console.WriteLine("Unos ne smije biti cijeli broj");
                    continue;
                }
                catch (Exception)
                {

                }
                try
                {
                    float.Parse(s);
                    Console.WriteLine("Unos ne smije biti decimalni broj");
                    continue;
                }
                catch (Exception)
                {

                }
                return s;

            }

        }


    }
}
