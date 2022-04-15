﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Electro.Models;
using System.IO;
using System.Net;
using System.Net.Mail;

namespace Electro.Controllers
{
    public class LienHeController : Controller
    {

        // GET: LienHe
        public ActionResult LienHeCH()
        {
            return View();
        }
        [HttpPost]
        public ActionResult LienHeCH(EmailModel model)
        {
            model.To = "saleelectro01@gmail.com";
            using (MailMessage mm = new MailMessage(model.Email, model.To))
            {
                mm.Subject = model.Subject;
                mm.Body = model.Body;
                if (model.Attachment.ContentLength > 0)
                {
                    string fileName = Path.GetFileName(model.Attachment.FileName);
                    mm.Attachments.Add(new Attachment(model.Attachment.InputStream, fileName));
                }
                mm.IsBodyHtml = false;
                using (SmtpClient smtp = new SmtpClient())
                {
                    smtp.Host = "smtp.gmail.com";
                    smtp.EnableSsl = true;
                    NetworkCredential NetworkCred = new NetworkCredential(model.Email, model.Password);
                    smtp.UseDefaultCredentials = true;
                    smtp.Credentials = NetworkCred;
                    smtp.Port = 587;
                    smtp.Send(mm);
                    ViewBag.Message = "Gửi mail thành công";
                }
            }

            return View();
        }
    }
}