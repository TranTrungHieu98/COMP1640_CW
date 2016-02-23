using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CMSCMV5.Areas.Admin.Models
{
    public class MailModel
    {
        public string name { get; set; }

        public string member { get; set; }

        public DAO.BookTour data { get; set; }
    }
}