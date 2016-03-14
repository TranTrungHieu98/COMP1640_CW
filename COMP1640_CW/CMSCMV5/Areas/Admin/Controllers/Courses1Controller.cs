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
    public class Courses1Controller : Controller
    {
        private Entities db = new Entities();

        // GET: Admin/Courses1
        public ActionResult Index()
        {
            var courses = db.Courses.Include(c => c.asp_User).Include(c => c.asp_User1).Include(c => c.asp_User2);
            return View(courses.ToList());
        }

        // GET: Admin/Courses1/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Course course = db.Courses.Find(id);
            if (course == null)
            {
                return HttpNotFound();
            }
            return View(course);
        }

        // GET: Admin/Courses1/Create
        public ActionResult Create()
        {
            ViewBag.CMID = new SelectList(db.asp_User, "account", "password");
            ViewBag.CLID = new SelectList(db.asp_User, "account", "password");
            ViewBag.FID = new SelectList(db.asp_User, "account", "password");
            return View();
        }

        // POST: Admin/Courses1/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "IDCourse,CMID,Dates,Credits,Days,BTime,ETime,Location,FID,CLID")] Course course)
        {
            if (ModelState.IsValid)
            {
                db.Courses.Add(course);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.CMID = new SelectList(db.asp_User, "account", "password", course.CMID);
            ViewBag.CLID = new SelectList(db.asp_User, "account", "password", course.CLID);
            ViewBag.FID = new SelectList(db.asp_User, "account", "password", course.FID);
            return View(course);
        }

        // GET: Admin/Courses1/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Course course = db.Courses.Find(id);
            if (course == null)
            {
                return HttpNotFound();
            }
            ViewBag.CMID = new SelectList(db.asp_User, "account", "password", course.CMID);
            ViewBag.CLID = new SelectList(db.asp_User, "account", "password", course.CLID);
            ViewBag.FID = new SelectList(db.asp_User, "account", "password", course.FID);
            return View(course);
        }

        // POST: Admin/Courses1/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "IDCourse,CMID,Dates,Credits,Days,BTime,ETime,Location,FID,CLID")] Course course)
        {
            if (ModelState.IsValid)
            {
                db.Entry(course).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.CMID = new SelectList(db.asp_User, "account", "password", course.CMID);
            ViewBag.CLID = new SelectList(db.asp_User, "account", "password", course.CLID);
            ViewBag.FID = new SelectList(db.asp_User, "account", "password", course.FID);
            return View(course);
        }

        // GET: Admin/Courses1/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Course course = db.Courses.Find(id);
            if (course == null)
            {
                return HttpNotFound();
            }
            return View(course);
        }

        // POST: Admin/Courses1/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Course course = db.Courses.Find(id);
            db.Courses.Remove(course);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

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
