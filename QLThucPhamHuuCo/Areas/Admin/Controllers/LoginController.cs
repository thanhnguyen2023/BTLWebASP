using QLThucPhamHuuCo.Areas.Admin.Model;
using QLThucPhamHuuCo.Commons;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace QLThucPhamHuuCo.Areas.Admin.Controllers
{
    public class LoginController : Controller
    {
        // GET: Admin/Login
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult Login(LoginModel model)
        {
            if (ModelState.IsValid)
            {
                var dao = new User_Dao();
                var result = dao.Login(model.Email, model.MatKhau);
                if (result == 1)
                {
                    var user = dao.getItem(model.Email);
                    var session = new UserLogin();
                    session.Email = user.Email;
                    session.UserId = user.MaKH;

                }
            }    
        }
    }
}