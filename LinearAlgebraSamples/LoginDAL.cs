using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Web;

using System.Configuration;

using System.Web.Security;


namespace LinearAlgebraSamples
{
  
    class LoginDAL
    {

        DataClasses1DataContext db = new DataClasses1DataContext();
     public bool ValidateUser(string username, string password)
    {
            
            string usrpwd = Encode(password);
        var query = from c in db.User_Infos
                    where c.E_mail_id == username && c.Usr_pwd == usrpwd
                    select c;
        if (query.ToList().Count > 0)
        {
            return true;
        }
        else
        {
            return false;
        }

    }
    public string Encode(string value)
    {
        var hash = System.Security.Cryptography.SHA1.Create();
        var encoder = new System.Text.ASCIIEncoding();
        var combined = encoder.GetBytes(value ?? "");
        return BitConverter.ToString(hash.ComputeHash(combined)).ToLower().Replace("-", "");
    }
       
        public bool ValidatePassword(string email, string passkeycode)
        {
            
            var query = from c in db.User_Infos
                        where c.E_mail_id == email && c.Mobile_number.ToString().Substring(c.Mobile_number.ToString().Length - 4)+ c.DOB.Year.ToString() == passkeycode
                        select c;
            if (query.ToList().Count > 0)
            {
                return true;
            }
            else
            {
                return false;
            }

        }
        public bool SavePassword(string email, string password)
        {
            User_Info  objusr = db.User_Infos.FirstOrDefault(c => c.E_mail_id == email);
            //Field which will be update
            objusr.Usr_pwd = Encode(password);
            // executes the appropriate commands to implement the changes to the database
            db.SubmitChanges();
            return true;

        }




    }
}
