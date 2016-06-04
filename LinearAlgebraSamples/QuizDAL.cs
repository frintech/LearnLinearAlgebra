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
  
    class QuizDAL
    {

        DataClasses1DataContext db = new DataClasses1DataContext();
     public string InsertTestRecords(User_Test scorecard)
    {
            string strResult = string.Empty;
            try
            {
                db.User_Tests.InsertOnSubmit(scorecard);
                db.SubmitChanges();
                strResult = "S";
            }
            catch (Exception ex)
            {
                strResult = "F";
            }

            return strResult;

        }

        public List<User_Test> GetuserTest (int uidno)
        {


            var list = from c in db.User_Tests
                           where c.UidNo== uidno
                           orderby c.Test_Date descending
                           select c;
            List<User_Test> listview = new List<User_Test>();
            foreach (var item in list)
            {
                User_Test obj = new User_Test();
                obj.TestNo = item.TestNo;
                obj.Score = item.Score;
                obj.Test_Date = item.Test_Date;
                listview.Add(obj);
            }

            return listview;

        }


    }
}
