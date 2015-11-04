<%@ Page Language="C#" AutoEventWireup="true" CodeFile="register_faculty.aspx.cs" Inherits="register_faculty" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #Text1
        {
            width: 190px;
            margin-left: 44px;
        }
        #Text2
        {
            width: 176px;
            margin-left: 22px;
        }
        #Text3
        {
            width: 191px;
            margin-left: 6px;
        }
        #Text4
        {
            width: 174px;
            margin-left: 21px;
        }
        #Text5
        {
            width: 192px;
            margin-left: 3px;
        }
        #Text6
        {
            width: 173px;
            margin-left: 32px;
            margin-bottom: 0px;
        }
        #Text7
        {
            width: 195px;
            margin-left: 8px;
        }
        #Password1
        {
            width: 193px;
            margin-left: 0px;
        }
        #form1
        {
            width: 1021px;
            margin-left: 294px;
        }
    </style>

    <script language="javascript" type="text/javascript">
// <!CDATA[

        function Text1_onclick() {

        }

        function Text5_onclick() {

        }

        function Password1_onclick() {

        }

        function Text2_onclick() {

        }

        function Text6_onclick() {

        }

// ]]>
    </script>
</head>
<body background="Images/admin.jpg">
    <form id="form1" runat="server">
    <div>
    
    </div>
    &nbsp;1&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Italic="True" 
        Font-Names="Segoe Script" Font-Size="X-Large" ForeColor="#CCA400" 
            Text="For Insert enter details and press Insert"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Italic="True" 
        Font-Names="Segoe Script" Font-Size="X-Large" ForeColor="#CCA400" 
            Text="Enter faculty ID and press display to view details"></asp:Label>
        &nbsp;<br />
&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;<asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Italic="True" 
        Font-Names="Segoe Script" Font-Size="X-Large" ForeColor="#CCA400" 
            Text="Modify required fields and press update to submit"></asp:Label>
        <br />
        &nbsp;
        <br />
    <br />
    &nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" 
        Font-Names="Segoe Script" Font-Size="XX-Large" ForeColor="#CCA400" Text="Name"></asp:Label>
&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:TextBox 
        ID="TextBox1" runat="server" Height="27px" Width="144px" 
        style="margin-left: 48px"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;<asp:RegularExpressionValidator 
        ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox1" 
        ErrorMessage="Invalid name" 
        ValidationExpression="[a-zA-Z\.\'\-_\s]{1,40}"></asp:RegularExpressionValidator>
    &nbsp;&nbsp;&nbsp;
    <br />
    <br />
&nbsp;&nbsp;
    <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Italic="True" 
        Font-Names="Segoe Script" Font-Size="XX-Large" ForeColor="#CCA400" 
        Text="Faculty ID"></asp:Label>
&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;
    <asp:TextBox ID="TextBox4" runat="server" Height="28px" Width="144px" 
        style="margin-left: 0px"></asp:TextBox>
    &nbsp;
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
        ControlToValidate="TextBox4" ErrorMessage="Invalid faculty ID" 
        ValidationExpression="fac[0-9][0-9]"></asp:RegularExpressionValidator>
    <br />
    <br />
    &nbsp;&nbsp;
    <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Italic="True" 
        Font-Names="Segoe Script" Font-Size="XX-Large" ForeColor="#CCA400" Text="Login"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox2" runat="server" Height="29px" 
        style="margin-left: 55px" Width="141px"></asp:TextBox>
&nbsp; 0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
    <br />
    &nbsp;&nbsp;<asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Italic="True" 
        Font-Names="Segoe Script" Font-Size="XX-Large" ForeColor="#CCA400" 
        Text="Password"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
    <asp:TextBox ID="TextBox5" runat="server" Height="29px" 
        style="margin-left: 26px" Width="138px"></asp:TextBox>
    &nbsp;&nbsp;
    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
        ErrorMessage="Invalid password" ValidationExpression="rvcsefac[0-9][0-9]" 
        ControlToValidate="TextBox5"></asp:RegularExpressionValidator>
    <br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label10" runat="server" ForeColor="Red" Text="Label" 
        Visible="False"></asp:Label>
    <br />
    <br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button2" runat="server" BackColor="#B79300" BorderColor="White" 
        BorderStyle="Outset" BorderWidth="7px" Font-Bold="True" Font-Names="Arial" 
        Font-Size="Large" ForeColor="Black" onclick="Button1_Click" Text="Insert" 
        style="margin-left: 5px" />
&nbsp;&nbsp;
    <asp:Button ID="Button5" runat="server" BackColor="#B79300" BorderColor="White" 
        BorderStyle="Outset" BorderWidth="7px" Font-Bold="True" Font-Names="Arial" 
        Font-Size="Large" ForeColor="Black" onclick="Button3_Click" Text="Update" 
        style="margin-left: 30px" Width="89px" Enabled="False" />
    &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:Button ID="Button6" runat="server" BackColor="#B79300" BorderColor="White" 
        BorderStyle="Outset" BorderWidth="7px" Font-Bold="True" Font-Names="Arial" 
        Font-Size="Large" ForeColor="Black" onclick="Button2_Click" Text="Display" 
        style="margin-left: 17px" Width="86px" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
    <asp:Button ID="Button3" runat="server" BackColor="#B79300" BorderColor="White" 
        BorderStyle="Outset" BorderWidth="7px" Font-Bold="True" Font-Names="Arial" 
        Font-Size="Large" ForeColor="Black" onclick="Button4_Click" 
        PostBackUrl="~/register_faculty.aspx" Text="Reset" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button4" runat="server" BackColor="#B79300" BorderColor="White" 
        BorderStyle="Outset" BorderWidth="7px" Font-Bold="True" Font-Names="Arial" 
        Font-Size="Large" ForeColor="Black" onclick="Button1_Click" 
        PostBackUrl="~/Default.aspx" Text="Logout" Width="96px" />
    &nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button7" runat="server" BackColor="#B79300" BorderColor="White" 
        BorderStyle="Outset" BorderWidth="7px" Font-Bold="True" Font-Names="Arial" 
        Font-Size="Large" ForeColor="Black" onclick="Button7_Click" Text="test" 
        Width="96px" Visible="False" />
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:ImageButton ID="ImageButton1" runat="server" BorderColor="White" 
        BorderStyle="Outset" BorderWidth="7px" Height="26px" 
        ImageUrl="~/Images/back.png" style="margin-left: 4px; margin-bottom: 0px" 
        Width="70px" onclick="ImageButton1_Click" 
        PostBackUrl="~/admin_home.aspx" />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </form>
</body>
</html>
