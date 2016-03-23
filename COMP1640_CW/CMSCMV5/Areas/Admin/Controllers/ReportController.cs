using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using CMSCMV5.DAO;

namespace CMSCMV5.Areas.Admin.Controllers
{
    [Authorize(Roles = "0")]
    public class ReportController : Controller
    {
        // GET: Admin/Report
        public ActionResult Index(int id = 0)
        {
            string currenUser = User.Identity.Name;
            using (var db = new Entities())
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
        public ActionResult Create()
        {
            return View();
        }

        // POST: Admin/Report/Create
        [HttpPost]
        public ActionResult Create(FormCollection collection)
        {
            try
            {
                // TODO: Add insert logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: Admin/Report/Edit/5
        public ActionResult Edit(int id)
        {
            return View();
        }

        // POST: Admin/Report/Edit/5
        [HttpPost]
        public ActionResult Edit(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add update logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
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
                var courses = data.Select(course => new Course() { IDCourse = course.IDCourse, CLID = course.CLID }).ToList();

                return Json(courses, JsonRequestBehavior.AllowGet);
            }
        }
    }
}
