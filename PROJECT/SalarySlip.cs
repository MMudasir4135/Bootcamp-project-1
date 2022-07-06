using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace salarySlip
{

    public class SalarySlip
    {
        private string Designation;
        private int grossSalary;

        public string getDesignation()
        {
            return Designation;
        }

        public void setDesignation()
        {
            Console.WriteLine("Enter your designation:");
            Designation = Console.ReadLine();
        }


        public void Salary()
        {
            if (Designation == "engineer")
            {
                Employee E = new Employee();
                grossSalary = E.baseSalary + E.Allowance();
                Console.WriteLine("The gross salary is:" + grossSalary);

            }
            else if (Designation == "manager")
            {
                Manager M = new Manager();
                grossSalary = M.baseSalary + M.Allowance();
                Console.WriteLine("The gross salary is:" + grossSalary);

            }
            else if (Designation == "analyst")
            {
                Analyst A = new Analyst();
                grossSalary = A.baseSalary + A.Allowance();
                Console.WriteLine("The gross salary is:" + grossSalary);

            }

            else
            {
                Console.WriteLine("The designation entered is incorrect");
            }


        }
    }

    class Employee
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


    class Manager : Employee
    {
        public override int Allowance()
        {
            Fuel = 250;
            Medical = 1000;

            return (Fuel + Medical);
        }


    }


    class Analyst : Employee
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
