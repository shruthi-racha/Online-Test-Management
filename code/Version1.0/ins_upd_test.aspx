<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ins_upd_test.aspx.cs" Inherits="add_test_sub" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        #Text1
        {
            width: 190px;
            margin-left: 73px;
        }
        #Text2
        {
            width: 176px;
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
            margin-left: 19px;
        }
        #Text6
        {
            width: 173px;
            margin-left: 13px;
        }
        #Text7
        {
            width: 195px;
            margin-left: 137px;
        }
        #Password1
        {
            width: 172px;
            margin-left: 15px;
        }
        #Password2
        {
            width: 172px;
            margin-left: 15px;
        }
        #Text8
        {
            width: 195px;
            margin-left: 33px;
        }
        #Text9
        {
            width: 195px;
            margin-left: 27px;
        }
        </style>

    <script language="javascript" type="text/javascript">
// <!CDATA[

        function Text1_onclick() {

        }

        function Text3_onclick() {

        }

        function Text5_onclick() {

        }

        function Text7_onclick() {

        }

        function Text8_onclick() {

        }

        function Text9_onclick() {

        }

// ]]>
    </script>
</head>
<body background="Images/admin.jpg">
    <form id="form1" runat="server">
    <div style="width: 783px; margin-left: 297px">
    
    <div>
    
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Italic="True" 
        Font-Names="Segoe Script" Font-Size="X-Large" ForeColor="#CCA400" 
            Text="For Insert enter details and press Insert"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label13" runat="server" Font-Bold="True" Font-Italic="True" 
        Font-Names="Segoe Script" Font-Size="X-Large" ForeColor="#CCA400" 
            Text="Enter testcode and press display to view details"></asp:Label>
        &nbsp;<br />
&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;<asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Italic="True" 
        Font-Names="Segoe Script" Font-Size="X-Large" ForeColor="#CCA400" 
            Text="Modify required fields and press update to submit"></asp:Label>
        <br />
        &nbsp;
        <br />
    
    </div>
        <p style="margin-left: 112px">
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" 
        Font-Names="Segoe Script" Font-Size="XX-Large" ForeColor="#CCA400" 
            Text="Test code"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;
            <asp:TextBox ID="TextBox2" runat="server" Height="28px" Width="168px"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                ControlToValidate="TextBox2" ErrorMessage="Invalid testcode" 
                ValidationExpression="test[0-9][0-9]"></asp:RegularExpressionValidator>
    <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Italic="True" 
        Font-Names="Segoe Script" Font-Size="XX-Large" ForeColor="#CCA400" 
        Text="Faculty ID"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList1" runat="server" 
                DataSourceID="SqlDataSource2" DataTextField="fid" DataValueField="fid" 
                Height="28px" style="margin-left: 55px" Width="168px">
            </asp:DropDownList>
            <br />
        <br />
    <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Italic="True" 
        Font-Names="Segoe Script" Font-Size="XX-Large" ForeColor="#CCA400" 
        Text="Subject"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList2" runat="server" 
                DataSourceID="SqlDataSource3" DataTextField="sid" DataValueField="sid" 
                Height="28px" style="margin-left: 113px" Width="168px">
            </asp:DropDownList>
        </p>
        <p style="margin-left: 112px">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label11" runat="server" ForeColor="Red" Text="Label" 
                Visible="False"></asp:Label>
        &nbsp;</p>
        <p style="margin-left: 55px">
            <asp:Label ID="Label14" runat="server" Text="Label"></asp:Label>
    <br />
    <br />
            &nbsp;
    <asp:Button ID="Button2" runat="server" BackColor="#B79300" BorderColor="White" 
        BorderStyle="Outset" BorderWidth="7px" Font-Bold="True" Font-Names="Arial" 
        Font-Size="Large" ForeColor="Black" onclick="Button1_Click" Text="Insert" 
        style="margin-left: 0px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button5" runat="server" BackColor="#B79300" BorderColor="White" 
        BorderStyle="Outset" BorderWidth="7px" Font-Bold="True" Font-Names="Arial" 
        Font-Size="Large" ForeColor="Black" onclick="Button3_Click" Text="Update" 
        style="margin-left: 0px" Width="87px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button6" runat="server" BackColor="#B79300" BorderColor="White" 
        BorderStyle="Outset" BorderWidth="7px" Font-Bold="True" Font-Names="Arial" 
        Font-Size="Large" ForeColor="Black" onclick="Button2_Click" Text="Display" 
        style="margin-left: 17px" Width="86px" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button3" runat="server" BackColor="#B79300" BorderColor="White" 
        BorderStyle="Outset" BorderWidth="7px" Font-Bold="True" Font-Names="Arial" 
        Font-Size="Large" ForeColor="Black" onclick="Button4_Click" 
        PostBackUrl="~/ins_upd_test.aspx" Text="Reset" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;<asp:Button ID="Button4" runat="server" 
                BackColor="#B79300" BorderColor="White" 
        BorderStyle="Outset" BorderWidth="7px" Font-Bold="True" Font-Names="Arial" 
        Font-Size="Large" ForeColor="Black" onclick="Button1_Click" 
        PostBackUrl="~/Default.aspx" Text="Logout" Width="91px" />
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:ImageButton ID="ImageButton1" runat="server" BorderColor="White" 
        BorderStyle="Outset" BorderWidth="7px" Height="26px" 
        ImageUrl="~/Images/back.png" style="margin-left: 78px; margin-bottom: 0px" 
        Width="70px" onclick="ImageButton1_Click" 
        PostBackUrl="~/admin_home.aspx" />
    <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:SqlDataSource 
                ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:onlineConnectionString %>" 
                SelectCommand="SELECT * FROM [test]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:onlineConnectionString %>" 
                
                SelectCommand="SELECT *FROM department INNER JOIN faculty ON department.did = faculty.did where department.did ='d1'"></asp:SqlDataSource>
&nbsp;&nbsp;&nbsp;&nbsp;<asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                ConnectionString="<%$ ConnectionStrings:onlineConnectionString %>" 
                SelectCommand="SELECT [sid] FROM [subject]"></asp:SqlDataSource>
        </p>
    </div>
    </form>
</body>
</html>
