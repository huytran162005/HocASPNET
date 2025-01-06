using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab1
{
    public partial class DangKyThongTin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!Page.IsPostBack)
            {
                KhoiTaoDuLieu();
            }
        }
        private void KhoiTaoDuLieu()
        {
            ddlTrinhDo.Items.Add("Trung Cấp");
            ddlTrinhDo.Items.Add("Cao Đẳng");
            ddlTrinhDo.Items.Add("Đại học");
            ddlTrinhDo.Items.Add("Sau đại học");

            lstNgheNghiep.Items.Add("Công nhân");
            lstNgheNghiep.Items.Add("Kỹ sư");
            lstNgheNghiep.Items.Add("Lập trình viên");
            lstNgheNghiep.Items.Add("Kế toán viên");
            lstNgheNghiep.Items.Add("Bác sĩ");

            cklSoThich.Items.Add("Xem phim");
            cklSoThich.Items.Add("Chơi game");
            cklSoThich.Items.Add("Thể thao");
            cklSoThich.Items.Add("Mua sắm");
        }

        protected void btGui_Click(object sender , EventArgs e)
        {
            string kq = "<h2 class='text-center alert alert-info h4 w-100' colspan='2'>KẾT QUẢ ĐĂNG KÝ</h2>";
            kq += "<ul>";
            kq += "<li>Họ tên: <b> " + txtHoTen.Text + "</b>";
            kq += "<li>Ngày Sinh: <b>" + txtNgaySinh.Text + "</b></li>";
            if (rdnam.Checked)
            {
                kq += "<li>Giới Tính: <b>" + rdnam.Text + "</b></li>";

            }
            else
            {
                kq += "<li>Giới Tính: <b>" + rdNu.Text + "</b></li>";

            }
            kq += "<li>Trình Độ: <b>" + ddlTrinhDo.SelectedItem.Text + "</b></li>";
            kq += "<li>Nghề Nghiệp: <b>" + lstNgheNghiep.SelectedItem.Text + "</b></li>";

            if (fHinh.HasFile)
            {
                // Đường dẫn vật lý trên server
                string path = Server.MapPath("~/Upload");

                // Kiểm tra thư mục đã tồn tại chưa, nếu chưa thì tạo mới
                if (!Directory.Exists(path))
                {
                    Directory.CreateDirectory(path);
                }

                // Lấy tên tệp và lưu nó vào thư mục
                string filename = Path.GetFileName(fHinh.FileName);
                string fullPath = Path.Combine(path, filename);
                fHinh.SaveAs(fullPath);

                // Thêm đường dẫn hình ảnh vào kết quả
                kq += "<li>Ảnh: <img src='/Upload/" + filename + "' alt='Hình ảnh' width='175' /></li>";
            }

            // Hiển thị sở thích
            kq += "<li>Sở thích: ";
            foreach (ListItem item in cklSoThich.Items)
            {
                if (item.Selected)
                {
                    kq += item.Text + " ; ";
                }
            }
            kq += "</li>";


            kq += "</ul>";
            lbKetQua.Text = kq;
          

        }


    }
}