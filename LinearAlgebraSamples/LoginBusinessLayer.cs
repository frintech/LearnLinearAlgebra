using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


namespace LinearAlgebraSamples
{
    class LoginBusinessLayer
    {
        LoginDAL db = new LoginDAL();
        public bool BLValidateUser(string username, string password)
        {
            return db.ValidateUser(username, password);

        }
        public bool BLValidatePassword(string email, string passkeycode)
        { 
            return db.ValidatePassword(email, passkeycode);

        }
        public bool BLSavePassword(string email, string password)
        {
            return db.SavePassword(email, password);
        }
}
}
