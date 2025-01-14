using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab1
{
    public partial class DangKyThanhVien : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                KhoiTao();
            }
        }
        protected void KhoiTao()
        {
            ddlNgay.Items.Add(new ListItem("--chọn ngày--", ""));
            for (int i = 1; i <= 31; i++)
            {
                ddlNgay.Items.Add(new ListItem(i.ToString(), i.ToString()));
            }
            ddlThang.Items.Add(new ListItem("--chọn tháng--", ""));
            for (int i = 1; i <= 12; i++)
            {
                ddlThang.Items.Add(new ListItem(i.ToString(), i.ToString()));
            }
            ddlNam.Items.Add(new ListItem("--chọn năm--", ""));
            for (int i = 2010; i >= 1950 ; i--)
            {
                ddlNam.Items.Add(new ListItem(i.ToString(), i.ToString()));
            }
        }

        protected void butDangky_Click(object sender, EventArgs e)
        {
            string kq = "<ul>";
            kq += $"<li> Họ tên khách hàng: <em>{txtHoTen.Text}</em>";
            kq += $"<li> Tên đăng nhập: <em>{txtTenDn.Text}</em>";
            kq += $"<li> Mật khẩu: <em>{txtMatKhau.Text}</em>";
            kq += $"<li> Ngày sinh: <em>{ddlNgay.Text}/{ddlThang.Text}/{ddlNam.Text}</em>";
            string gioitinh = ckGT.Checked == true ? "<em>Nam</em>" : "<em>Nữ</em>";
            kq += $"<li> Giới tính: {gioitinh}";
            kq += $"<li> Email: <em>{txtEmail.Text}</em>";
            kq += $"<li> Thu Nhập: <em>{txtThuNhap.Text}</em>";
            kq += $"<li> Địa chỉ: <em>{txtDiaChi.Text}</em>";
            kq += $"<li> Điện thoại: <em>{txtDienThoai.Text}</em>";
            kq += "</ul>";
            lbKetQua.Text = kq;

        }
    }
}