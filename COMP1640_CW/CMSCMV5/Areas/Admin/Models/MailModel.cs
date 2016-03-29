using System;
using System.Configuration;
using System.Net.Mail;
using System.Threading.Tasks;

namespace MTOLVN.Areas.Site.Models
{
    public class MailModel
    {
        public string From { get; set; }
        public string To { get; set; }
        public string Subject { get; set; }
        public string Body { get; set; }

        public int SentMail(MailModel objModelMail)
        {
            try
            {
                var mail = new MailMessage();
                mail.To.Add(objModelMail.To);
                mail.From = new MailAddress(ConfigurationManager.AppSettings["USERMAIL"]);
                mail.Subject = objModelMail.Subject;
                string body = objModelMail.Body;
                mail.Body = body;
                mail.IsBodyHtml = true;
                var smtp = new SmtpClient
                {
                    Host = ConfigurationManager.AppSettings["SERVERMAIL"],
                    Port = Convert.ToInt32(ConfigurationManager.AppSettings["PORT"]),
                    UseDefaultCredentials = false,
                    Credentials = new System.Net.NetworkCredential
                        (ConfigurationManager.AppSettings["USERMAIL"], ConfigurationManager.AppSettings["PASSWORD"]),
                    EnableSsl = bool.Parse(ConfigurationManager.AppSettings["EnableSsl"])
                };
                smtp.Send(mail);
                return 1;
            }
            catch (Exception)
            {

                return 0;
            }
        }

    }
}