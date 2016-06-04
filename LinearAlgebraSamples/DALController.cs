using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LinearAlgebraSamples
{
    class DALController
    {
        DataClasses1DataContext dbobj = new DataClasses1DataContext();
        public string Adduser(User_Info usr)
        {
            string strResult = string.Empty;
            try
            {
                dbobj.User_Infos.InsertOnSubmit(usr);
                dbobj.SubmitChanges();
                strResult = "S";
            }
            catch (Exception ex)
            {
                strResult = "F";
            }

             return strResult;

        }
    }
}
