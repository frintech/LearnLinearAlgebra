using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LinearAlgebraSamples
{
    public partial class UserRegn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public string Encode(string value)
        {
            var hash = System.Security.Cryptography.SHA1.Create();
            var encoder = new System.Text.ASCIIEncoding();
            var combined = encoder.GetBytes(value ?? "");
            return BitConverter.ToString(hash.ComputeHash(combined)).ToLower().Replace("-", "");
        }
        
        protected void btnSubmit_Click(object sender, EventArgs e)
        {


         
            try
            {
                using (DataClasses1DataContext db = new DataClasses1DataContext())
                {
                    DateTime MyDateTime;
                    MyDateTime = new DateTime();
                    MyDateTime = DateTime.ParseExact(txtBirthDate.Text, "dd/MM/yyyy", CultureInfo.InvariantCulture);
                    User_Info usr = new User_Info();
                    usr.UidNo = (db.User_Infos.Max(i => (int?)i.UidNo) ?? 0) + 1;
                    usr.First_name = txtfname.Text.ToString();
                    usr.Last_name = txtlname.Text.ToString();
                    usr.Mobile_number = txtMobile.Text.ToString();
                    usr.Usr_pwd = Encode(tbpwd.Text.ToString());
                    usr.E_mail_id = txtemail.Text.ToString();
                    usr.Address_Communication = txtaddress.Text.ToString();
                    usr.Gender = ddlGender.SelectedItem.ToString();
                    usr.DOB = MyDateTime;
                    usr.Isactive = true;
                    usr.Usr_type = "G";
                    BusinessLayer blobj = new BusinessLayer();
                    string strResult = blobj.BLAdduser(usr);
                    ClientScriptManager cs = Page.ClientScript;
                    if (strResult.Equals("S"))
                    {
                        Type cstype = this.GetType();
                        lblResult.Visible = true;
                        lblResult.Text = "Successfully Inserted.";
                        lblResult.ForeColor = Color.Green;
                        String cstext1 = "alert('Successfully Inserted');window.location.href='userLogin.aspx';";
                        cs.RegisterStartupScript(cstype, "Message", cstext1, true);
                       
                    }
                    else
                    {
                        string errorMessage = "Error in registering user";
                        lblResult.Visible = true;
                        lblResult.Text = errorMessage;
                        lblResult.ForeColor = Color.Red;
                    }
                }
               
            }
            catch (Exception ex)
            {
                string errorMessage = "Error in registering user";
                errorMessage += ex.Message;
                throw new Exception(errorMessage);

            }
           
        }



       
      
    }
}