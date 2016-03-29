using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using CMSCMV5.DAO;

namespace CMSCMV5.Areas.Admin.Controllers
{
    public class ClassesController : Controller
    {
        private Entities db = new Entities();

        // GET: Admin/Classes
        public ActionResult Index()
        {
            return View(db.Classes.ToList());
        }

        // GET: Admin/Classes/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Class @class = db.Classes.Find(id);
            if (@class == null)
            {
                return HttpNotFound();
            }
            return View(@class);
        }

        // GET: Admin/Classes/Create
        public ActionResult Create()
        {
            ViewBag.CourseID = new SelectList(db.Courses, "IDCourse", "CMID");
            return View();
        }

        // POST: Admin/Classes/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "IDClass,Subject,CourseID,Department,Title,Description")] Class @class)
        {
            if (ModelState.IsValid)
            {
                db.Classes.Add(@class);
                db.SaveChanges();
                return RedirectToAction("Index");
            }else if(ModelState.IsValid)

            ViewBag.CourseID = new SelectList(db.Courses, "IDCourse", "CMID", @class.CourseID);
            return View(@class);

        }

        // GET: Admin/Classes/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Class @class = db.Classes.Find(id);
            if (@class == null)
            {
                return HttpNotFound();
            }
            ViewBag.CourseID = new SelectList(db.Courses, "IDCourse", "CMID", @class.CourseID);
            return View(@class);
        }

        // POST: Admin/Classes/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "IDClass,Subject,CourseID,Department,Title,Description")] Class @class)
        {
            if (ModelState.IsValid)
            {
                db.Entry(@class).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.CourseID = new SelectList(db.Courses, "IDCourse", "CMID", @class.CourseID);
            return View(@class);
        }

        // GET: Admin/Classes/Delete/5
        public ActionResult Delete(int? id)
        {
            Class @class = db.Classes.Find(id);
            db.Classes.Remove(@class);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        // POST: Admin/Classes/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]


        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
