<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ins_upd_sub.aspx.cs" Inherits="add_sub" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        #Text1
        {
            width: 190px;
        }
        #Text2
        {
            width: 176px;
        }
        #Text3
        {
            width: 191px;
            margin-left: 39px;
        }
        #Text4
        {
            width: 174px;
            margin-left: 21px;
        }
        #Text5
        {
            width: 192px;
            margin-left: 31px;
            height: 22px;
        }
        #Text6
        {
            width: 173px;
            margin-left: 13px;
        }
        #Text7
        {
            width: 195px;
            margin-left: 131px;
        }
        #Password1
        {
            width: 172px;
            margin-left: 15px;
        }
        #form1
        {
            width: 871px;
            margin-left: 254px;
        }
        </style>

    <script language="javascript" type="text/javascript">
// <!CDATA[

        function Text7_onclick() {

        }

        function Text5_onclick() {

        }

        function Text3_onclick() {

        }

        function Text1_onclick() {

        }

// ]]>
    </script>
</head>
<body background="Images/admin.jpg">
    <form id="form1" runat="server">
    <div style="margin-left: 70px">
    
        &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Italic="True" 
        Font-Names="Segoe Script" Font-Size="X-Large" ForeColor="#CCA400" 
            Text="For Insert enter details and press Insert"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label13" runat="server" Font-Bold="True" Font-Italic="True" 
        Font-Names="Segoe Script" Font-Size="X-Large" ForeColor="#CCA400" 
            Text="Enter subject ID and press display to view details"></asp:Label>
        &nbsp;<br />
&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;<asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Italic="True" 
        Font-Names="Segoe Script" Font-Size="X-Large" ForeColor="#CCA400" 
            Text="Modify required fields and press update to submit"></asp:Label>
        <br />
        &nbsp;</div>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<p style="margin-left: 158px">
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" 
        Font-Names="Segoe Script" Font-Size="XX-Large" ForeColor="#CCA400" 
        Text="Subject Name"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;<asp:TextBox ID="TextBox3" runat="server" Height="28px" Width="193px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
            ControlToValidate="TextBox3" ErrorMessage="Invalid subject name" 
            ValidationExpression="[a-zA-Z\.\'\-_\s]{1,40}"></asp:RegularExpressionValidator>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;
    <br />
    <br />
    <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Italic="True" 
        Font-Names="Segoe Script" Font-Size="XX-Large" ForeColor="#CCA400" 
        Text="Subject ID"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox4" runat="server" Height="28px" 
            style="margin-left: 25px" Width="193px"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
            ControlToValidate="TextBox4" ErrorMessage="Invalid subject ID" 
            ValidationExpression="sub[0-9][0-9]"></asp:RegularExpressionValidator>
    <br />
    <br />
    <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Italic="True" 
        Font-Names="Segoe Script" Font-Size="XX-Large" ForeColor="#CCA400" 
        Text="FacultyID"></asp:Label>
&nbsp;<asp:DropDownList ID="DropDownList2" runat="server" Height="25px" 
            style="margin-left: 93px" Width="194px" DataSourceID="SqlDataSource1" 
            DataTextField="fid" DataValueField="fid">
        </asp:DropDownList>
&nbsp;0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>
    <p style="margin-left: 158px">
    &nbsp;<asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="True" 
        Font-Names="Segoe Script" Font-Size="XX-Large" ForeColor="#CCA400" 
        Text="Type"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList4" runat="server" style="margin-left: 88px" 
            Width="194px" Height="25px">
            <asp:ListItem>Theory</asp:ListItem>
            <asp:ListItem>Theory and Lab</asp:ListItem>
        </asp:DropDownList>
    <br />
    <br />
    </p>
    <p style="margin-left: 158px">
        <asp:Label ID="Label11" runat="server" ForeColor="Red" Text="Label" 
            Enabled="False"></asp:Label>
    </p>
    <p style="margin-left: 40px">
    <br />
    <br />
        &nbsp;
    <asp:Button ID="Button5" runat="server" BackColor="#B79300" BorderColor="White" 
        BorderStyle="Outset" BorderWidth="7px" Font-Bold="True" Font-Names="Arial" 
        Font-Size="Large" ForeColor="Black" onclick="Button1_Click" 
        Text="Insert" Height="41px" 
            style="margin-left: 57px" Width="77px" />
    
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button2" runat="server" BackColor="#B79300" BorderColor="White" 
        BorderStyle="Outset" BorderWidth="7px" Font-Bold="True" Font-Names="Arial" 
        Font-Size="Large" ForeColor="Black" onclick="Button2_Click" Text="Update" 
        style="margin-left: 26px" Width="83px" Enabled="False" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Button ID="Button6" runat="server" BackColor="#B79300" BorderColor="White" 
        BorderStyle="Outset" BorderWidth="7px" Font-Bold="True" Font-Names="Arial" 
        Font-Size="Large" ForeColor="Black" onclick="Button3_Click" Text="Display" 
        style="margin-left: 17px" Width="86px" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button3" runat="server" BackColor="#B79300" BorderColor="White" 
        BorderStyle="Outset" BorderWidth="7px" Font-Bold="True" Font-Names="Arial" 
        Font-Size="Large" ForeColor="Black" onclick="Button4_Click" 
        PostBackUrl="~/ins_upd_sub.aspx" Text="Reset" style="margin-left: 0px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
    <asp:Button ID="Button4" runat="server" BackColor="#B79300" BorderColor="White" 
        BorderStyle="Outset" BorderWidth="7px" Font-Bold="True" Font-Names="Arial" 
        Font-Size="Large" ForeColor="Black" onclick="Button1_Click" 
        PostBackUrl="~/Default.aspx" Text="Logout" Width="85px" />
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
    <asp:ImageButton ID="ImageButton1" runat="server" BorderColor="White" 
        BorderStyle="Outset" BorderWidth="7px" Height="26px" 
        ImageUrl="~/Images/back.png" style="margin-left: 89px; margin-bottom: 0px" 
        Width="70px" onclick="ImageButton1_Click" 
        PostBackUrl="~/admin_home.aspx" />
    &nbsp;
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:onlineConnectionString %>" 
            SelectCommand="SELECT [fid] FROM [faculty]"></asp:SqlDataSource>
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>
    </form>
       
    </body>
</html>
