using System;

namespace Project_Electric_Bill
{
    class Program
    {
        static void Main(string[] args)
        {
            int custid;
            string connm;
            string type;
            Console.WriteLine("Calculate Electricity Bill:");
            Console.Write("Input Customer ID :");
            custid = Convert.ToInt32(Console.ReadLine());
            Console.Write("Input the name of the customer :");
            connm = Console.ReadLine();
            Console.WriteLine("Enter customer type:");
            type = Console.ReadLine();
            Console.WriteLine("Enter Residential consumed units");
            Residential R = new Residential(Convert.ToInt32(Console.ReadLine()));
            R.CalculateBill();
            Console.WriteLine("Enter Commercial consumed units");
            Commercial C = new Commercial(Convert.ToInt32(Console.ReadLine()));
            C.CalculateBill();

        }
    }


    public class ElectricBill
    {
        string type;


        public string gettype()
        {
            return type;
        }

        public void settype()
        {
            Console.WriteLine("Enter customer type:");
            type = Console.ReadLine();
        }
        public double units;

        public ElectricBill()
        {
            units = 0;

        }

        public ElectricBill(double unit)
        {
            units = unit;
        }

        public double getUnits { get; }

      public void CalculateBill()
        {
            if (type == "Residential")
            {
                Residential R = new Residential();

                static double CalculateBill() = R.CalculateBill + R.CalculateBill * 0.13;
                Console.WriteLine("The net bill is" + CalculateBill());

            }
            else if (type == "Commercial")
            {
                Commercial C = new Commercial();

                static double CalculateBill() = C.CalculateBill + (C.CalculateBill * 0.17);
                Console.WriteLine("The net bill is" + CalculateBill());
            }
            else
            {
                Console.WriteLine("invalid input");
            }
        }
    }
        class Residential : ElectricBill
        {
            public Residential()
            {
            }

            public Residential(double unit)
            {
                units = unit;
            }
            public new virtual void CalculateBill()
            {
            double CalculateBill;
                if (units < 0)
                {
                    Console.WriteLine("The units are not readable");
                    return;
                }
                if (units > 0 & units <= 100)
                {
                    CalculateBill= units*5;
                }
                else if (units > 100 & units <= 200)
                {
                CalculateBill = units * 17;
                }
                else if (units > 200 & units <= 500)
                {
                CalculateBill = units * 23;
                }
                else
                {
                CalculateBill = units * 69;
                }
            CalculateBill = CalculateBill + CalculateBill * 0.13;


                Console.WriteLine("The (residential)Bill for electricity is: " + CalculateBill);
            }
        }
    

        class Commercial : Residential
        {
            public Commercial()
            {
            }

            public Commercial(double unit)
            {
                units = unit;
            }
            public override void CalculateBill()
            {
                double CalculateBill;
                if (units < 0)
                {
                    Console.WriteLine("The Units are not readable");
                    return;
                }
                else if (units > 0 & units <= 100)
                {
                CalculateBill = units * 8;
                }
                else if (units > 100 & units <= 200)
                {
                CalculateBill = units * 21;
                }
                else if (units > 200 & units <= 500)
                {
                CalculateBill = units * 23;
                }
                else
                {
                CalculateBill = units * 79;
                }

            CalculateBill = CalculateBill + (CalculateBill * 0.17);


                Console.WriteLine("The (commercial)Bill for electricity is: " + CalculateBill);
            }
        }
    
}




