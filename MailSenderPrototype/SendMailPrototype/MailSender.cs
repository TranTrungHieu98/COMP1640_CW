using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Text;

namespace SendMailPrototype
{
    public class MailSender
    {
        // Can send body as html
        public void sendMail(string mailTo, string subject, string body, string server)
        {
            NetworkCredential cred = new NetworkCredential("notificationuniversity@gmail.com", "tryharder");
            MailMessage msg = new MailMessage();
            msg.To.Add(mailTo);
            msg.From = new MailAddress("notificationuniversity@gmail.com");
            msg.Subject = subject;
            msg.Body = body;
            msg.IsBodyHtml = true;
            switch (server)
            {
                case "gmail":
                    server = "smtp.gmail.com";
                    break;
                case "live":
                    server = "smtp.live.com";
                    break;
                case "yahoo":
                    server = "smtp.mail.yahoo.com";
                    break;
                case "aim":
                    server = "smtp.aim.com";
                    break;
            }
            SmtpClient client = new SmtpClient(server, 25);
            client.Credentials = cred;
            client.EnableSsl = true;
            client.Send(msg);
        }

    }
}
