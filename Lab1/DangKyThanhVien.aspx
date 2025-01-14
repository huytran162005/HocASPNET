<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DangKyThanhVien.aspx.cs" Inherits="Lab1.DangKyThanhVien" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <title></title>
    <style type="text/css">
    </style>
</head>
<body>
    <div class="container w-75">
    <form id="form1" runat="server">
        
            <table cellpadding="4" cellspacing="0" class="container">
                <tr>
                    <td class="bg-info" style="text-align: center; color: #FF0000; font-size: x-large;font-weight: bold;" colspan="3">Hồ Sơ Đăng Ký</td>

                </tr>
                <tr>
                    <td style="text-align: center; color: blue; background-color: violet; font-size: large;" colspan="2"><strong>Thông Tin Đăng Nhập</strong></td>
                    <td style="text-align: center; color: blue; background-color: violet; font-size: larger;"><strong>Hồ Sơ Khách Hàng</strong></td>
                </tr>
                <tr>
                    <td class="auto-style4">Tên Đăng Nhập</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txtTenDn" runat="server" CssClass="form-control" MaxLength="16"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvTendn" runat="server" ErrorMessage="Tên Đăng Nhập Không Được Rỗng" ControlToValidate="txtTenDn" ForeColor="Red" Display="Dynamic">(*)</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revTendn" runat="server" ErrorMessage="Tên Đăng Nhập Không Hợp Lệ" ValidationExpression="[\d|\w|!|&|_]{8}[\d|\w|!|&|_]+" ControlToValidate="txtTenDn" ForeColor="Red" Display="Dynamic">(*)</asp:RegularExpressionValidator>
                    </td>
                    <td style="vertical-align: top;" rowspan="12">
                        <asp:Label ID="lbKetQua" runat="server" ForeColor="#CC00FF"></asp:Label>
                        <br />
                        <asp:ValidationSummary ID="vsbangloi" runat="server" HeaderText="Danh Sách Lỗi" ShowMessageBox="True" ForeColor="Red" />
                    </td>
                </tr>
                <tr>
                    <td>Mật Khẩu</td>
                    <td>
                        <asp:TextBox ID="txtMatKhau" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvMatKhau" runat="server" ErrorMessage="Mật Khẩu Không Được Rỗng" ControlToValidate="txtMatKhau" ForeColor="Red">(*)</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Nhập Lại Mật Khẩu</td>
                    <td>
                        <asp:TextBox ID="txtNhapLai" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
                        <asp:CompareValidator ID="cvNhapLai" runat="server" ControlToCompare="txtMatKhau" ControlToValidate="txtNhapLai" Display="Dynamic" ForeColor="Red">(*)</asp:CompareValidator>
                        <asp:RequiredFieldValidator ID="rfvNhapLai" runat="server" Display="Dynamic" ErrorMessage="Mật Khẩu Nhập Lại Không Được Rỗng" ControlToValidate="txtNhapLai" ForeColor="Red">(*)</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center; color: blue; background-color: violet; font-size: larger;" colspan="2"><strong>Thông Tin Cá Nhân</strong></td>
                </tr>
                <tr>
                    <td>Họ Tên Khách Hàng</td>
                    <td>
                        <asp:TextBox ID="txtHoTen" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvHoTen" runat="server" ErrorMessage="Họ tên không được rỗng" ControlToValidate="txtHoTen" ForeColor="#FF0066">(*)</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Ngày Sinh</td>
                    <td>
                        <div class="d-flex">
                            <asp:DropDownList ID="ddlNgay" runat="server" CssClass="form-select">
                            </asp:DropDownList>
                            /<asp:RequiredFieldValidator ID="rfvNgay" runat="server" ErrorMessage="Chưa chọn ngày sinh" ControlToValidate="ddlNgay" ForeColor="#FF0066">(*)</asp:RequiredFieldValidator>
                            <asp:DropDownList ID="ddlThang" runat="server" CssClass="form-select">
                            </asp:DropDownList>
                            /<asp:RequiredFieldValidator ID="rfvThang" runat="server" ErrorMessage="Chưa chọn tháng" ControlToValidate="ddlThang" ForeColor="#FF0066">(*)</asp:RequiredFieldValidator>
                            <asp:DropDownList ID="ddlNam" runat="server" CssClass="form-select">
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="rfvNam" runat="server" ErrorMessage="Chưa chọn năm sinh" ControlToValidate="ddlNam" ForeColor="#FF0066">(*)</asp:RequiredFieldValidator>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>Email</td>
                    <td>
                        <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" CssClass="form-control"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email không hợp lệ" ForeColor="#FF3300" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">(*)</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>Thu Nhập</td>
                    <td>
                        <asp:TextBox ID="txtThuNhap" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RangeValidator ID="rvThunhap" runat="server" ErrorMessage="Thu nhập từ 1.000.000 đến 50.000.000" MaximumValue="50000000" MinimumValue="100000" Type="Integer" ControlToValidate="txtThuNhap" ForeColor="#FF3300">(*)</asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td>Giới Tính</td>
                    <td>
                        <asp:CheckBox ID="ckGT" runat="server" CssClass="form-check" Text="Nam" />
                    </td>
                </tr>
                <tr>
                    <td>Địa Chỉ</td>
                    <td>
                        <asp:TextBox ID="txtDiaChi" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="3"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">Điện Thoại</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txtDienThoai" runat="server" CssClass="form-control"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center" colspan="2">
                        <asp:Button ID="butDangky" runat="server" Text="Đăng Ký" OnClick="butDangky_Click" style="height: 41px" />
                    </td>
                </tr>
            </table>
        </form>
        </div>
    
</body>
</html>
