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
    public partial class cart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                ddlCustomers.Items.Add(new ListItem("--Select Customer--", ""));

                ddlCustomers.AppendDataBoundItems = true;

              

                String strQuery = "select ProductType,ProductID  from Products";

               String db = "Data Source=XE;User ID=onlineshop;Password=12345;Unicode=True";
            OracleConnection con = new OracleConnection(db);

                OracleCommand cmd = new OracleCommand();

                cmd.CommandType = CommandType.Text;

                cmd.CommandText = strQuery;

                cmd.Connection = con;

                try
                {

                    con.Open();

                    ddlCustomers.DataSource = cmd.ExecuteReader();

                    ddlCustomers.DataTextField = "ProductID";

                    ddlCustomers.DataValueField = "ProductType";

                    ddlCustomers.DataBind();

                }

                catch (Exception ex)
                {

                    throw ex;

                }

                finally
                {

                    con.Close();

                    con.Dispose();

                }

            }

        }

        protected void ddlCustomers_SelectedIndexChanged(object sender, EventArgs e)
        {
            {

                String db = "Data Source=XE;User ID=onlineshop;Password=12345;Unicode=True";
                OracleConnection con = new OracleConnection(db);

                String strQuery = "select Price, Rating from Products where" +

                                  "ProductType = @ProductType";

               

                OracleCommand cmd = new OracleCommand();

                cmd.Parameters.AddWithValue("@ProductType", ddlCustomers.SelectedItem.Value);

                cmd.CommandType = CommandType.Text;

                cmd.CommandText = strQuery;

                cmd.Connection = con;

                try
                {

                    con.Open();

                    OracleDataReader sdr = cmd.ExecuteReader();

                    while (sdr.Read())
                    {

                        txtCity.Text = sdr[0].ToString();

                        lblCountry.Text = sdr["Rating"].ToString();

                    }

                }

                catch (Exception ex)
                {

                    throw ex;

                }

                finally
                {

                    con.Close();

                    con.Dispose();

                }

            }
        }
    }
}

