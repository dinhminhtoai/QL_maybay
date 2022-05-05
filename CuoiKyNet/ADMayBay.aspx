<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="ADMayBay.aspx.cs" Inherits="CuoiKyNet.ADMayBay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link rel="stylesheet" href="Style/styleTT.css"/>
    <link href='https://fonts.googleapis.com/css?family=Quicksand' rel='stylesheet'>
    <p class="header-text"><b>Máy bay</b></p>
    <div style="display: flex; justify-content: center; padding-bottom: 20px;">
        <table >
            <tr>
                <td ><b>Mã máy bay:</b></td>
                <td >
                   <asp:TextBox Enabled="false" CssClass="textbox" ID="txtmamaybay" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td><b>Tên máy bay:</b></td>
                <td >
                    <asp:TextBox CssClass="textbox" ID="txttenmaybay" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td><b>Hãng sản xuất:</b></td>
                <td >
                    <asp:TextBox CssClass="textbox" ID="txthangsanxuat" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td><b>Ghế thương gia:</b></td>
                <td  >
                    <asp:TextBox CssClass="textbox" ID="txtghethuonggia" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td><b>Ghế thường: </b></td>
                <td >
                    <asp:TextBox CssClass="textbox" ID="txtghethuong" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="padding-top:20px">
                    <asp:Button CssClass="button" ID="btnthem" runat="server" Text="Thêm" OnClick="btnthem_Click"/>
                    <asp:Button CssClass="button" ID="btncapnhat" runat="server" Text="Cập nhật" Onclick="btncapnhat_Click" />
                    <asp:Button CssClass="button" ID="btnxoa" runat="server" Text="Xóa" OnClick="btnxoa_Click" />
                    <asp:Button CssClass="button" ID="btnLamTrang" runat="server" Text="Làm trắng" OnClick="btnLamTrang_Click" />
                </td>
            </tr>
        </table>
        <div style="margin-left:20px; margin-right:20px; width: 550px; text-align:center;">
            <div style="padding-bottom:20px;">
                <asp:TextBox CssClass="textbox" ID="txttimkiem" runat="server" placeholder="Tìm kiếm..."></asp:TextBox>
                <asp:Button CssClass="button" ID="btntimkiem" runat="server" Text="Tìm kiếm" OnClick="btntimkiem_Click" BackColor="#FF3300" />
            </div>
            <div style="overflow:auto;">
                <asp:GridView style="text-align:left;" 
                    ID="gwMayBay" runat="server" 
                    AutoGenerateColumns="False" 
                    CellPadding="2"
                    ForeColor="Black" 
                    Width="550px" OnSelectedIndexChanged="gwMayBay_SelectedIndexChanged" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" GridLines="None">
                    <AlternatingRowStyle BackColor="PaleGoldenrod" />
                    <Columns>
                        <asp:CommandField SelectText="Chọn" ShowSelectButton="True" >
                            <HeaderStyle Font-Names="quicksand" Font-Size="18px" />
                            <ItemStyle Font-Names="quicksand" Font-Size="18px" />
                        </asp:CommandField>
                        <asp:BoundField DataField="MaMayBay" HeaderText="Mã Máy Bay" ReadOnly="True" SortExpression="MaMayBay" >
                            <HeaderStyle Font-Names="quicksand" Font-Size="18px" />
                            <ItemStyle Font-Names="quicksand" Font-Size="18px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="TenMayBay" HeaderText="Tên Máy Bay" SortExpression="TenMayBay" >
                            <HeaderStyle Font-Names="quicksand" Font-Size="18px" />
                            <ItemStyle Font-Names="quicksand" Font-Size="18px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="HangSanXuat" HeaderText="Hãng Sản Xuất" SortExpression="HangSanXuat" >
                            <HeaderStyle Font-Names="quicksand" Font-Size="18px" />
                            <ItemStyle Font-Names="quicksand" Font-Size="18px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="SoGheLTG" HeaderText="Ghế Thương Gia" SortExpression="SoGheLTG"  >
                            <HeaderStyle Font-Names="quicksand" Font-Size="18px" />
                            <ItemStyle Font-Names="quicksand" Font-Size="18px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="SoGheLT" HeaderText="Ghế Thường" SortExpression="SoGheLT" >
                            <HeaderStyle Font-Names="quicksand" Font-Size="18px" />
                            <ItemStyle Font-Names="quicksand" Font-Size="18px" />
                        </asp:BoundField>
                    </Columns>
                    <FooterStyle BackColor="Tan" />
                    <HeaderStyle BackColor="Tan" Font-Bold="True" Wrap="False" HorizontalAlign="Center" />
                    <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" Wrap="False" />
                    <RowStyle Wrap="False" />
                    <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                    <SortedAscendingCellStyle BackColor="#FAFAE7" />
                    <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                    <SortedDescendingCellStyle BackColor="#E1DB9C" />
                    <SortedDescendingHeaderStyle BackColor="#C2A47B" />
            </asp:GridView>
            </div>
        </div>
    </div>
</asp:Content>
