using System;


namespace SalarySlip
{

    public class SalarySlip
    {
        string Designation;


        public string getDesignation()
        {
            return Designation;
        }

        public void setDesignation()
        {
            Console.WriteLine("Enter employee designation:");
            Designation = Console.ReadLine();
        }


        public void Salary()
        {
            if (Designation == "engineer")
            {
                Engineer E = new Engineer();
                int Salary = E.baseSalary + E.Allowance();
                Console.WriteLine("The net salary is:" + Salary);

            }
            else if (Designation == "manager")
            {
                Manager M = new Manager();
                int Salary = M.baseSalary + M.Allowance();
                Console.WriteLine("The net salary is:" + Salary);

            }
            else if (Designation == "analyst")
            {
                Analyst A = new Analyst();
                int Salary = A.baseSalary + A.Allowance();
                Console.WriteLine("The net salary is:" + Salary);

            }

            else
            {
                Console.WriteLine("invalid input");
            }


        }
    }

    class Engineer : SalarySlip
    {
        public int baseSalary = 1500;
        public int Fuel;
        public int Medical;
        public virtual int Allowance()
        {
            Fuel = 100;
            Medical = 500;

            return (Fuel + Medical);
        }

    }


    class Manager : Engineer
    {
        public override int Allowance()
        {
            Fuel = 250;
            Medical = 1000;

            return (Fuel + Medical);
        }


    }


    class Analyst : Engineer
    {
        public override int Allowance()
        {
            Fuel = 150;
            Medical = 800;

            return (Fuel + Medical);
        }
    }
    class Program
    {
        static void Main(string[] args)
        {
            SalarySlip S = new SalarySlip();

            S.setDesignation();

            S.Salary();
            Console.ReadLine();
        }
    }
}
