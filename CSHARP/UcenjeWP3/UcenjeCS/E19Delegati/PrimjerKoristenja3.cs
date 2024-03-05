using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace UcenjeCS.E19Delegati
{
    internal class PrimjerKoristenja3
    {

        public PrimjerKoristenja3()
        {
            ObradaSmjer os= new ObradaSmjer();

            os.IspisSmjerAction(s =>
            {
                Console.WriteLine(s.Naziv.Substring(0, 1));
            });


        }

    }
}
