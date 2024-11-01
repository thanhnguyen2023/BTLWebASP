using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace QLThucPhamHuuCo.Commons
{
    [Serializable]
    public class UserLogin
    {
        public int UserId { set; get; }
        public string HoTen { set; get; }
        public string Email { set; get; }
    }
}