<%@ Page Language="C#" MasterPageFile="~/hello/Admin.master" AutoEventWireup="true" CodeFile="ProductImport.aspx.cs" Inherits="hello_Default"  %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .thongsosp
        {
        	width:794px;
        	height:450px;
        	border-top:1px solid #e99765;                    	
        	border-right:1px solid #e99765; 
        	border-left:1px solid #e99765;                      	
        	border-bottom:1px solid #e99765;                    	
        	float:left;        	
        	background-color:White;
        	}                
        .textbox
        {
        	width:180px;
        	height:25px;
        	}      
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="margin-bottom:20px;margin-top:5px;">
        <br />
        <asp:Label ID="Label1" runat="server" Text=">>Nhập thông tin sản phẩm" 
        Font-Bold="True" Font-Size="Large" ForeColor="#CC0000"></asp:Label>
    </div>
    <table class="thongsosp">   
        <tr>
            <td style="height:10px;"></td>
        </tr>     
        <tr>            
            <td>&nbsp;&nbsp;&nbsp; Tên sản phẩm:</td>
            <td>
                <asp:TextBox ID="txtTenSP" runat="server" Width="285px" Height="25px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;&nbsp;&nbsp;
                Đường dẫn ảnh:</td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" CssClass="textbox" />
            </td>
            <td>
                Khuyến mại:</td>
            <td>
                <asp:TextBox ID="txtKhuyenMai" runat="server" CssClass="textbox"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;&nbsp;&nbsp;
                Giá:</td>
            <td>
                <asp:TextBox ID="txtGia" runat="server" CssClass="textbox"></asp:TextBox>
            </td>
            <td>
                Số lượng:</td>
            <td>
                <asp:TextBox ID="txtSL" runat="server" CssClass="textbox"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;&nbsp;&nbsp;
                Nhà sản xuất:</td>
            <td>
                <asp:DropDownList ID="ddlNSX" runat="server" CssClass="textbox"
                    DataSourceID="SqlDataSource1" DataTextField="Manufacturer" 
                    DataValueField="Manufacturer">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT DISTINCT [Manufacturer] FROM [tbProduct]"></asp:SqlDataSource>
            </td>
            <td>
                Bộ vi sử lý:</td>
            <td>
                <asp:TextBox ID="txtBVSL" runat="server" CssClass="textbox"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;&nbsp;&nbsp;
                RAM:</td>
            <td>
                <asp:TextBox ID="txtRam" runat="server" CssClass="textbox"></asp:TextBox>
            </td>
            <td>
                Ổ cứng:</td>
            <td>
                <asp:TextBox ID="txtOcung" runat="server" CssClass="textbox"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;&nbsp;&nbsp;
                Hệ điều hành:</td>
            <td>
                <asp:TextBox ID="txtHDH" runat="server" CssClass="textbox"></asp:TextBox>
            </td>
            <td>
                Màn hình:</td>
            <td>
                <asp:TextBox ID="txtManHinh" runat="server" CssClass="textbox"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;&nbsp;&nbsp;
                Camera:</td>
            <td>
                <asp:TextBox ID="txtCamera" runat="server"  CssClass="textbox"></asp:TextBox>
            </td>
            <td>
                Card đồ họa:</td>
            <td>
                <asp:TextBox ID="txtCard" runat="server" CssClass="textbox"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;&nbsp;&nbsp;
                Pin:</td>
            <td>
                <asp:TextBox ID="txtPin" runat="server" CssClass="textbox"></asp:TextBox>
            </td>
            <td>
                Khối lượng máy:</td>
            <td>
                <asp:TextBox ID="txtKhoiLuong" runat="server" CssClass="textbox"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;&nbsp;&nbsp;
                Xuất sứ:</td>
            <td>
                <asp:TextBox ID="txtXuatSu" runat="server" CssClass="textbox"></asp:TextBox>
            </td>
            <td>
                Bảo hành:</td>
            <td>
                <asp:TextBox ID="txtBaoHanh" runat="server" CssClass="textbox"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="height:10px;"></td>
        </tr>  
        <tr>
            <td colspan="4" style="text-align:center">
                <asp:Button ID="btLuu" runat="server" Text="Lưu thông tin" Height="31px" 
                    Width="129px" onclick="btLuu_Click" />
            </td>
        </tr>
    </table>
</asp:Content>

