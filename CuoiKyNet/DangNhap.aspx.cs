using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CuoiKyNet
{
    public partial class DangNhap : System.Web.UI.Page
    {
        VemayBayDataContext dc = new VemayBayDataContext();
        public bool kiemtra(string tdn, string mk)
        {
            var q = from nv in dc.NHANVIENs
                    where nv.TenDangNhap == txtTenDN.Text && nv.MatKhau == txtPassword.Text
                    select new
                    {
                        nv.TenDangNhap,
                        nv.MatKhau
                    };
            if (q.Any())
            {
                return true;
            }
            else
            {
                return false;
            }
        }
        public bool phanquyen(string tdn)
        {
            var q = from nv in dc.NHANVIENs
                    where nv.TenDangNhap == txtTenDN.Text && nv.ChucVu == "Quản lý"
                    select nv;
            if (q.Any())
            {
                return true;
            }
            else
            {
                return false;
            }
        }
        public void showMessage(string mess)
        {
            string strBuilder = "<script language='javascript'>alert('" + mess + "')</script>";
            Response.Write(strBuilder);
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnDangNhap_Click(object sender, EventArgs e)
        {
            Session["username"] = txtTenDN.Text;
            if (kiemtra(txtTenDN.Text, txtPassword.Text))
            {
                if (txtPassword.Text == "new")
                {
                    Response.Redirect("DoiMatKhau.aspx");
                }
                else
                {
                    if (phanquyen(txtTenDN.Text))
                    {
                        Response.Redirect("ADThongTinNhanVien.aspx");
                    }
                    else
                    {
                        Response.Redirect("USBanVe.aspx");
                    }
                }
            }
            else
            {
                showMessage("Tên đăng nhập hoặc mật khẩu không đúng. Vui lòng nhập lại!");
            }
        }
    }
}