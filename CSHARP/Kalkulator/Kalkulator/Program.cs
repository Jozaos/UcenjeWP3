string value;
do
{
    int res;
    Console.Write("Unesi prvi broj u kalkulator: ");
    int Num1 = Convert.ToInt32(Console.ReadLine());

    Console.Write("Unesi drugi broj u kalkulator: ");
    int Num2 = Convert.ToInt32(Console.ReadLine());

    Console.Write("Unesi željenu operaciju kalkulatora (+,-,/,*): ");
    string Symbol = Console.ReadLine();

    switch (Symbol)
    {
        case "+":
            res = Num1 + Num2;
            Console.WriteLine("Zbrajanje: " + res);
            break;
        case "-":
            res = Num1 - Num2;
            Console.WriteLine("Oduzimanje: " + res);
            break;
        case "*":
            res = Num1 * Num2;
            Console.WriteLine("Množenje: " + res);
            break;
        case "/":
            res = Num1 / Num2;
            Console.WriteLine("Dijeljenje: " + res);
            break;
        default:
            Console.WriteLine("Krivi unos!");
            break;
    }
    Console.WriteLine("Želiš li nastaviti? Da/Ne");
    value = Console.ReadLine();

} while (value == "Da" || value == "da");

