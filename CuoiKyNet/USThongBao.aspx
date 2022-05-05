<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="USThongBao.aspx.cs" Inherits="CuoiKyNet.USThongBao" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link rel="stylesheet" href="Style/styleTB.css">
    <link rel="stylesheet" href="Style/styleTT.css"/>
    <link href='https://fonts.googleapis.com/css?family=Quicksand' rel='stylesheet'>
    <table style="width:100%;">
        <tr>
            <td  colspan="3" style=" display:flex; justify-content:center; text-align:center;padding-left:100px; padding-top:50px;">
                <div  style=" border:1px; overflow:auto; width:1020px">
                     <asp:GridView style="text-align:left;" 
                        ID="gwThongBao" runat="server" 
                        AutoGenerateColumns="False" 
                        CellPadding="4"
                        ForeColor="#333333" 
                        Width="100%" 
                        OnSelectedIndexChanged="grvthongbao_SelectedIndexChanged" GridLines="None">
                         <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:CommandField  HeaderText="Chọn" ShowSelectButton="true">
                                <HeaderStyle Font-Names="quicksand" Font-Size="18px" />
                                <ItemStyle Font-Names="quicksand" Font-Size="18px" />
                            </asp:CommandField>
                            <asp:BoundField DataField="MaThongBao" HeaderText="Mã thông báo" >
                                <HeaderStyle Font-Names="quicksand" Font-Size="18px" />
                                <ItemStyle Font-Names="quicksand" Font-Size="18px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="TieuDe" HeaderText=" Tiêu đề" >
                                <HeaderStyle Font-Names="quicksand" Font-Size="18px" />
                                <ItemStyle Font-Names="quicksand" Font-Size="18px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="NoiDung" HeaderText= "Nội dung" >
                                <HeaderStyle Font-Names="quicksand" Font-Size="18px" />
                                <ItemStyle Font-Names="quicksand" Font-Size="18px" />
                            </asp:BoundField>
                        </Columns>
                        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" Wrap="False" HorizontalAlign="Center" />
                        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" Wrap="False" />
                        <RowStyle BackColor="#FFFBD6" Wrap="False" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                        <SortedAscendingCellStyle BackColor="#FDF5AC" />
                        <SortedAscendingHeaderStyle BackColor="#4D0000" />
                        <SortedDescendingCellStyle BackColor="#FCF6C0" />
                        <SortedDescendingHeaderStyle BackColor="#820000" />
                    </asp:GridView>
                </div>
            </td>
        </tr>
        <tr style="display:flex; justify-content:center;">
            <td colspan="3"><asp:Label CssClass="label" ID="lbThongBao" runat="server" Text="Thông báo"/></td>
        </tr>
        <tr>
            <td colspan="3" style=" display:flex; justify-content:center; padding-left:100px;padding-top:20px; padding-bottom:40px">
                <asp:TextBox  CssClass="text" TextMode="MultiLine" ID="txtNoiDung" runat="server" Enabled="False"></asp:TextBox>
            </td>
        </tr>
    </table>

</asp:Content>
