<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin_home.aspx.cs" Inherits="admin_home" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        #form1
        {
            
            margin-left: 42px;
            height: 681px;
            width: 1224px;
            margin-top: 0px;
        }
        
    </style>
</head>
<body background="Images/admin.jpg">
    <form id="form1" runat="server">
    <div style="color: #FFFFFF">
    
    </div>
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" 
        Font-Names="Arial Black" Font-Size="XX-Large" ForeColor="#CCA400" 
        Text="Welcome"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="True" 
        Font-Names="Arial Black" Font-Size="XX-Large" ForeColor="#CCA400" 
        Text="admin name"></asp:Label>
&nbsp;<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:onlineConnectionString %>" 
        SelectCommand="SELECT [name] FROM [administrator]"></asp:SqlDataSource>
    <asp:Menu ID="Menu1" runat="server" Font-Bold="False" Font-Italic="False" 
        Font-Names="Arial Black" Font-Size="XX-Large" ForeColor="#CCA400" 
        Height="508px" style="margin-left: 441px" Width="323px" 
        onmenuitemclick="Menu1_MenuItemClick">
        <DynamicHoverStyle BackColor="Black" BorderColor="White" BorderStyle="Outset" 
            BorderWidth="3px" />
        <DynamicMenuItemStyle BackColor="White" BorderColor="White" 
            BorderStyle="Outset" BorderWidth="3px" />
        <Items>
            <asp:MenuItem Text="Student Details" Value="Student Details">
                <asp:MenuItem NavigateUrl="~/register_student.aspx" 
                    Text="Register/Update Students" Value="Register/Update Students">
                </asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/view_del_student.aspx" Text="View/Delete Students" 
                    Value="View/Delete Students"></asp:MenuItem>
            </asp:MenuItem>
            <asp:MenuItem Text="Faculty Details" Value="Faculty Details">
                <asp:MenuItem NavigateUrl="~/register_faculty.aspx" 
                    Text="Register/Update Faculty" Value="Register/Update Faculty">
                </asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/view_del_faculty.aspx" Text="View/Delete Faculty" 
                    Value="View/Delete Faculty"></asp:MenuItem>
            </asp:MenuItem>
            <asp:MenuItem Text="Test Details" Value="Test Details">
                <asp:MenuItem NavigateUrl="~/ins_upd_test.aspx" Text="Add/Update Test" 
                    Value="Add/Update Test"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/view_del_test.aspx" Text="View/Delete Tests" 
                    Value="View/Delete Tests"></asp:MenuItem>
            </asp:MenuItem>
            <asp:MenuItem Text="Subject Details" Value="Subject Details">
                <asp:MenuItem NavigateUrl="~/ins_upd_sub.aspx" Text="Add/Update Subject" 
                    Value="Add/Update Subject"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/view_del_sub.aspx" Text="View/Delete Subjects" 
                    Value="View/Delete Subjects"></asp:MenuItem>
            </asp:MenuItem>
            <asp:MenuItem NavigateUrl="~/about.aspx" Text="Help" Value="Help">
            </asp:MenuItem>
            <asp:MenuItem NavigateUrl="~/Default.aspx" Text="Logout" Value="Logout">
            </asp:MenuItem>
        </Items>
    </asp:Menu>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <br />
    </form>
</body>
</html>
