using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

namespace WebApplication4
{
    public partial class WebForm3 : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection("Data Source=DESKTOP-5OUULDC\\SQLEXPRESS;Initial Catalog=Employee4;Integrated Security=True;Pooling=False");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("select UserId,Password from Login where UserId='" + TextBox1.Text + "'and Password='" + TextBox2.Text + "'", con);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                Session["UserId"] = TextBox1.Text;
                Response.Redirect("Data1.aspx");
            }
            else
            {
                Response.Write("DataBind not match");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registration.aspx");
        }
    }
}