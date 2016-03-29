using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using CMSCMV5.DAO;

namespace CMSCMV5.Areas.Admin.Bussiness
{
    public class UserDao
    {
        public static int GetGroupOfUser(string currenUser)
        {
            try
            {
                using (var db = new Entities())
                {
                    //get group
                    var userGroup = db.asp_User.FirstOrDefault(x => x.account == currenUser);
                    var firstOrDefault = userGroup?.asp_Group.FirstOrDefault();
                    if (firstOrDefault != null)
                    {
                        var groupid = firstOrDefault.id;
                        return groupid;
                    }
                }
            }
            catch (Exception)
            {

                return 99;
            }

            return 99;
        }
    }
}