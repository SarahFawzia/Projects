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
    public partial class motherboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable db = new DataTable();
            String orb = "Data Source=XE;User ID=onlineshop;Password=12345;Unicode=True";
            OracleConnection con = new OracleConnection(orb);
            con.Open();
            string log = "SELECT * FROM PROCESSOR WHERE BRAND='intel'";
            OracleCommand cmd = new OracleCommand(log, con);
            cmd.CommandType = CommandType.Text;
            db.Load(cmd.ExecuteReader());
            mGridView.DataSource = db;
            mGridView.DataBind();

            con.Close();
            con.Dispose();
        }
    }
}