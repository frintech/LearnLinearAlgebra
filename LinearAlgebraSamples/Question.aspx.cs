using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Configuration;

namespace LinearAlgebraSamples
{
    public partial class Question : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
            {
                Session["ReturnURL"] = "Question.aspx";
                Response.Redirect("~/userlogin.aspx");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                string senderName = ConfigurationManager.AppSettings["EmailFromAddress"];
                string emailSubject = "Query" + tbSummary.Text;
                string messageBody = tbDesc.Text;
                string ToEmail = ConfigurationManager.AppSettings["EmailToEmail"];
                MailMessage mail = new MailMessage();
                mail.To.Add(ToEmail);
                mail.CC.Add(Session["user"].ToString());
                mail.From = new MailAddress(senderName);
                mail.Subject = emailSubject;
                mail.Body = messageBody;
                mail.IsBodyHtml = true;
                SmtpClient smtp = new SmtpClient();
                smtp.Host = ConfigurationManager.AppSettings["EmailHost"];
                smtp.Port = Convert.ToInt16(ConfigurationManager.AppSettings["EmailPort"]);
                smtp.UseDefaultCredentials = false;
                smtp.Credentials = new System.Net.NetworkCredential
                (ConfigurationManager.AppSettings["EmailUid"], ConfigurationManager.AppSettings["EmailPwd"]);// Enter seders User name and password
                smtp.EnableSsl = Convert.ToBoolean(ConfigurationManager.AppSettings["enableSSL"]); ;
                smtp.Send(mail);
                ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Email sent successfully.Administrator will reply to your question');", true);
                tbSummary.Text=string.Empty;
                tbDesc.Text = string.Empty;
            }
            catch (Exception ex)
            {
                string strmessage = ex.Message;
                ClientScript.RegisterStartupScript(GetType(), "alert", "alert('"+ strmessage +"');", true);
            }
            
        }
        

       
    }
}