<%@ Page Language="C#" AutoEventWireup="true" CodeFile="register_student.aspx.cs" Inherits="register_student" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1
        {
            width: 800px;
            margin-left: 317px;
            margin-top: 47px;
        }
        #Text6
        {
            width: 173px;
            margin-left: 13px;
        }
        #Password1
        {
            width: 172px;
            margin-left: 15px;
        }
        #Text4
        {
            width: 174px;
            margin-left: 21px;
        }
        #Text1
        {
            width: 190px;
        }
        #Text3
        {
            width: 191px;
            margin-left: 6px;
        }
        #Text5
        {
            width: 192px;
            margin-left: 3px;
        }
        #Text7
        {
            width: 195px;
            margin-left: 8px;
        }
        #Text2
        {
            width: 176px;
            margin-left: 21px;
        }
    </style>
</head>
<body background="Images/admin.jpg">
    <form id="form1" runat="server" enableviewstate="True">
    <div>
    
        &nbsp;&nbsp;&nbsp;&nbsp;1
    <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Italic="True" 
        Font-Names="Segoe Script" Font-Size="X-Large" ForeColor="#CCA400" 
            Text="For Insert enter details and press Insert"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Italic="True" 
        Font-Names="Segoe Script" Font-Size="X-Large" ForeColor="#CCA400" 
            Text="Enter usn and press display to view details"></asp:Label>
        &nbsp;<br />
&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;<asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Italic="True" 
        Font-Names="Segoe Script" Font-Size="X-Large" ForeColor="#CCA400" 
            Text="Modify required fields and press update to submit"></asp:Label>
        <br />
        &nbsp;
        <br />
    
    </div>
    &nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" 
        Font-Names="Segoe Script" Font-Size="XX-Large" ForeColor="#CCA400" Text="Name"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:TextBox ID="TextBox1" runat="server" 
        Height="25px" style="margin-left: 62px" Width="185px" 
        ontextchanged="TextBox1_TextChanged"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;
    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
        ControlToValidate="TextBox1" ErrorMessage="Invalid name" 
        ValidationExpression="[a-zA-Z\.\'\-_\s]{1,40}"></asp:RegularExpressionValidator>
    &nbsp;&nbsp;&nbsp;<br />
    &nbsp;
    <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Italic="True" 
        Font-Names="Segoe Script" Font-Size="XX-Large" ForeColor="#CCA400" 
        Text="Password"></asp:Label>
    <asp:TextBox ID="TextBox8" runat="server" Height="25px" 
        style="margin-left: 34px" Width="185px"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;
    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
        ControlToValidate="TextBox8" ErrorMessage="Invalid password" 
        ValidationExpression="1rv[0-9][0-9][c][s][0-9][0-9][0-9]"></asp:RegularExpressionValidator>
    <br />
    &nbsp;
    <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Italic="True" 
        Font-Names="Segoe Script" Font-Size="XX-Large" ForeColor="#CCA400" Text="USN"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox2" runat="server" Height="25px" 
        style="margin-left: 78px" Width="184px" 
        ontextchanged="TextBox2_TextChanged"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;&nbsp;<asp:RegularExpressionValidator 
        ID="RegularExpressionValidator1" runat="server" 
        ControlToValidate="TextBox2" ErrorMessage="Invalid USN" 
        ValidationExpression="1RV[0-9][0-9][C][S][0-9][0-9][0-9]"></asp:RegularExpressionValidator>
    &nbsp;&nbsp;&nbsp;<br />
    &nbsp;&nbsp;<asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Italic="True" 
        Font-Names="Segoe Script" Font-Size="XX-Large" ForeColor="#CCA400" Text="Batch"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:DropDownList ID="DropDownList3" runat="server" Height="25px" 
        style="margin-left: 15px" Width="184px">
        <asp:ListItem>A1</asp:ListItem>
        <asp:ListItem>A2</asp:ListItem>
        <asp:ListItem>B1</asp:ListItem>
        <asp:ListItem>B2</asp:ListItem>
    </asp:DropDownList>
    &nbsp;&nbsp;&nbsp;
    <br />
    &nbsp;
    <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Italic="True" 
        Font-Names="Segoe Script" Font-Size="XX-Large" ForeColor="#CCA400" Text="Login"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox3" runat="server" Height="25px" 
        style="margin-left: 74px" Width="185px" 
        ontextchanged="TextBox3_TextChanged"></asp:TextBox>
&nbsp;0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
    &nbsp;&nbsp;<asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="True" 
        Font-Names="Segoe Script" Font-Size="XX-Large" ForeColor="#CCA400" Text="Sem"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:DropDownList ID="DropDownList2" runat="server" Height="26px" 
        onselectedindexchanged="DropDownList2_SelectedIndexChanged" 
        style="margin-left: 68px" Width="188px">
        <asp:ListItem>1</asp:ListItem>
        <asp:ListItem>2</asp:ListItem>
        <asp:ListItem>3</asp:ListItem>
        <asp:ListItem>4</asp:ListItem>
        <asp:ListItem>5</asp:ListItem>
        <asp:ListItem>6</asp:ListItem>
        <asp:ListItem>7</asp:ListItem>
        <asp:ListItem>8</asp:ListItem>
    </asp:DropDownList>
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label10" runat="server" ForeColor="Red" Text="Label" 
        Visible="False"></asp:Label>
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button2" runat="server" BackColor="#B79300" BorderColor="White" 
        BorderStyle="Outset" BorderWidth="7px" Font-Bold="True" Font-Names="Arial" 
        Font-Size="Large" ForeColor="Black" onclick="Button1_Click" Text="Insert" 
        style="margin-left: 0px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button5" runat="server" 
        BackColor="#B79300" BorderColor="White" 
        BorderStyle="Outset" BorderWidth="7px" Font-Bold="True" Font-Names="Arial" 
        Font-Size="Large" ForeColor="Black" onclick="Button5_Click" Text="Update" 
        style="margin-left: 15px" Width="84px" Enabled="False" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button6" runat="server" BackColor="#B79300" BorderColor="White" 
        BorderStyle="Outset" BorderWidth="7px" Font-Bold="True" Font-Names="Arial" 
        Font-Size="Large" ForeColor="Black" onclick="Button2_Click" Text="Display" 
        style="margin-left: 17px" Width="86px" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button3" runat="server" BackColor="#B79300" BorderColor="White" 
        BorderStyle="Outset" BorderWidth="7px" Font-Bold="True" Font-Names="Arial" 
        Font-Size="Large" ForeColor="Black" onclick="Button3_Click" 
        PostBackUrl="~/register_student.aspx" Text="Reset" 
        style="margin-left: 20px" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button4" runat="server" BackColor="#B79300" BorderColor="White" 
        BorderStyle="Outset" BorderWidth="7px" Font-Bold="True" Font-Names="Arial" 
        Font-Size="Large" ForeColor="Black" onclick="Button1_Click" 
        PostBackUrl="~/Default.aspx" Text="Logout" Width="84px" 
        style="margin-left: 0px" />
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:ImageButton ID="ImageButton1" runat="server" BorderColor="White" 
        BorderStyle="Outset" BorderWidth="7px" Height="26px" 
        ImageUrl="~/Images/back.png" style="margin-left: 7px; margin-bottom: 0px" 
        Width="70px" onclick="ImageButton1_Click" 
        PostBackUrl="~/admin_home.aspx" />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:onlineConnectionString %>" 
        SelectCommand="SELECT * FROM [administrator]"></asp:SqlDataSource>
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </form>
</body>
</html>
