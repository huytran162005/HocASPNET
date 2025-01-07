<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DonDatHang.aspx.cs" Inherits="Lab1.DonDatHang" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<link href="Content/bootstrap.min.css" rel="stylesheet" />
<head runat="server">
    <title></title>
</head>
<body>
    <div class="container w-75">
        <form id="form1" runat="server">
            <table cellspacing="4" align="center">
                <tr>
                    <td colspan="2" class="text-center h3 alert alert-info">Đơn Đặt Hàng</td>
                </tr>
                <tr>
                    <td>Khách Hàng: </td>
                    <td>
                        <asp:TextBox ID="txtKhachHang" runat="server" CssClass="form-control"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Địa chỉ: </td>
                    <td>
                        <asp:TextBox ID="txtDiaChi" runat="server" CssClass="form-control"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Mã số thuế: </td>
                    <td>
                        <asp:TextBox ID="txtMST" runat="server" CssClass="form-control"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Chọn các loại bánh sau:
            
                    </td>
                    <td>Danh sách bánh được đặt: 
            
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:DropDownList ID="ddlBanh" runat="server" CssClass="form-select"></asp:DropDownList></td>

                    <td>
                        <asp:ListBox ID="lstBanh" runat="server" SelectionMode="Multiple"></asp:ListBox></td>
                </tr>
                <tr>
                    <td>Số lượng<asp:TextBox ID="txtSoLuong" runat="server"></asp:TextBox>cái</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td align="center">
                        <asp:Button ID="btThem" runat="server" Text=">" OnClick="btThem_Click" />
                    </td>
                    <td>
                        <asp:ImageButton ID="btXoa" runat="server" ImageUrl="~/Images/delete.gif" OnClick="btXoa_Click"/>
                    </td>
                </tr>


                <tr>
                    <td colspan="2" class="text-center h3 alert alert-info">
                        <asp:Button ID="btInDonDatHang" runat="server" Text="IN ĐƠN ĐẶT HÀNG" Font-Bold="False" BackColor="#99CCFF" ForeColor="Red" OnClick="btInDonHang"/></td>

                </tr>
                <tr>
                    <td colspan ="2">
                        <asp:Label ID="lbHoadon" runat="server" Text=""></asp:Label></td>
                    
                </tr>

            </table>
        </form>
    </div>

</body>
</html>
