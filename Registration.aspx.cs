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
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-5OUULDC\\SQLEXPRESS;Initial Catalog=Employee4;Integrated Security=True");
       
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Gmail.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-5OUULDC\\SQLEXPRESS;Initial Catalog=Employee4;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("Insert into Emp4  values(@Id,@Name,@Age,@Contact,@Address,@Country,@Password,@CPassword,@uploadfile,@Email)", con);
            cmd.Parameters.AddWithValue("@Id", int.Parse(TextBox1.Text));
            cmd.Parameters.AddWithValue("@Name", TextBox2.Text);
            cmd.Parameters.AddWithValue("@Age", int.Parse(TextBox3.Text));
            cmd.Parameters.AddWithValue("@Contact", TextBox4.Text);
            cmd.Parameters.AddWithValue("@Address", DropDownList1.Text);
            cmd.Parameters.AddWithValue("@Country", DropDownList2.Text);
            cmd.Parameters.AddWithValue("@Password", TextBox5.Text);
            cmd.Parameters.AddWithValue("@CPassword", TextBox6.Text);
            cmd.Parameters.AddWithValue("@uploadfile", FileUpload1.FileName);
            cmd.Parameters.AddWithValue("@Email", TextBox7.Text);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("Login.aspx");
        }

        protected void LinkButton1_Click1(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-5OUULDC\\SQLEXPRESS;Initial Catalog=Employee4;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("Update Emp4 set Name=@Name,Age=@Age,Contact=@Contact,Email=@Email,Address=@Address,Country=@Country,Password=@Password,CPassword=@CPassword,uploadfile=@uploadfile where Id=@Id", con);
            cmd.Parameters.AddWithValue("@Id", int.Parse(TextBox1.Text));
            cmd.Parameters.AddWithValue("@Name", TextBox2.Text);
            cmd.Parameters.AddWithValue("@Age", int.Parse(TextBox3.Text));
            cmd.Parameters.AddWithValue("@Contact", TextBox4.Text);
            cmd.Parameters.AddWithValue("@Email", TextBox7.Text);
            cmd.Parameters.AddWithValue("@Password", TextBox5.Text);
            cmd.Parameters.AddWithValue("@CPassword", TextBox6.Text);
            cmd.Parameters.AddWithValue("@Address", DropDownList1.Text);
            cmd.Parameters.AddWithValue("@Country", DropDownList2.Text);
            cmd.Parameters.AddWithValue("@uploadfile", FileUpload1.FileName);
            cmd.ExecuteNonQuery();
            con.Close();
        }
        protected void LinkButton2_Click1(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection("Data Source=DESKTOP-5OUULDC\\SQLEXPRESS;Initial Catalog=Employee4;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("Delete Emp4 where Id=@Id", con);
            cmd.Parameters.AddWithValue("@Id", int.Parse(TextBox1.Text));
            cmd.ExecuteNonQuery();
            con.Close();

        }

    }
}