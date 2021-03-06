<%@ Page Language="C#" MasterPageFile="~/hello/Admin.master" AutoEventWireup="true" CodeFile="NewsImport.aspx.cs" Inherits="hello_Default"  %>

<%@ Register assembly="FredCK.FCKeditorV2" namespace="FredCK.FCKeditorV2" tagprefix="FCKeditorV2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   
    
    <style type="text/css">
        .style1
        {
            width: 87px;
        }
        .thongsosp
        {
        	width:794px;        	
        	border-top:1px solid #e99765;                    	
        	border-right:1px solid #e99765; 
        	border-left:1px solid #e99765;                      	
        	border-bottom:1px solid #e99765;                    	
        	float:left;        	
        	background-color:White;
        	}
    </style>
   
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div style="margin-bottom:20px;margin-top:5px;">
         <br />
         <asp:Label ID="Label1" runat="server" Text=">>Đăng tin" 
        Font-Bold="True" Font-Size="Large" ForeColor="#CC0000"></asp:Label>
    </div>
    <table class="thongsosp">
    <tr>
        <td style="height:10px;"></td>
    </tr> 
    <tr>
        <td class="style1">
            &nbsp;Loại tin:</td>
        <td>
            <asp:DropDownList ID="DropDownList1" runat="server" 
                DataSourceID="SqlDataSource1" DataTextField="CategoriesName" 
                 Width="140px" Height="20px">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT * FROM [tbNewsCategories]"></asp:SqlDataSource>
        </td>
    </tr>   
    <tr>
        <td class="style1">
            Tiêu đề tin:</td>
        <td>
            <asp:TextBox ID="txtTieuDe" runat="server" Width="290px" Height="24px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style1">
            Ảnh tiêu đề:</td>
        <td>
            <asp:FileUpload ID="FileUpload1" runat="server" Width="290px" Height="24px" />
        </td>
    </tr>
    <tr>
        <td class="style1">
            Mô tả:</td>
        <td>
            <FCKeditorV2:FCKeditor ID="FCKMota" runat="server" BasePath="~/FCKeditor/" 
                ToolbarSet="EditorSimple" Height="150px" 
               >
            </FCKeditorV2:FCKeditor>
        </td>
    </tr>
    <tr>
        <td class="style1">
            Nội dung:</td>
        <td>
            <FCKeditorV2:FCKeditor ID="FCKNoiDung" runat="server" BasePath="~/FCKeditor/" 
                ToolbarSet="hmweb" Height="300px">
            </FCKeditorV2:FCKeditor>
        </td>
    </tr>
    <tr>
        <td class="style1">
            Ngày đăng:</td>
        <td>
            Ngày
            <asp:DropDownList ID="ddlDay" runat="server" Height="24px" Width="50px">
                <asp:ListItem>--</asp:ListItem>
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
                <asp:ListItem>6</asp:ListItem>
                <asp:ListItem>7</asp:ListItem>
                <asp:ListItem>8</asp:ListItem>
                <asp:ListItem>9</asp:ListItem>
                <asp:ListItem>10</asp:ListItem>
                <asp:ListItem>11</asp:ListItem>
                <asp:ListItem>12</asp:ListItem>
                <asp:ListItem>13</asp:ListItem>
                <asp:ListItem>14</asp:ListItem>
                <asp:ListItem>15</asp:ListItem>
                <asp:ListItem>16</asp:ListItem>
                <asp:ListItem>17</asp:ListItem>
                <asp:ListItem>18</asp:ListItem>
                <asp:ListItem>19</asp:ListItem>
                <asp:ListItem>20</asp:ListItem>
                <asp:ListItem>21</asp:ListItem>
                <asp:ListItem>22</asp:ListItem>
                <asp:ListItem>23</asp:ListItem>
                <asp:ListItem>24</asp:ListItem>
                <asp:ListItem>25</asp:ListItem>
                <asp:ListItem>26</asp:ListItem>
                <asp:ListItem>27</asp:ListItem>
                <asp:ListItem>28</asp:ListItem>
                <asp:ListItem>29</asp:ListItem>
                <asp:ListItem>30</asp:ListItem>
                <asp:ListItem>31</asp:ListItem>
            </asp:DropDownList>
&nbsp;
            Tháng
            <asp:DropDownList ID="ddlMonth" runat="server" Height="24px" Width="50px">
                <asp:ListItem>--</asp:ListItem>
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
                <asp:ListItem>6</asp:ListItem>
                <asp:ListItem>7</asp:ListItem>
                <asp:ListItem>8</asp:ListItem>
                <asp:ListItem>9</asp:ListItem>
                <asp:ListItem>10</asp:ListItem>
                <asp:ListItem>11</asp:ListItem>
                <asp:ListItem>12</asp:ListItem>
            </asp:DropDownList>
&nbsp;&nbsp;
            Năm
            <asp:DropDownList ID="ddlYear" runat="server" Height="24px" Width="50px">
                <asp:ListItem>--</asp:ListItem>
                <asp:ListItem>2010</asp:ListItem>
                <asp:ListItem>2011</asp:ListItem>
                <asp:ListItem>2012</asp:ListItem>
                <asp:ListItem>2013</asp:ListItem>
                <asp:ListItem>2014</asp:ListItem>
                <asp:ListItem>2015</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td style="height:4px;"></td>
    </tr>
    <tr>
        <td class="style1">
            Người đăng:</td>
        <td>
            <asp:TextBox ID="txtNguoiDang" runat="server" Width="290px" Height="24px"></asp:TextBox>
        </td>
    </tr>
    
    <tr>
        <td style="height:20px;"></td>
    </tr>
    <tr>
        <td colspan="2" style="text-align:center;">
            <asp:Button ID="btLuu" runat="server" Text="Đăng tin" Width="75px" Height="29px" 
                onclick="btLuu_Click1" />
        </td>
    </tr>
    <tr>
        <td style="height:10px;"></td>
    </tr>
</table>
</asp:Content>

