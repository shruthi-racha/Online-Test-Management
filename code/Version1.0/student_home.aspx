<%@ Page Language="C#" AutoEventWireup="true" CodeFile="student_home.aspx.cs" Inherits="student_home" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        #form1
        {
            height: 603px;
            width: 1000px;
            margin-left: 102px;
        }
    </style>
</head>
<body background="Images/student.jpg">
    <form id="form1" runat="server">
    <div style="margin-left: 214px">
    
        <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Italic="True" 
        Font-Names="Segoe Script" Font-Size="XX-Large" ForeColor="#006699" 
            Text="Important Instructions!!!"></asp:Label>
        <br />
    </div>
    <asp:BulletedList ID="BulletedList1" runat="server" Font-Bold="True" 
        Font-Names="Segoe Script" Font-Size="XX-Large" ForeColor="#006699" 
        Height="226px" onclick="BulletedList1_Click" Width="671px">
        <asp:ListItem>Answer all Questions since there is no negative marking</asp:ListItem>
        <asp:ListItem>Select Subject from drop down menu</asp:ListItem>
        <asp:ListItem>Click Next</asp:ListItem>
        <asp:ListItem>Be calm and composed!!!</asp:ListItem>
    </asp:BulletedList>
    <asp:Image ID="Image1" runat="server" Height="108px" 
        ImageUrl="~/Images/allthebest.png" style="margin-left: 348px; margin-top: 0px" 
        Width="71px" />
    <br />
    <br />
    <asp:DropDownList ID="DropDownList1" runat="server" BackColor="#006699" 
        Font-Names="Arial Black" Font-Size="Large" Height="35px" 
        onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
        style="margin-left: 269px; margin-top: 0px; margin-bottom: 0px" 
        Width="222px" DataSourceID="SqlDataSource1" DataTextField="name" 
        DataValueField="testcode">
    </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label10" runat="server" ForeColor="Red" Text="Label" 
        Visible="False"></asp:Label>
    <br />
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button4" runat="server" BackColor="#006699" BorderColor="White" 
        BorderStyle="Outset" BorderWidth="7px" Font-Bold="True" Font-Names="Arial" 
        Font-Size="X-Large" ForeColor="Black" onclick="Button1_Click" 
        PostBackUrl="~/Default.aspx" Text="Logout" Height="42px" 
        style="margin-left: 38px" Width="107px" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button5" runat="server" BackColor="#006699" BorderColor="White" 
        BorderStyle="Outset" BorderWidth="7px" Font-Bold="True" Font-Names="Arial" 
        Font-Size="X-Large" ForeColor="Black" onclick="Button1_Click" Text="Chosen" 
        Height="42px" Width="107px" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button6" runat="server" BackColor="#006699" BorderColor="White" 
        BorderStyle="Outset" BorderWidth="7px" Font-Bold="True" Font-Names="Arial" 
        Font-Size="X-Large" ForeColor="Black" onclick="Button2_Click" Text="Next" 
        Height="42px" Enabled="False" />
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:onlineConnectionString %>" 
        
        SelectCommand="SELECT *FROM subject INNER JOIN test ON subject.sid = test.sid INNER JOIN test_ready ON test.testcode = test_ready.testcode where test_ready.ready=1">
    </asp:SqlDataSource>
    <br />
    <br />
    <br />
    </form>
</body>
</html>
