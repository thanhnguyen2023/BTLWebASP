using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace QLThucPhamHuuCo.Areas.Admin.Model
{
    public class LoginModel
    {
        [Required(ErrorMessage = "Vui long nhap Email")]
        public string Email { set; get; }
        [Required(ErrorMessage = "Vui long nhap mat khau")]
        public string MatKhau { set; get; }
        public bool RememberMe { set; get; }
    }
}