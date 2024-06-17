using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class test : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            string userInput = TextBox1.Text; //ユーザの入力受付
            Label1.Text = "あなたの入力は: " + userInput;
        }

        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {
            string selectedFruit = "";
            if (RadioButton1.Checked)
            {
                selectedFruit = RadioButton1.Text;
            }
            else if (RadioButton2.Checked)
            {
                selectedFruit = RadioButton2.Text;
            }
            Label2.Text = "Your favorite fruit is: " + selectedFruit;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
    }
}