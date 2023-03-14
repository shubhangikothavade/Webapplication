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
using System.Net;
using System.Net.Mail;

namespace WebApplication4
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            MailMessage mail = new MailMessage();
            SmtpClient SmtpServer = new SmtpClient();
            mail.From = new MailAddress("shubhangiko2018@gmail.com");
            mail.To.Add(TextBox1.Text);

            mail.Subject = TextBox2.Text;
            mail.Body = TextBox3.Text;
            SmtpServer.UseDefaultCredentials = false;
            NetworkCredential NetworkCred = new NetworkCredential("shubhangiko2018@gmail.com", "ycamdcukamnfyilq");
            SmtpServer.Credentials = NetworkCred;
            SmtpServer.EnableSsl = true;
            SmtpServer.Port = 587;
            SmtpServer.Host = "smtp.gmail.com";
            SmtpServer.Send(mail);

        }
    }
}