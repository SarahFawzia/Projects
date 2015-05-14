using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OracleClient;

using System.Configuration;
using System.Data;
namespace onlineshoppingfinal
{
    public partial class login1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e){
         String db = "Data Source=XE;User ID=onlineshop;Password=12345;Unicode=True";
            OracleConnection con = new OracleConnection(db);
            con.Open();
            string checkuser = "select username,password from login2 where username='" + Textusername.Text + "' and password='" + Textpassword.Text + "'";
            OracleCommand com = new OracleCommand(checkuser, con);

            OracleDataReader re = com.ExecuteReader();
            if (re.Read())
            {
                Response.Redirect("WebForm3.aspx");

            }

            else
            {
                LabelAlert.Text = "Incorrect Login/Password";
              // .Show("wrong");
            }
            con.Close();

        }
    }
}