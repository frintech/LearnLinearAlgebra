using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


namespace LinearAlgebraSamples
{
    class BusinessLayer
    {
        DALController db = new DALController();
        public string BLAdduser(User_Info usr)
        {
            return db.Adduser(usr);

        }
    }
}
