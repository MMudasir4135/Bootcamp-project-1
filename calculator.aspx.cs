using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace aspnet
{
    public partial class calculator : System.Web.UI.Page
    {


        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            double num1 = Convert.ToInt32(this.TextBox1.Text);
            double num2 = Convert.ToInt32(this.TextBox2.Text);
            var optr = this.DropDownList1.SelectedValue;

            double answer = 0;

            if (optr == "+")
            {
                answer = num1 + num2;
            }
            else if (optr == "-")
            {
                answer = num1 - num2;
            }
            else if (optr == "*")
            {
                answer = num1 * num2;
            }
            else
            {
                answer = num1 / num2;
            }
            TextBox3.Text = answer.ToString();
        }
        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
        }
        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {
        }
    }
}