using System;
using System.Linq;
using System.Web;
using System.Web.UI;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using Owin;
using LinearAlgebraSamples.Models;

namespace LinearAlgebraSamples
{
    public partial class ResetPassword : Page
    {
        protected string StatusMessage
        {
            get;
            private set;
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            string user_id = Request.QueryString["uid"];
            if (user_id != null)
            {
                Email.Text = user_id.ToString();
            }
        }

        protected void Reset_Click(object sender, EventArgs e)
        {
            LoginBusinessLayer blobj = new LoginBusinessLayer();
            bool blnexists = blobj.BLSavePassword(Email.Text, Password.Text);
            if (blnexists ==true)
            {
                Response.Redirect("~/ResetPasswordConfirmation");
                return;
               
            }

            ErrorMessage.Text = "An error has occurred";
        }
    }
}