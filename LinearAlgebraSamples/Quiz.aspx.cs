using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LinearAlgebraSamples
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"]==null)
            {
                Session["ReturnURL"] = "Quiz.aspx";
                Response.Redirect("~/userlogin.aspx");
               
            }
           if (!Page.IsPostBack)
            {
                pnl1.Visible = true;
                Panel2.Visible = false;
                Panel4.Visible = false;
                Panel6.Visible = false;
                Panel8.Visible = false;
                Panel10.Visible = false;
                Panel12.Visible = false;
                Panel14.Visible = false;
                Panel16.Visible = false;
                Panel18.Visible = false;
                pnl29.Visible = false;
                Session["ChkView"] = null;
            }

        }

        protected void TextBox8_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnNext1_Click(object sender, EventArgs e)
        {
            pnl1.Visible = false;
            Panel2.Visible = true;
            Panel4.Visible = false;
            Panel6.Visible = false;
            Panel8.Visible = false;
            Panel10.Visible = false;
            Panel12.Visible = false;
            Panel14.Visible = false;
            Panel16.Visible = false;
            Panel18.Visible = false;
            pnl29.Visible = false;

            if (Session["ChkView"]!= null)
            {
                RadioButtonList2.Items[RadioButtonList2.SelectedIndex].Attributes.Add("Style", "Background-color:red");
                RadioButtonList2.Items[2].Attributes.Add("Style", "Background-color:green");              

            }
            

        }

        protected void btnq2_Click(object sender, EventArgs e)
        {
            pnl1.Visible = false;
            Panel2.Visible = false;
            Panel4.Visible = true;
            Panel6.Visible = false;
            Panel8.Visible = false;
            Panel10.Visible = false;
            Panel12.Visible = false;
            Panel14.Visible = false;
            Panel16.Visible = false;
            Panel18.Visible = false;
            pnl29.Visible = false;
            if (Session["ChkView"] != null)
            {
                RadioButtonList3.Items[RadioButtonList3.SelectedIndex].Attributes.Add("Style", "Background-color:red");
                RadioButtonList3.Items[3].Attributes.Add("Style", "Background-color:green");

            }

        }

        protected void btnSUbmit_Click(object sender, EventArgs e)
        {
//       0-A 1-base 2-Cache 3-D

//            1 - b
//2 - C
//3 - D
//4 - C
//5 - D
//6 = D
//7 = B
//8 = A
//9 - A
//10 - A
           int lintScoreCard = 0;
            if (RadioButtonList1.SelectedIndex == 1)
            {
                lintScoreCard = lintScoreCard + 1;
                

            }
                     
            if (RadioButtonList2.SelectedIndex == 2)
            {
                lintScoreCard = lintScoreCard + 1;
               
            }
           
            if (RadioButtonList3.SelectedIndex == 3)
            {
                lintScoreCard = lintScoreCard + 1;
                
            }           
            if (RadioButtonList4.SelectedIndex == 3)
            {
                lintScoreCard = lintScoreCard + 1;
            }
             if (RadioButtonList5.SelectedIndex == 3)
            {
                lintScoreCard = lintScoreCard + 1;
            }
             if (RadioButtonList6.SelectedIndex == 3)
            {
                lintScoreCard = lintScoreCard + 1;
            }
             if (RadioButtonList7.SelectedIndex == 1)
            {
                lintScoreCard = lintScoreCard + 1;
            }
             if (RadioButtonList8.SelectedIndex == 0)
            {
                lintScoreCard = lintScoreCard + 1;
            }
             if (RadioButtonList9.SelectedIndex == 0)
            {
                lintScoreCard = lintScoreCard + 1;
            }
             if (RadioButtonList10.SelectedIndex == 0)
            {
                lintScoreCard = lintScoreCard + 1;
            }
         
            
            using (DataClasses1DataContext db = new DataClasses1DataContext())
            {
                User_Test test = new User_Test();
                string stremail = Session["user"].ToString();
                test.TestNo = (db.User_Tests.Max(i => (int?)i.TestNo) ?? 0) + 1;
                test.UidNo = db.User_Infos.Where(x=>x.E_mail_id== stremail).FirstOrDefault().UidNo;
                test.Score = lintScoreCard;
                test.Test_Date = System.DateTime.Now;
                QuizBusinessLayer blobj = new QuizBusinessLayer();
                string strResult = blobj.BLInsertTestRecords(test);
                ClientScriptManager cs = Page.ClientScript;
                Panel18.Visible = false;
                pnl29.Visible = true;
                btnViewCheck.Visible = true;
                if (strResult.Equals("S"))
                {
                    Type cstype = this.GetType();
                    lblresult.Visible = true;
                    lblresult.Text = "Successfully Inserted.";
                    lblresult.ForeColor = Color.Green;
                  
                    string strmessage =  lintScoreCard.ToString() + "out of 10 questions answered correctly";
                    lblresult.Text = strmessage;
                    lblPercentile.Visible = true;
                    lblPercentile.Text ="Your Score is"+ (lintScoreCard * 10).ToString() +"%";
                    ////String cstext1 = "alert('"+ strmessage + "');window.location.href='TestResults.aspx';";
                    //String cstext1 = "alert('" + strmessage + "');";
                    //cs.RegisterStartupScript(cstype, "Message", cstext1, true);
                    btnViewCheck.Visible = true;
                    btnRestart.Visible = true;

                }
                else
                {
                    string errorMessage = "Error in while storing data in DB operations";
                    lblresult.Visible = true;
                    lblresult.Text = errorMessage;
                    lblresult.ForeColor = Color.Red;
                }
            }

              
        }

       

        protected void btnq3_Click(object sender, EventArgs e)
        {
            pnl1.Visible = false;
            Panel2.Visible = false;
            Panel4.Visible = false;
            Panel6.Visible = true;
            Panel8.Visible = false;
            Panel10.Visible = false;
            Panel12.Visible = false;
            Panel14.Visible = false;
            Panel16.Visible = false;
            Panel18.Visible = false;
            pnl29.Visible = false;
            if (Session["ChkView"] != null)
            {
                RadioButtonList4.Items[RadioButtonList4.SelectedIndex].Attributes.Add("Style", "Background-color:red");
                RadioButtonList4.Items[3].Attributes.Add("Style", "Background-color:green");

            }

        }

        protected void btnq6_Click(object sender, EventArgs e)
        {
            pnl1.Visible = false;
            Panel2.Visible = false;
            Panel4.Visible = false;
            Panel6.Visible = false;
            Panel8.Visible = true;
            Panel10.Visible = false;
            Panel12.Visible = false;
            Panel14.Visible = false;
            Panel16.Visible = false;
            Panel18.Visible = false;
            pnl29.Visible = false;
            if (Session["ChkView"] != null)
            {
                RadioButtonList5.Items[RadioButtonList5.SelectedIndex].Attributes.Add("Style", "Background-color:red");
                RadioButtonList5.Items[3].Attributes.Add("Style", "Background-color:green");

            }
        }

        protected void btnq8_Click(object sender, EventArgs e)
        {
            pnl1.Visible = false;
            Panel2.Visible = false;
            Panel4.Visible = false;
            Panel6.Visible = false;
            Panel8.Visible = false;
            Panel10.Visible = true;
            Panel12.Visible = false;
            Panel14.Visible = false;
            Panel16.Visible = false;
            Panel18.Visible = false;
            pnl29.Visible = false;
            if (Session["ChkView"] != null)
            {
                RadioButtonList6.Items[RadioButtonList6.SelectedIndex].Attributes.Add("Style", "Background-color:red");
                RadioButtonList6.Items[3].Attributes.Add("Style", "Background-color:green");

            }
        }

        protected void btnq10_Click(object sender, EventArgs e)
        {
            pnl1.Visible = false;
            Panel2.Visible = false;
            Panel4.Visible = false;
            Panel6.Visible = false;
            Panel8.Visible = false;
            Panel10.Visible = false;
            Panel12.Visible = true;
            Panel14.Visible = false;
            Panel16.Visible = false;
            Panel18.Visible = false;
            pnl29.Visible = false;
            if (Session["ChkView"] != null)
            {
                RadioButtonList7.Items[RadioButtonList7.SelectedIndex].Attributes.Add("Style", "Background-color:red");
                RadioButtonList7.Items[1].Attributes.Add("Style", "Background-color:green");

            }
        }

        protected void btnq12_Click(object sender, EventArgs e)
        {
            pnl1.Visible = false;
            Panel2.Visible = false;
            Panel4.Visible = false;
            Panel6.Visible = false;
            Panel8.Visible = false;
            Panel10.Visible = false;
            Panel12.Visible = false;
            Panel14.Visible = true;
            Panel16.Visible = false;
            Panel18.Visible = false;
            pnl29.Visible = false;
            if (Session["ChkView"] != null)
            {
                RadioButtonList8.Items[RadioButtonList8.SelectedIndex].Attributes.Add("Style", "Background-color:red");
                RadioButtonList8.Items[0].Attributes.Add("Style", "Background-color:green");

            }
        }

        protected void btnq14_Click(object sender, EventArgs e)
        {
            pnl1.Visible = false;
            Panel2.Visible = false;
            Panel4.Visible = false;
            Panel6.Visible = false;
            Panel8.Visible = false;
            Panel10.Visible = false;
            Panel12.Visible = false;
            Panel14.Visible = false;
            Panel16.Visible = true;
            Panel18.Visible = false;
            pnl29.Visible = false;
            if (Session["ChkView"] != null)
            {
                RadioButtonList9.Items[RadioButtonList9.SelectedIndex].Attributes.Add("Style", "Background-color:red");
                RadioButtonList9.Items[0].Attributes.Add("Style", "Background-color:green");

            }
        }

        protected void btnq16_Click(object sender, EventArgs e)
        {
            pnl1.Visible = false;
            Panel2.Visible = false;
            Panel4.Visible = false;
            Panel6.Visible = false;
            Panel8.Visible = false;
            Panel10.Visible = false;
            Panel12.Visible = false;
            Panel14.Visible = false;
            Panel16.Visible = false;
            Panel18.Visible = true;
            btnViewCheck.Visible = false;
            pnl29.Visible = false;
            if (Session["ChkView"] != null)
            {
                RadioButtonList10.Items[RadioButtonList10.SelectedIndex].Attributes.Add("Style", "Background-color:red");
                RadioButtonList10.Items[0].Attributes.Add("Style", "Background-color:green");
                btnSUbmit.Visible = false;
            }
        }

        protected void btnViewCheck_Click(object sender, EventArgs e)
        {
            pnl1.Visible = true;
            Panel2.Visible = false;
            Panel4.Visible = false;
            Panel6.Visible = false;
            Panel8.Visible = false;
            Panel10.Visible = false;
            Panel12.Visible = false;
            Panel14.Visible = false;
            Panel16.Visible = false;
            Panel18.Visible = false;
            pnl29.Visible = false;
            Session["ChkView"] = "1";

            RadioButtonList1.Items[RadioButtonList1.SelectedIndex].Attributes.Add("Style", "Background-color:red");
            RadioButtonList1.Items[1].Attributes.Add("Style", "Background-color:green");
           
        }

        protected void btnRestart_Click(object sender, EventArgs e)
        {
            pnl1.Visible = true;
            Panel2.Visible = false;
            Panel4.Visible = false;
            Panel6.Visible = false;
            Panel8.Visible = false;
            Panel10.Visible = false;
            Panel12.Visible = false;
            Panel14.Visible = false;
            Panel16.Visible = false;
            Panel18.Visible = false;
            pnl29.Visible = false;
            btnSUbmit.Visible = true;
            Session["ChkView"] = null;
            RadioButtonList1.SelectedIndex = -1;
            RadioButtonList2.SelectedIndex = -1;
            RadioButtonList3.SelectedIndex = -1;
            RadioButtonList4.SelectedIndex = -1;
            RadioButtonList5.SelectedIndex = -1;
            RadioButtonList6.SelectedIndex = -1;
            RadioButtonList7.SelectedIndex = -1;
            RadioButtonList8.SelectedIndex = -1;
            RadioButtonList9.SelectedIndex = -1;
            RadioButtonList10.SelectedIndex = -1;
        }

        protected void btnPrevious1_Click(object sender, EventArgs e)
        {
            pnl1.Visible = true;
            Panel2.Visible = false;
            Panel4.Visible = false;
            Panel6.Visible = false;
            Panel8.Visible = false;
            Panel10.Visible = false;
            Panel12.Visible = false;
            Panel14.Visible = false;
            Panel16.Visible = false;
            Panel18.Visible = false;
            pnl29.Visible = false;

            if (Session["ChkView"] != null)
            {
                RadioButtonList1.Items[RadioButtonList1.SelectedIndex].Attributes.Add("Style", "Background-color:red");
                RadioButtonList1.Items[2].Attributes.Add("Style", "Background-color:green");

            }
        }

        protected void btnPrev3_Click(object sender, EventArgs e)
        {
            pnl1.Visible = false;
            Panel2.Visible = true;
            Panel4.Visible = false;
            Panel6.Visible = false;
            Panel8.Visible = false;
            Panel10.Visible = false;
            Panel12.Visible = false;
            Panel14.Visible = false;
            Panel16.Visible = false;
            Panel18.Visible = false;
            pnl29.Visible = false;

            if (Session["ChkView"] != null)
            {
                RadioButtonList2.Items[RadioButtonList2.SelectedIndex].Attributes.Add("Style", "Background-color:red");
                RadioButtonList2.Items[2].Attributes.Add("Style", "Background-color:green");

            }
        }

        protected void btnp6_Click(object sender, EventArgs e)
        {
            pnl1.Visible = false;
            Panel2.Visible = false;
            Panel4.Visible = false;
            Panel6.Visible = true;
            Panel8.Visible = false;
            Panel10.Visible = false;
            Panel12.Visible = false;
            Panel14.Visible = false;
            Panel16.Visible = false;
            Panel18.Visible = false;
            pnl29.Visible = false;
            if (Session["ChkView"] != null)
            {
                RadioButtonList4.Items[RadioButtonList4.SelectedIndex].Attributes.Add("Style", "Background-color:red");
                RadioButtonList4.Items[3].Attributes.Add("Style", "Background-color:green");

            }
        }
    }
}