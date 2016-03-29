using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Text;

namespace SendMailPrototype
{


    class Program
    {
        static void Main(string[] args)
        {
             MailSender mailSender = new MailSender();
             mailSender.sendMail("phuongtmgc00538@fpt.edu.vn", "Subject", "This is H1", "gmail");
        }



    }
}
