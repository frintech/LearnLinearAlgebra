using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using Owin;
using LinearAlgebraSamples.Models;
using System.Web.Security;

namespace LinearAlgebraSamples
{
    public partial class WebForm7 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          
            var returnUrl = HttpUtility.UrlEncode(Request.QueryString["ReturnUrl"]);
            if (!String.IsNullOrEmpty(returnUrl))
            {
                RegisterHyperLink.NavigateUrl += "?ReturnUrl=" + returnUrl;
            }
        }

        protected void Unnamed6_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                LoginBusinessLayer blobj = new LoginBusinessLayer();
                bool blnexists = blobj.BLValidateUser(Email.Text,Password.Text);
                if (blnexists == true)
                {
                    
                    Session["user"] = Email.Text;
                    if (Session["ReturnURL"] == null)
                    {
                        Response.Redirect("Default.aspx");
                    }
                    else { Response.Redirect(Session["ReturnURL"].ToString()); }
                     
                }
                else
                {
                    FailureText.Text = "Invalid UserName or Password.";
                    ErrorMessage.Visible = true;
                    
                }
                
            }
        }

      
    }
}