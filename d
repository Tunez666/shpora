using System;
using System.Collections.Generic;
using System.ComponentModel.Design;
using System.Numerics;
using System.Runtime.Serialization.Formatters;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;
using System.Xml.Linq;

namespace console_1
{

    class Program
    {

        int num;
        int chis;
        static void Main(int num, int chis)
        {
            Console.WriteLine("Число которое нужно перевести ");
            num = Convert.ToInt32(Console.ReadLine());

            Console.WriteLine("Выберите систему счисления: " +
                "2 - двочиная; " +
                "3 - тернарная; " +
                "8 - восьмеричная; " +
                "10 - десятичная; " +
                "16 - шестнадцатиричная");
             chis = Convert.ToInt32(Console.ReadLine());
            

            switch (chis)
            {
                case 2:
                    string d = Convert.ToString(num, 2);
                    Console.WriteLine("В двоичной системе счисления это: " + d);
                    Console.ReadLine();
                    break;
                case 3:
                    ostalnaye(num, chis);
                    break;
                case 8:
                    string ch = Convert.ToString(num, 8);
                    Console.WriteLine("В восьмеричной системе счисления это: " + ch);
                    Console.ReadLine();
                    break;
                case 10:
                    string ten = Convert.ToString(num, 10);
                    Console.WriteLine("В десятичной системе счисления это: " + ten);
                    Console.ReadLine();
                    break;
                case 16:
                    string ts = Convert.ToString(num, 16);
                    Console.WriteLine("В шестнадцатеричной системе счисления это: " + ts);
                    Console.ReadLine();
                    break;
            }
        }
        static string ostalnaye(int num, int chis) {
            string result = "";
            int ch = num; int ost; int x2 = num;
            int[] values = { 10, 11, 12, 13, 14, 15, 16, 17, 18, 19 };
            string[] values2 = { "A", "B", "C", "D", "E", "F", "G", "H", "I", "G" };

            do
            {
                ch = ch / 3;
                ost = x2 - (ch * chis);
                x2 = ch;
                if (ost >= 10)
                {
                    for (int i = 0; i < 9; i++) { if (ost == values[i]) { result = result + values2[i]; } }
                }
                else
                {
                    result = result + ost.ToString();
                }
                Console.WriteLine("деление " + ch + " остаток " + ost);
            } while (ch > 2);


            if (ch >= 10)
            {
                for (int i = 0; i < 9; i++) { if (ch == values[i]) { result = result + values2[i]; } }
            }
            else
            {
                result = result + ch.ToString();
            }

            string result2 = "";

            for (int i = result.Length - 1; i >= 0; i--)
            {
                result2 += result[i];
            }
            return result2;

        }
    }
}
