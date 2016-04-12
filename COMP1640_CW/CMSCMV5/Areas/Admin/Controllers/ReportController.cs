using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using CMSCMV5.DAO;
using MTOLVN.Areas.Site.Models;

namespace CMSCMV5.Areas.Admin.Controllers
{
    //[Authorize(Roles = "0")]
    public class ReportController : Controller
    {
        Report report;
      

        // GET: Admin/Report
        public ActionResult Index(int id = 0)
        {
            string currenUser = User.Identity.Name;

            using (var db = new Entities())
            {
                //get group
                var userGroup = db.asp_User.FirstOrDefault(x => x.account == currenUser);
                if (userGroup != null)
                {
                    var groupid = userGroup.asp_Group.FirstOrDefault().id;
                    ViewBag.groupid = groupid;
                    if (groupid == 5)
                    {
                        var data = db.Reports.Where(x => x.CLID == currenUser).ToList();
                        if (id == 0 && data.Count > 0)
                        {
                            ViewBag.Id = data[0].ID;
                        }
                        else
                        {
                            ViewBag.Id = id;
                        }
                        return View(data);
                    }

                    if (groupid == 4)
                    {
                        var data = db.Reports.Where(x => x.CMID == currenUser && x.Status == 1).ToList();
                        if (id == 0 && data.Count > 0)
                        {
                            ViewBag.Id = data[0].ID;
                        }
                        else
                        {
                            ViewBag.Id = id;
                        }
                        return View(data);
                    }

                    if (groupid == 3)
                    {
                        var data = db.Reports.Where(x => x.DLTID == currenUser && x.Status == 2).ToList();
                        if (id == 0 && data.Count > 0)
                        {
                            ViewBag.Id = data[0].ID;
                        }
                        else
                        {
                            ViewBag.Id = id;
                        }
                        return View(data);
                    }

                    if (groupid == 2)
                    {
                        var data = db.Reports.Where(x => x.PVCID == currenUser && x.Status == 3).ToList();
                        if (id == 0 && data.Count > 0)
                        {
                            ViewBag.Id = data[0].ID;
                        }
                        else
                        {
                            ViewBag.Id = id;
                        }
                        return View(data);
                    }

                    if (groupid == 0)
                    {
                        var data = db.Reports.Where(x => x.Status == 3).ToList();
                        if (id == 0 && data.Count > 0)
                        {
                            ViewBag.Id = data[0].ID;
                        }
                        else
                        {
                            ViewBag.Id = id;
                        }
                        return View(data);
                    }

                }
                return View();
            }
        }

        // GET: Admin/Report/Details/5
        public ActionResult Details(int id)
        {
            using (var db = new Entities())
            {
                var data = db.Reports.FirstOrDefault(x => x.ID == id);
                return PartialView(data);
            }
        }

        // GET: Admin/Report/Create
        public ActionResult Create(int courseID)
        {
            using (var db = new Entities())
            {
                var data = db.Courses.FirstOrDefault(x => x.IDCourse == courseID);
                return View(data);
            }
        }

        // POST: Admin/Report/Create
        [HttpPost]
        public ActionResult Create(Report report)
        {
            try
            {
                using (var db = new Entities())
                {
                    report.Created = DateTime.Now;

                    var emailOfCm = GetEmailLogin(report.CMID);
                    //call sent email

                    //var pathHtml = Server.MapPath("bodyEmail.html");
                    //var body = System.IO.File.ReadAllText(pathHtml);
                    //body = String.Format(body, "", DateTime.Now.ToString("hh:mm dd-MM-yyyy"), "");
                    //var data = db.Courses.FirstOrDefault(x => x.IDCourse == courseID);
                    db.Reports.Add(report);
                    db.SaveChanges();
                    MailSender mailSender = new MailSender();
                    mailSender.sendMail(emailOfCm, "Check Report", "Report was submit", "gmail");
                    return Json(new { status = true }, JsonRequestBehavior.AllowGet);
                }
            }
            catch
            {
                return Json(new { status = false }, JsonRequestBehavior.AllowGet);
            }
        }

        // GET: Admin/Report/Edit/5
        public ActionResult Edit(int id)
        {
            return View();
        }

        // POST: Admin/Report/Edit/5
        [HttpPost]
        public ActionResult Approve(int id, int status)
        {
            try
            {
                using (var db = new Entities())
                {
                    var update = db.Reports.FirstOrDefault(x => x.ID == id);

                    var emailOfCl = GetEmailLogin(update.CLID);
                    var emailOfCM = GetEmailLogin(update.CMID);
                    var emailOfPVC = GetEmailLogin(update.PVCID);

                    if (update != null)
                    {
                        update.Status = status;
                        db.SaveChanges();
                        MailSender mailSender = new MailSender();
                        mailSender.sendMail(emailOfCl, "Check Report", "Report was Approve", "gmail");
                        mailSender.sendMail(emailOfCM, "Check Report", "Report was Approve", "gmail");
                        mailSender.sendMail(emailOfPVC, "Check Report", "Report was Approve", "gmail");
                        return Json(new { status = true }, JsonRequestBehavior.AllowGet);
                    }
                }

            }
            catch (Exception ex)
            {
                return Json(new { status = false }, JsonRequestBehavior.AllowGet);
            }

            return Json(new { status = false }, JsonRequestBehavior.AllowGet);
        }

        // POST: Admin/Report/Edit/5
        [HttpPost]
        public ActionResult Comment(int id, string comment)
        {
            try
            {
                using (var db = new Entities())
                {
                    var update = db.Reports.FirstOrDefault(x => x.ID == id);
                    if (update != null)
                    {
                        update.Comment = comment;
                        db.SaveChanges();
                        return Json(new { status = true }, JsonRequestBehavior.AllowGet);
                    }
                }

            }
            catch
            {
                return Json(new { status = false }, JsonRequestBehavior.AllowGet);
            }

            return Json(new { status = false }, JsonRequestBehavior.AllowGet);
        }


        // GET: Admin/Report/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        // POST: Admin/Report/Delete/5
        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add delete logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        [HttpGet]
        public ActionResult GetCourseOfCl(string id)
        {
            using (var db = new Entities())
            {
                var data = db.Courses.Where(x => x.CLID == id).ToList();
                var courses = data.Select(course => new Course() { IDCourse = course.IDCourse, Title = course.Title }).ToList();

                return Json(courses, JsonRequestBehavior.AllowGet);
            }
        }

        public string GetEmailLogin(string username)
        {
            string currenUser = User.Identity.Name;

            using (var db = new Entities())
            {
                //get group
                var userGroup = db.asp_User.FirstOrDefault(x => x.userName == username);
                if (userGroup != null)
                {
                    return userGroup.email;
                }
            }

            return null;
        }
    }
}