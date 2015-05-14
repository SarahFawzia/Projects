using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OracleClient;
namespace onlineshoppingfinal
{
    public partial class MyAccount : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            string db = "Data Source=XE;User ID=onlineshop;Password=12345;Unicode=True";
            OracleConnection con = new OracleConnection(db);
            con.Open();
            string checkuser = "select username,password from login where username='" + txtloginid.Text + "' and password='" + Txtpassword.Text + "'";
            OracleCommand com = new OracleCommand(checkuser, con);

            OracleDataReader re = com.ExecuteReader();
            if (re.Read())
            {
                Response.Redirect("Choose.aspx?" + txtloginid.Text);
            }

            else
            {
                LabelAlert.Text = "Incorrect Login/Password";
            }
            con.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("register.aspx");
        }


    }
}