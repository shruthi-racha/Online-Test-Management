<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ins_upd_att.aspx.cs" Inherits="ins_upd_att" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #Text1
        {
            width: 190px;
            margin-left: 57px;
        }
        #Text3
        {
            width: 191px;
            margin-left: 17px;
        }
        #Text7
        {
            width: 195px;
            margin-left: 131px;
        }
        #Text2
        {
            width: 190px;
            margin-left: 0px;
        }
        </style>

    <script language="javascript" type="text/javascript">
// <!CDATA[

        function Text1_onclick() {

        }

// ]]>
    </script>
</head>
<body background="Images/faculty.jpg">
    <form id="form1" runat="server">
    <div>
    
    <div style="margin-left: 70px">
    
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
        <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Italic="True" 
        Font-Names="Segoe Script" Font-Size="X-Large" ForeColor="#006600" 
            Text="For Insert enter details and press Insert"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
    <asp:Label ID="Label13" runat="server" Font-Bold="True" Font-Italic="True" 
        Font-Names="Segoe Script" Font-Size="X-Large" ForeColor="#006600" 
            Text="Enter usn and press display to view attendance"></asp:Label>
        &nbsp;<br />
        <asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Italic="True" 
        Font-Names="Segoe Script" Font-Size="X-Large" ForeColor="#006600" 
            Text="Modify attendance and press update to submit"></asp:Label>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            
        <br />
    
    </div>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <p style="margin-left: 158px">
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" 
        Font-Names="Segoe Script" Font-Size="XX-Large" ForeColor="#006600" 
        Text="USN"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList1" runat="server" 
            DataSourceID="SqlDataSource1" DataTextField="usn" DataValueField="usn" 
            Height="28px" style="margin-left: 50px" Width="178px">
        </asp:DropDownList>
        <br />
    <br />
    <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Italic="True" 
        Font-Names="Segoe Script" Font-Size="XX-Large" ForeColor="#006600" 
        Text="Atttendance"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server" Height="26px" 
            style="margin-left: 0px" Width="175px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
            ControlToValidate="TextBox2" ErrorMessage="Invalid attendance" 
            ValidationExpression="1?[0-9]?[0-9]"></asp:RegularExpressionValidator>
        <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label15" runat="server" ForeColor="Red" 
            Text="Enter attendance in percentage"></asp:Label>
    </p>
        <p style="margin-left: 158px">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label14" runat="server" ForeColor="Red" Text="Label" 
                Visible="False"></asp:Label>
&nbsp;</p>
    <p style="margin-left: 117px">
    &nbsp;
    <br />
    <br />
    <br />
        &nbsp;
    <asp:Button ID="Button2" runat="server" BackColor="#006600" BorderColor="White" 
        BorderStyle="Outset" BorderWidth="7px" Font-Bold="True" Font-Names="Arial" 
        Font-Size="Large" ForeColor="Black" onclick="Button1_Click" Text="Insert" 
        style="margin-left: 0px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button5" runat="server" BackColor="#006600" BorderColor="White" 
        BorderStyle="Outset" BorderWidth="7px" Font-Bold="True" Font-Names="Arial" 
        Font-Size="Large" ForeColor="Black" onclick="Button2_Click" Text="Update" 
        style="margin-left: 30px" Width="87px" Enabled="False" />
    &nbsp;<asp:Button ID="Button6" runat="server" BackColor="#006600" BorderColor="White" 
        BorderStyle="Outset" BorderWidth="7px" Font-Bold="True" Font-Names="Arial" 
        Font-Size="Large" ForeColor="Black" onclick="Button3_Click" Text="Display" 
        style="margin-left: 50px" Width="92px" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button3" runat="server" BackColor="#006600" BorderColor="White" 
        BorderStyle="Outset" BorderWidth="7px" Font-Bold="True" Font-Names="Arial" 
        Font-Size="Large" ForeColor="Black" onclick="Button4_Click" 
        PostBackUrl="~/ins_upd_att.aspx" Text="Reset" style="margin-left: 0px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
    <asp:Button ID="Button4" runat="server" BackColor="#006600" BorderColor="White" 
        BorderStyle="Outset" BorderWidth="7px" Font-Bold="True" Font-Names="Arial" 
        Font-Size="Large" ForeColor="Black" onclick="Button1_Click" 
        PostBackUrl="~/Default.aspx" Text="Logout" Width="86px" />
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    </p>
    <p style="margin-left: 158px">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:ImageButton ID="ImageButton1" runat="server" BorderColor="White" 
        BorderStyle="Outset" BorderWidth="7px" Height="26px" 
        ImageUrl="~/Images/green_back.png" style="margin-left: 59px; margin-bottom: 0px" 
        Width="70px" onclick="ImageButton1_Click" 
        PostBackUrl="~/faculty_home.aspx" />
    </p>
    
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:onlineConnectionString %>" 
        SelectCommand="SELECT [usn] FROM [student]"></asp:SqlDataSource>
    </form>
</body>
</html>
