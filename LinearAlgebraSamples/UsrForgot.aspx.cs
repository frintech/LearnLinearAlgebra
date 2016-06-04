using System;
using System.Web;
using System.Web.UI;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using Owin;
using LinearAlgebraSamples.Models;

namespace LinearAlgebraSamples
{
    public partial class UsrForgot : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Forgot(object sender, EventArgs e)
        {
            if (IsValid)
            {
                LoginBusinessLayer blobj = new LoginBusinessLayer();
                bool blnexists = blobj.BLValidatePassword(Email.Text, tbPasskeyCode.Text);
                if (blnexists == false)
                {
                    FailureText.Text = "The user either does not exist or is not confirmed.";
                    ErrorMessage.Visible = true;
                    return;
                }

                Response.Redirect("~/ResetPassword.aspx?uid="+ Email.Text);
            
            }
        }
    }
}