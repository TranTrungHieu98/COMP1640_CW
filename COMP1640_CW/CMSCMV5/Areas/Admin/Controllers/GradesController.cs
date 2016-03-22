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
    public class GradesController : Controller
    {
        private Entities db = new Entities();

        // GET: Admin/Grades
        public ActionResult Index()
        {
            var grades = db.Grades.Include(g => g.Course).Include(g => g.Student);
            return View(grades.ToList());
        }

        // GET: Admin/Grades/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Grade grade = db.Grades.Find(id);
            if (grade == null)
            {
                return HttpNotFound();
            }
            return View(grade);
        }

        // GET: Admin/Grades/Create
        public ActionResult Create()
        {
            ViewBag.CourseID = new SelectList(db.Courses, "IDCourse", "CMID");
            ViewBag.StudentGrade = new SelectList(db.Students, "IDStudent", "FirstName");
            return View();
        }

        // POST: Admin/Grades/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "GradeID,StudentGrade,CourseID,TotalScore,GradeLetter")] Grade grade)
        {
            if (ModelState.IsValid)
            {
                db.Grades.Add(grade);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.CourseID = new SelectList(db.Courses, "IDCourse", "CMID", grade.CourseID);
            ViewBag.StudentGrade = new SelectList(db.Students, "IDStudent", "FirstName", grade.StudentGrade);
            return View(grade);
        }

        // GET: Admin/Grades/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Grade grade = db.Grades.Find(id);
            if (grade == null)
            {
                return HttpNotFound();
            }
            ViewBag.CourseID = new SelectList(db.Courses, "IDCourse", "CMID", grade.CourseID);
            ViewBag.StudentGrade = new SelectList(db.Students, "IDStudent", "FirstName", grade.StudentGrade);
            return View(grade);
        }

        // POST: Admin/Grades/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "GradeID,StudentGrade,CourseID,TotalScore,GradeLetter")] Grade grade)
        {
            if (ModelState.IsValid)
            {
                db.Entry(grade).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.CourseID = new SelectList(db.Courses, "IDCourse", "CMID", grade.CourseID);
            ViewBag.StudentGrade = new SelectList(db.Students, "IDStudent", "FirstName", grade.StudentGrade);
            return View(grade);
        }

        // GET: Admin/Grades/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Grade grade = db.Grades.Find(id);
            db.Grades.Remove(grade);
            db.SaveChanges();
            if (grade == null)
            {
                return HttpNotFound();
            }
            return RedirectToAction("Index");
        }

        // POST: Admin/Grades/Delete/5
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
