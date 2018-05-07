﻿using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web.Mvc;
using SistemaPersonal.Models;

namespace SistemaPersonal.Controllers.MVC
{
    [Authorize(Roles = "Professor")]
    public class GruposController : Controller
    {
        private PersonalContext db = new PersonalContext();


        // Add Alunos
        public ActionResult AddEstudante(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Grupos grupos = db.Grupos.Find(id);
            if (grupos == null)
            {
                return HttpNotFound();
            }

            var gruposDetalhes = new GruposDetalhes
            {
                GrupoId = id.Value

            };
            ViewBag.UserId = new SelectList(db.Usuarios.Where(u => u.Estudante).OrderBy(u => u.Nome).ThenBy(u => u.Sobrenome), "UserId", "NomeCompleto");

            return View(gruposDetalhes);
        }

        // Post para Add Alunos
        [HttpPost]
        public ActionResult AddEstudante(GruposDetalhes gruposDetalhes)
        {
            
            if (ModelState.IsValid)
            {
                var existe = db.GruposDetalhes.Where(gd => gd.GrupoId == gruposDetalhes.GrupoId && gd.UserId == gruposDetalhes.UserId).FirstOrDefault();

                if (existe == null)
                {
                    db.GruposDetalhes.Add(gruposDetalhes);
                    db.SaveChanges();
                    return RedirectToAction(string.Format("Details/{0}", gruposDetalhes.GrupoId));
                }

                ModelState.AddModelError(string.Empty, "Aluno já matriculado");    
            }

            ViewBag.UserId = new SelectList(db.Usuarios.Where(u => u.Estudante).OrderBy(u => u.Nome).ThenBy(u => u.Sobrenome), "UserId", "NomeCompleto", gruposDetalhes.UserId);

            return View(gruposDetalhes);
        }

            // GET: Grupos
            public ActionResult Index()
        {
            var grupos = db.Grupos.Include(g => g.Professor);
            return View(grupos.ToList());
        }

        // GET: Grupos/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Grupos grupos = db.Grupos.Find(id);
            if (grupos == null)
            {
                return HttpNotFound();
            }
            
            return View(grupos);
        }

        // GET: Grupos/Create
        public ActionResult Create()
        {
            ViewBag.UserId = new SelectList(db.Usuarios.Where(u => u.Professor).OrderBy(u => u.Nome).ThenBy(u => u.Sobrenome), "UserId", "NomeCompleto");
            return View();
        }

        // POST: Grupos/Create
        // Para se proteger de mais ataques, ative as propriedades específicas a que você quer se conectar. Para 
        // obter mais detalhes, consulte https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "GrupoId,Descricao,UserId")] Grupos grupos)
        {
            if (ModelState.IsValid)
            {
                db.Grupos.Add(grupos);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.UserId = new SelectList(db.Usuarios.Where(u => u.Professor).OrderBy(u => u.Nome).ThenBy(u => u.Sobrenome), "UserId", "NomeCompleto", grupos.UserId);
            return View(grupos);
        }

        // GET: Grupos/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Grupos grupos = db.Grupos.Find(id);
            if (grupos == null)
            {
                return HttpNotFound();
            }
            ViewBag.UserId = new SelectList(db.Usuarios.Where(u => u.Professor).OrderBy(u => u.Nome).ThenBy(u => u.Sobrenome), "UserId", "NomeCompleto", grupos.GrupoId);
            return View(grupos);
        }

        // POST: Grupos/Edit/5
        // Para se proteger de mais ataques, ative as propriedades específicas a que você quer se conectar. Para 
        // obter mais detalhes, consulte https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "GrupoId,Descricao,UserId")] Grupos grupos)
        {
            if (ModelState.IsValid)
            {
                db.Entry(grupos).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.UserId = new SelectList(db.Usuarios, "UserId", "UserName", grupos.UserId);
            return View(grupos);
        }

        // GET: Grupos/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Grupos grupos = db.Grupos.Find(id);
            if (grupos == null)
            {
                return HttpNotFound();
            }
            return View(grupos);
        }

        // POST: Grupos/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Grupos grupos = db.Grupos.Find(id);
            db.Grupos.Remove(grupos);
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
