using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace onlineshoppingfinal
{
    public partial class Choose : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string l = Request.QueryString.ToString();
            TextBox1.Text = l;

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            string laptop = Label1.Text;
            //Response.Redirect("createcart.aspx?"+laptop);
            Response.Redirect("createcart.aspx?Name=" + laptop + "&Age=" + TextBox1.Text);
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            string b = Label2.Text;
            //Response.Redirect("createcart.aspx?"+b);
            Response.Redirect("createcart.aspx?Name=" + b + "&Age=" + TextBox1.Text);
        }

        protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
        {
            string b = Label3.Text;
            //Response.Redirect("createcart.aspx?" + b);
            Response.Redirect("createcart.aspx?Name=" + b + "&Age=" + TextBox1.Text);
        }
     /*  protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
        {
            string b = Label4.Text;
            //Response.Redirect("createcart.aspx?" + b);
            Response.Redirect("createcart.aspx?Name=" + b + "&Age=" + TextBox1.Text);
        }*/
        

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("MyAccount.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("viewcart.aspx?" + TextBox1.Text);
        }

        protected void ImageButton7_Click(object sender, ImageClickEventArgs e)
        {
            string b = Label4.Text;
            //Response.Redirect("createcart.aspx?" + b);
            Response.Redirect("createcart.aspx?Name=" + b + "&Age=" + TextBox1.Text);
        }

        protected void ImageButton8_Click(object sender, ImageClickEventArgs e)
        {
            string b = Label5.Text;
            //Response.Redirect("createcart.aspx?" + b);
            Response.Redirect("createcart.aspx?Name=" + b + "&Age=" + TextBox1.Text);
        }

        protected void ImageButton9_Click(object sender, ImageClickEventArgs e)
        {
            string b = Label6.Text;
            //Response.Redirect("createcart.aspx?" + b);
            Response.Redirect("createcart.aspx?Name=" + b + "&Age=" + TextBox1.Text);
        }
    }
}