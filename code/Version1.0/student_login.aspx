<%@ Page Language="C#" AutoEventWireup="true" CodeFile="student_login.aspx.cs" Inherits="student_login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        #Text1
        {
            height: 23px;
            width: 142px;
            margin-left: 3px;
        }
        #Password1
        {
            height: 21px;
            width: 139px;
            margin-left: 6px;
        }
        #Text2
        {
            height: 22px;
            width: 139px;
            margin-left: 46px;
        }
    </style>
</head>
<body background="Images/login_black.jpg">
    <form id="form1" runat="server" 
    style="font-family: 'Arial Black'; font-size: x-large; font-weight: bold; font-style: italic; color: #FFFFFF">
    <p style="margin-left: 40px">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Student Login<asp:SqlDataSource 
            ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:onlineConnectionString %>" 
            SelectCommand="SELECT * FROM [student]"></asp:SqlDataSource>
        <asp:ImageButton ID="ImageButton1" runat="server" Height="152px" 
            ImageUrl="~/Images/lock.jpg" 
            
            style="margin-left: 526px; margin-top: 0px; margin-bottom: 0px; margin-right: 18px;" 
            Width="151px" Enabled="False" />
    </p>
    <p style="margin-left: 498px; font-family: Arial; font-size: x-large; font-style: italic; font-weight: normal;">
        Please Enter Required Details</p>
    <p style="margin-left: 500px; font-family: Arial; font-size: x-large; font-style: italic; font-weight: normal;">
        <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
    </p>
    <p style="margin-left: 517px; font-family: Arial; font-size: x-large; font-style: italic; font-weight: normal;">
        <asp:Label ID="Label2" runat="server" Text="Username"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" style="margin-left: 24px" 
            Width="141px"></asp:TextBox>
    &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" 
            runat="server" ErrorMessage="Invalid Name" Font-Size="Medium" 
            ValidationExpression="[A-Z]*[a-z]*[ ]?[A-Z]*[a-z]*" 
            ControlToValidate="TextBox1"></asp:RegularExpressionValidator>
    </p>
    <p style="margin-left: 517px; font-family: Arial; font-size: x-large; font-style: italic; font-weight: normal;">
        Password<asp:TextBox ID="TextBox2" runat="server" style="margin-left: 35px" 
            TextMode="Password"></asp:TextBox>
    </p>
    <p style="width: 663px; margin-left: 471px; font-family: Arial; font-size: x-large; font-weight: normal; font-style: italic; height: 33px; margin-top: 0px; margin-bottom: 0px;">
        <asp:Button ID="Button1" runat="server" BackColor="Black" 
            BorderColor="#666666" Font-Bold="True" Font-Names="Arial Black" 
            Font-Size="Medium" ForeColor="White" onclick="Button1_Click" 
            style="margin-left: 141px; margin-top: 34px;" Text="Submit" 
            Font-Underline="True" Height="36px" 
            Width="92px" BorderStyle="Outset" BorderWidth="5px" />
    </p>
    <p style="width: 663px; margin-left: 471px; font-family: Arial; font-size: x-large; font-weight: normal; font-style: italic; height: 33px; margin-top: 0px; margin-bottom: 0px;">
        &nbsp;</p>
    <p style="width: 663px; margin-left: 77px; font-family: Arial; font-size: x-large; font-weight: normal; font-style: italic; height: 33px; margin-top: 0px; margin-bottom: 0px;">
        &nbsp;</p>
    <p style="width: 663px; margin-left: 77px; font-family: Arial; font-size: x-large; font-weight: normal; font-style: italic; height: 33px; margin-top: 0px; margin-bottom: 0px;">
        &nbsp;</p>
    <p style="width: 663px; margin-left: 77px; font-family: Arial; font-size: x-large; font-weight: normal; font-style: italic; height: 33px; margin-top: 0px; margin-bottom: 0px;">
        <asp:LinkButton ID="LinkButton1" runat="server" BorderColor="#999999" 
            BorderStyle="Outset" BorderWidth="4px" Font-Bold="True" Font-Italic="False" 
            Font-Names="Arial Black" Font-Size="Medium" ForeColor="White" 
            PostBackUrl="~/Default.aspx" style="margin-left: 1px">Home</asp:LinkButton>
        <asp:LinkButton ID="LinkButton2" runat="server" BorderColor="#999999" 
            BorderStyle="Outset" BorderWidth="4px" Font-Bold="True" Font-Italic="False" 
            Font-Names="Arial Black" Font-Size="Medium" ForeColor="White" 
            PostBackUrl="~/about.aspx">About</asp:LinkButton>
    </p>
    </form>
</body>
</html>
