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
    public partial class createcart : System.Web.UI.Page
    {


        string a, d;


        protected void Page_Load(object sender, EventArgs e)
        {
            //a =  Request.QueryString.ToString();
            a = Request.QueryString["Name"];
            TextBox6.Text = Request.QueryString["Age"];
            d = Request.QueryString["Age"];
            if (!IsPostBack)
            {
                OracleConnection con = new OracleConnection("Data Source=XE;User ID=onlineshop;Password=12345;Unicode=True");

                con.Open();


                OracleDataAdapter da = new OracleDataAdapter("select *from Product where ProductType='" + a + "'", con);
                DataTable dt = new DataTable();
                da.Fill(dt);
                GridView1.DataSource = dt;
                DataBind();
                con.Close();

                bindtoddl(a);
            }
            TextBox5.Text = DateTime.Now.ToString();




        }




        private void bindtoddl(string b)
        {
            string c = b;
            OracleConnection con = new OracleConnection("Data Source=XE;User ID=onlineshop;Password=12345;Unicode=True");
            con.Open();
            OracleCommand cmd = new OracleCommand("select ProductID from Product where ProductType='" + c + "'", con);
            OracleDataAdapter sda = new OracleDataAdapter(cmd);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            DropDownList1.DataSource = ds;
            DropDownList1.DataTextField = "ProductID";                            // FieldName of Table in DataBase
            DropDownList1.DataValueField = "ProductID";
            DropDownList1.DataBind();










        }

        protected void Button1_Click(object sender, EventArgs e)
        {



            OracleConnection con = new OracleConnection("Data Source=XE;User ID=onlineshop;Password=12345;Unicode=True");



            con.Open();
            OracleCommand cmd = new OracleCommand("select ProductType,Brand,Models,Price,NOofProduct from Product where ProductID='" + DropDownList1.SelectedItem.Text + "'", con);
            OracleDataAdapter sda = new OracleDataAdapter(cmd);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            TextBox1.Text = ds.Tables[0].Rows[0]["ProductType"].ToString();
            TextBox2.Text = ds.Tables[0].Rows[0]["Brand"].ToString();
            TextBox3.Text = ds.Tables[0].Rows[0]["Models"].ToString();
            TextBox4.Text = ds.Tables[0].Rows[0]["Price"].ToString();
            TextBox7.Text = ds.Tables[0].Rows[0]["NOofProduct"].ToString();
            con.Close();



        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            OracleConnection con = new OracleConnection("Data Source=XE;User ID=onlineshop;Password=12345;Unicode=True");

            con.Open();
             

            int t = Convert.ToInt32(TextBox8.Text);
            int u = Convert.ToInt32(TextBox7.Text);
           if (t <= u && u!=0)
            {

                OracleCommand cmd = new OracleCommand("insert into CART(CustomerID,ProductID,ProductType,Brand,Models,Price,Quantity,Date_Time) values('" + TextBox6.Text + "','" + DropDownList1.SelectedValue + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox8.Text + "','" + TextBox5.Text + " ')", con);


                cmd.ExecuteNonQuery();
                Label3.Text = "All datas added successfully...";

                int v = u - t;
                string k = Convert.ToString(v);



                OracleCommand cmd1 = new OracleCommand("UPDATE Product SET NOofProduct='" + v + "' where ProductID ='" + DropDownList1.SelectedItem.Text + "'", con);
                cmd1.ExecuteNonQuery();

                con.Close();

            }

            else Label3.Text = "Insufficient Quantity";
               



               

       
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Choose.aspx?" + d);
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("MyAccount.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("viewcart.aspx?" + TextBox6.Text);
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox5_TextChanged(object sender, EventArgs e)
        {

        }
    }
}