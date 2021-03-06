<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Search.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
    <script src="Css/jquery.min.js" type="text/javascript"></script>
       
    <link href="Css/Default.css" rel="stylesheet" type="text/css" />

    <script src="Css/System_Tooltip.js" type="text/javascript"></script>
    <style type="text/css">
    .a:hover
    {
    	color:Red;
    	}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server"> 
    <asp:Label ID="lbThongBao" runat="server" Visible="false" ForeColor="Red"></asp:Label>                          
        <asp:DataList ID="DataList1" runat="server"
        RepeatColumns="3" Width="100%" onitemcommand="DataList1_ItemCommand">
        <ItemTemplate>                                          
        <div class="border">
        <div style="padding:10px;width:90%">
           <%--Header--%>
                <div style="width:100%;height:40px;">                    
                    <asp:LinkButton ID="lbtProductName" runat="server" Text='<%# Eval("ProductName") %>'
                        PostBackUrl='<%# "ProductDetails.aspx?ProductID="+ Eval("ProductID") %>' 
                        Font-Bold="True" Font-Size="Medium" 
                        Font-Underline="True" ForeColor="#0066FF"></asp:LinkButton>
                </div>
                <div style="width:100%; height:190px;">                                        
                    <img src='<%# Eval("ImageURL") %>' onmouseover="showtip('<div class=\'Title\'><%# Eval("ProductName") %></div><%# Eval("Microprocessor") %> RAM: <%# Eval("Memory") %> Ổ cứng:<%# Eval("HardDrive") %> Hệ điều hành:<%# Eval("OS") %> <%# Eval("Display") %> Camera:<%# Eval("Camera") %> Card đồ họa:<%# Eval("GraphicsCard") %> Pin:<%# Eval("Pin") %>cell Khối lượng máy:<%# Eval("Volume") %>kg Xuất sứ:<%# Eval("Origin") %> <%# Eval("Promotion") %>');" onmouseout="hidetip();" width="200px" />
                </div>
                <div>
                    <table style="table-layout:fixed">
                        <colgroup>
                            <col style="width: 130px; text-align: right;" />
                            <tr>
                                <td rowspan="2">
                                    <asp:Label ID="lbPrice" runat="server" ForeColor="Black" 
                                        Text='<%# Eval("Price") %>' />
                                    VNĐ</td>
                                <td>                                                                                                          
                                    <asp:LinkButton ID="LinkButton1" runat="server" CssClass="a"
                                        PostBackUrl='<%# "ProductDetails.aspx?ProductID=" + Eval("ProductID") %>'>Chi 
                                    tiết &gt;&gt;</asp:LinkButton>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:ImageButton ID="ImageButton2" runat="server" 
                                        ImageUrl="~/Image/iconMuaHang.gif" 
                                        ToolTip="Thêm vào giỏ hàng của bạn" CommandName="GioHang" />
                                </td>
                            </tr>
                        </colgroup>
                    </table>
                </div>            
        </div>                                          
        </div>                                                  
        </ItemTemplate>
    </asp:DataList>    
    <asp:DataList ID="DataList2" runat="server" RepeatColumns="3"
        Width="100%">
        <ItemTemplate>
        <div class="border">
        <div style="padding:10px;width:90%">
        <div style="width:100%;height:40px;">
            <asp:LinkButton ID="LinkButton3" runat="server" 
            Text='<%# Eval("Parameter") %>' Font-Bold="True" Font-Size="Medium" 
            Font-Underline="True" ForeColor="#0066FF"></asp:LinkButton>
        </div>
        <div style="width:100%;height:190px;">                    
                    <%--<asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("ImageURL") %>' Width="90%" />--%>
                    <img alt="hello" src='<%# Eval("ImageURL") %>' onmouseover="showtip('<div class=\'Title\'><%# Eval("Parameter") %></div><%# Eval("Parameter") %> Nhà sản xuất: <%# Eval("Manufacturer") %> Giá:<%# Eval ("Price") %>VNĐ Bảo hành: <%# Eval("Warranty") %> ');" onmouseout="hidetip();" width="90%"  />
        </div>
        <div>
            <table>
                <colgroup>
                    <col style="width: 130px; text-align: right;" />
                    <tr>
                        <td rowspan="2">
                            <asp:Label ID="Label1" runat="server" ForeColor="Black" 
                                Text='<%# Eval("Price") %>' />
                            VNĐ</td>
                        <td>
                            <asp:LinkButton ID="LinkButton1" runat="server" 
                                PostBackUrl='<%# "ComponentDetails.aspx?ComponentDetailsID=" + Eval("ComponentDetailsID") %>'>Chi tiết&gt;&gt;</asp:LinkButton>
                            </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:ImageButton ID="ImageButton2" runat="server" 
                                ImageUrl="~/Image/iconMuaHang.gif" PostBackUrl="~/Cart.aspx" />
                        </td>
                    </tr>
                </colgroup>
             </table>                
        </div> 
        </div>
        </div>
        </ItemTemplate>
    </asp:DataList>              
    
    <div style="height:25px ; width:736px; padding-left:10px; margin-bottom:10px; padding-top:7px; border:solid 1px Gray;  background-image:none;">
        Đây là trang thứ: 
        <asp:Label ID="lbBanTin" runat="server" Text="1" ForeColor="#CC0000"></asp:Label>
        &nbsp;trên tổng số 
        <asp:Label ID="lbSobantintrongtrang" runat="server"
            ForeColor="#CC0000"></asp:Label>&nbsp;trang&nbsp;&nbsp;&nbsp;&nbsp; Tổng số bản tin 
        là: <asp:Label ID="lbTongsobantin" runat="server" Text="lbTongsobantin" 
            ForeColor="#CC0000"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="lkbPreview" runat="server" Font-Underline="False" 
            onclick="lkbPreview_Click">&lt;&lt;Lùi</asp:LinkButton>
        &nbsp;&nbsp;<asp:LinkButton ID="lkbNext" runat="server" Font-Underline="False" 
            onclick="lkbNext_Click">Tiếp&gt;&gt;</asp:LinkButton>
    </div>  
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [tbProduct] ORDER BY [Price] DESC">        
    </asp:SqlDataSource>
    </asp:Content>

