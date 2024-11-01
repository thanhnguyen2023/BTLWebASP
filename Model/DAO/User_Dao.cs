using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


using Model.Entity_Framework;

namespace Model.DAO
{
    public class User_Dao
    {
        ThucPhamChucNangDbContext db = null;
        public User_Dao() 
        {
            db = new ThucPhamChucNangDbContext();
        }
        public KhachHang getItem(string email)
        {
            return db.KhachHangs.FirstOrDefault(x => x.Email == email);
        }
        public List<KhachHang> getlist()
        {
            return db.KhachHangs.ToList();
        }
        public KhachHang Add(KhachHang User)
        {
            db.KhachHangs.Add(User);
            db.SaveChanges();
            return User;
        }
        public KhachHang Update(KhachHang User)
        {
            var us = db.KhachHangs.FirstOrDefault(x=>x.MaKH==User.MaKH);
            us.MatKhau = User.MatKhau;
            us.HoTen = User.HoTen;
            us.Email = User.Email;
            us.SoDienThoai = User.SoDienThoai;
            us.DiaChi = User.DiaChi;
            us.NgayDangKy = User.NgayDangKy;
            db.SaveChanges();
            return us;
        }
        public int Login(string email, string Pass)
        {
            var user = db.KhachHangs.FirstOrDefault(x => x.Email == email);
            if (user == null)
            {
                return -2; //Email khong ton tai
            }
            else
            {
                if (user.MatKhau == Pass )
                {
                    return 1; // Dang nhap thanh cong
                }
                else
                {
                    return -2; // Sai mat khau
                }
            }

        }
    }
}
