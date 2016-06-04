using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


namespace LinearAlgebraSamples
{
    class QuizBusinessLayer
    {
        QuizDAL db = new QuizDAL();
        public string BLInsertTestRecords(User_Test scorecard)
        {
            return db.InsertTestRecords(scorecard);

        }
        public List<User_Test> BLGetuserTest(int uidno)
        {
            return db.GetuserTest(uidno);
        }
    }
}
