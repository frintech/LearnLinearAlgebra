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
    public partial class TestResults : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
            {
                Session["ReturnURL"] = "TestResults.aspx";
                Response.Redirect("~/userlogin.aspx");
               
            }
            else
            {
                using (DataClasses1DataContext db = new DataClasses1DataContext())
                {
                    string stremail = Session["user"].ToString();
                    int lintuserid = db.User_Infos.Where(x => x.E_mail_id == stremail).FirstOrDefault().UidNo;
                 QuizBusinessLayer blobj = new QuizBusinessLayer();
                    GridView1.DataSource = blobj.BLGetuserTest(lintuserid);
                    GridView1.DataBind();
                }
            }
           
        }

   
        

       
    }
}