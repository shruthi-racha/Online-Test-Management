<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin_login.aspx.cs" Inherits="admin_login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        #form1
        {
            margin-left: 154px;
            height: 624px;
            width: 1068px;
        }
        #Text1
        {
            height: 27px;
            width: 148px;
            margin-left: 4px;
        }
        #Password1
        {
            height: 25px;
            width: 150px;
            margin-left: 0px;
        }
    </style>

    <script language="javascript" type="text/javascript">
// <!CDATA[

        function Text1_onclick() {

        }

        function Password1_onclick() {

        }

// ]]>
    </script>
</head>
<body style="background-image:url('Images/login_black.jpg');" text="#ffffff" background="Images/login_black.jpg">
    <form id="form1" runat="server">
    <p style="margin-left: 0px">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;
        <font style="font-style: oblique; font-weight: bold; font-size: x-large; color: #FFFFFF; font-family: 'Arial Black'"> 
        Administrator Login </font>
    </p>
    <p style="margin-left: 389px">
        <img alt="" src="Images/lock.jpg" 
            
            style="width: 192px; height: 189px; margin-left: 0px; margin-top: 0px; margin-bottom: 0px;" /><asp:SqlDataSource 
            ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [administrator]"></asp:SqlDataSource>
    </p>
    <p style="margin-left: 325px; font-size: x-large; font-style: italic; color: #FFFFFF; height: 39px; width: 339px;">
        &nbsp;&nbsp;&nbsp; Please Enter Required Details</p>
    <p style="margin-left: 335px; font-size: x-large; font-style: italic; color: #FFFFFF; height: 39px; width: 322px;">
        <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
    </p>
    <p style="margin-left: 357px; font-size: x-large; font-style: italic; color: #FFFFFF; height: 29px; width: 551px;">
        Username&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" Height="25px" Width="137px" 
            ontextchanged="TextBox1_TextChanged1" style="margin-left: 3px"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
            ControlToValidate="TextBox1" ErrorMessage="Invalid name" Font-Size="Medium" 
            ValidationExpression="[A-Z]*[a-z]*[ ]?[A-Z]*[a-z]*"></asp:RegularExpressionValidator>
    </p>
    <p style="margin-left: 358px; font-size: x-large; font-style: italic; color: #FFFFFF; width: 389px; height: 45px;">
        Password&nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Height="23px" 
            Width="135px" ontextchanged="TextBox2_TextChanged"></asp:TextBox>
    </p>
<p style="margin-left: 399px; font-size: x-large; font-style: italic; color: #FFFFFF; width: 389px; height: 27px;">
        &nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" BackColor="Black" 
            BorderColor="#666666" Font-Bold="True" Font-Names="Arial Black" 
            Font-Size="Medium" ForeColor="White" onclick="Button1_Click" 
            style="margin-left: 19px" Text="Submit" 
            BorderStyle="Outset" BorderWidth="5px" Height="36px" Width="98px" />
</p>
<asp:LinkButton ID="LinkButton1" runat="server" BorderColor="#999999" 
    BorderStyle="Outset" BorderWidth="4px" Font-Bold="True" 
    Font-Names="Arial Black" Font-Size="Medium" ForeColor="White" 
    onclick="LinkButton1_Click2" PostBackUrl="~/Default.aspx" 
    style="margin-bottom: 0px">Home</asp:LinkButton>
<asp:LinkButton ID="LinkButton2" runat="server" BorderColor="#999999" 
    BorderStyle="Outset" BorderWidth="4px" Font-Bold="True" 
    Font-Names="Arial Black" ForeColor="White" onclick="LinkButton2_Click" 
    PostBackUrl="~/about.aspx">About</asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</form>
</body>
</html>
