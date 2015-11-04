<%@ Page Language="C#" AutoEventWireup="true" CodeFile="upd_res.aspx.cs" Inherits="upd_res" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <script language="javascript" type="text/javascript">
// <!CDATA[

        function Text1_onclick() {

        }

        function Text1_onclick() {

        }

// ]]>
    </script>
    <style type="text/css">
        #Text1
        {
            height: 27px;
            width: 171px;
        }
    </style>
</head>
<body background="Images/faculty.jpg">
    <form id="form1" runat="server">
    <div style="margin-left: 126px">
    
        <br />
        <br />
        <br />
    <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Italic="True" 
        Font-Names="Segoe Script" Font-Size="XX-Large" ForeColor="#006600" 
            Text="USN"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList1" runat="server" BackColor="#006600" 
            Font-Size="Large" Height="30px" 
            onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
            style="margin-left: 75px" Width="170px" DataSourceID="SqlDataSource1" 
            DataTextField="usn" DataValueField="usn">
        </asp:DropDownList>
        <br />
        <br />
        <br />
    <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Italic="True" 
        Font-Names="Segoe Script" Font-Size="XX-Large" ForeColor="#006600" 
            Text="Subject    "></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList2" runat="server" BackColor="#006600" 
            Font-Size="Large" Height="30px" 
            onselectedindexchanged="DropDownList2_SelectedIndexChanged" 
            style="margin-left: 14px" Width="170px" DataSourceID="SqlDataSource2" 
            DataTextField="name" DataValueField="sid">
        </asp:DropDownList>
        <br />
        <br />
        <br />
    <asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Italic="True" 
        Font-Names="Segoe Script" Font-Size="XX-Large" ForeColor="#006600" 
            Text="Marks"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" Height="32px" Width="169px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
            ControlToValidate="TextBox1" ErrorMessage="Invalid marks" 
            ValidationExpression="[0-9]?[0-9]"></asp:RegularExpressionValidator>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label13" runat="server" Enabled="False" ForeColor="Red" 
            Text="Label"></asp:Label>
        <br />
        <br />
        <br />
        &nbsp;<asp:Button ID="Button5" runat="server" 
            Text="Update" BackColor="#006600" BorderColor="White" BorderStyle="Outset" 
            BorderWidth="7px" Font-Names="Arial" Font-Size="Large" ForeColor="Black" 
            Height="39px" onclick="Button5_Click" style="margin-left: 0px" />
        &nbsp;&nbsp;
        <asp:Button ID="Button6" runat="server" 
            Text="Display" BackColor="#006600" BorderColor="White" BorderStyle="Outset" 
            BorderWidth="7px" Font-Names="Arial" Font-Size="Large" ForeColor="Black" 
            Height="39px" onclick="Button6_Click" style="margin-left: 30px" />
        <asp:Button ID="Button4" runat="server" BackColor="#006600" BorderColor="White" 
        BorderStyle="Outset" BorderWidth="7px" Font-Bold="True" Font-Names="Arial" 
        Font-Size="Large" ForeColor="Black" onclick="Button1_Click" 
        PostBackUrl="~/Default.aspx" Text="Logout" Width="95px" Height="39px" 
            style="margin-left: 48px; margin-bottom: 0px" />
        <br />
        <br />
        <br />
        <asp:ImageButton ID="ImageButton1" runat="server" BorderColor="White" 
            BorderStyle="Outset" BorderWidth="7px" Height="24px" 
            ImageUrl="~/Images/green_back.png" style="margin-left: 140px" Width="69px" 
            PostBackUrl="~/faculty_home.aspx" onclick="ImageButton1_Click" />
        <br />
    
    &nbsp;</div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:onlineConnectionString %>" 
        SelectCommand="SELECT [usn] FROM [student]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:onlineConnectionString %>" 
        SelectCommand="SELECT [name], [sid] FROM [subject] WHERE ([fid] = @fid)">
        <SelectParameters>
            <asp:SessionParameter Name="fid" SessionField="fid" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    </form>
</body>
</html>
