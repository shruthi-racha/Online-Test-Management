<%@ Page Language="C#" AutoEventWireup="true" CodeFile="view_res.aspx.cs" Inherits="view_res" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body background="Images/faculty.jpg">
    <form id="form1" runat="server">
    <div style="height: 482px; margin-left: 89px">
    
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Italic="True" 
        Font-Names="Segoe Script" Font-Size="XX-Large" ForeColor="#006600" 
            Text="USN"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList1" runat="server" BackColor="#006600" 
            Font-Size="X-Large" Height="30px" 
            onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
            style="margin-left: 75px" Width="170px">
        </asp:DropDownList>
        <br />
        <br />
        <br />
    <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Italic="True" 
        Font-Names="Segoe Script" Font-Size="XX-Large" ForeColor="#006600" 
            Text="Subject"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList2" runat="server" BackColor="#006600" 
            Font-Size="X-Large" Height="30px" 
            onselectedindexchanged="DropDownList2_SelectedIndexChanged" 
            style="margin-left: 24px" Width="170px">
        </asp:DropDownList>
        <br />
        <br />
        <br />
    <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Italic="True" 
        Font-Names="Segoe Script" Font-Size="XX-Large" ForeColor="#006600" 
            Text="Name"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label13" runat="server" Font-Bold="True" Font-Italic="True" 
        Font-Names="Segoe Script" Font-Size="XX-Large" ForeColor="#006600" 
            Text="'Name'"></asp:Label>
        <br />
        <br />
        <br />
    <asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Italic="True" 
        Font-Names="Segoe Script" Font-Size="XX-Large" ForeColor="#006600" 
            Text="Marks"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label14" runat="server" Font-Bold="True" Font-Italic="True" 
        Font-Names="Segoe Script" Font-Size="XX-Large" ForeColor="#006600" 
            Text="'Marks'"></asp:Label>
        <br />
        <br />
        <br />
        <br />
    <asp:Button ID="Button5" runat="server" BackColor="#006600" BorderColor="White" 
        BorderStyle="Outset" BorderWidth="7px" Font-Bold="True" Font-Names="Arial" 
        Font-Size="Large" ForeColor="Black" onclick="Button1_Click" 
        PostBackUrl="~/Default.aspx" Text="Done" Width="77px" Height="39px" 
            style="margin-left: 101px; margin-bottom: 0px" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button4" runat="server" BackColor="#006600" BorderColor="White" 
        BorderStyle="Outset" BorderWidth="7px" Font-Bold="True" Font-Names="Arial" 
        Font-Size="Large" ForeColor="Black" onclick="Button1_Click" 
        PostBackUrl="~/Default.aspx" Text="Logout" Width="92px" Height="39px" 
            style="margin-left: 5px; margin-bottom: 0px" />
        <br />
        <br />
        <asp:ImageButton ID="ImageButton1" runat="server" BorderColor="White" 
            BorderStyle="Outset" BorderWidth="7px" Height="24px" 
            ImageUrl="~/Images/green_back.png" style="margin-left: 151px" Width="80px" 
            PostBackUrl="~/faculty_home.aspx" onclick="ImageButton1_Click" />
        <br />
    
    </div>
    </form>
</body>
</html>
