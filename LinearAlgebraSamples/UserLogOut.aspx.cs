using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LinearAlgebraSamples
{
    public partial class UserLogOut : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["user"] = "";
            Session.Abandon();          
            Session.Clear();
            FormsAuthentication.SignOut();
        }
    }
}