﻿using System;
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
    public partial class Brand_PC : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable db = new DataTable();
            String orb = "Data Source=XE;Persist Security Info=True;User ID=onlineshop;Password=12345;Unicode=True";
            OracleConnection con = new OracleConnection(orb);
            con.Open();
            string log = "SELECT * FROM Product WHERE ProductType='Brand PC'";
            OracleCommand cmd = new OracleCommand(log, con);
            cmd.CommandType = CommandType.Text;
            db.Load(cmd.ExecuteReader());
            bGridView1.DataSource = db;
            bGridView1.DataBind();
            con.Close();
            con.Dispose(); 
        }
    }
}