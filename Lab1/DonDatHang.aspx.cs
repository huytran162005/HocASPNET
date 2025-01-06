using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab1
{
    public partial class DonDatHang : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                KhoiTaoDuLieu();
            }
        }
        private void KhoiTaoDuLieu()
        {
            ddlBanh.Items.Add("Bánh Mì");
            ddlBanh.Items.Add("Bánh Cuốn");
            ddlBanh.Items.Add("Hot Dog");
            ddlBanh.Items.Add("Hamburger");
        }
        protected void btThem_Click(object sender, EventArgs e)
        {
            try{
                string bThem = ddlBanh.SelectedItem.Text + " (" + txtSoLuong.Text + ")";
                lstBanh.Items.Add(bThem);
            } catch(Exception ex){

            }
            

        }
        protected void btXoa_Click(object sender, ImageClickEventArgs e)
        {
            for (int i = lstBanh.Items.Count - 1;i>=0; i--)
            {
                if (lstBanh.Items[i].Selected)
                {
                    lstBanh.Items.RemoveAt(i);
                }
            }
        }
        protected void btInDonHang(object sender,EventArgs e)
        {
            {

                string kq = "<div class='h3 text-center mt-4'>HOÁ ĐƠN ĐẶT HÀNG</div>";

                kq += "<div class='border p-3'>";

                //thu thập thông tin từ client

                kq += string.Format("Khách hàng: <b> {0} </b> <br>", txtKhachHang.Text);

                kq += string.Format("Địa chỉ: <b> {0} </b> <br>", txtDiaChi.Text);

                kq += string.Format("Mã Số Thuế <b> {0} </b> <br>", txtMST.Text);

                kq += "Đặt các loại bánh sau:";

                kq += "<table class='table table-bordered'>";

                foreach (ListItem item in lstBanh.Items)

                {

                    string[] data = item.Text.Split(new char[] { '(',')' });

                    kq += string.Format("<tr><td>{0}</td><td>{1}</td></tr>", data[0], data[1]);

}

                kq += "</table>";

                kq += "</div>";

                //hồi đáp kết quả (trả về thông tin hoá đơn)

                lbHoadon.Text = kq;

            }
        }
    }
}