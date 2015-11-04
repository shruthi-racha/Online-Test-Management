<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ins_upd_que.aspx.cs" Inherits="ins_ups_que" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #Text1
        {
            width: 392px;
            margin-left: 17px;
            height: 31px;
        }
        #Text2
        {
            width: 130px;
            margin-left: 1px;
            height: 25px;
        }
        #Text3
        {
            width: 130px;
            height: 25px;
            margin-left: 29px;
        }
        #Text4
        {
            width: 130px;
            margin-left: 26px;
            height: 25px;
        }
        #Text5
        {
            width: 130px;
            margin-left: 21px;
            height: 25px;
        }
        #Text6
        {
            height: 25px;
            margin-left: 18px;
            width: 125px;
        }
        #Text7
        {
            height: 25px;
            margin-left: 142px;
            width: 125px;
        }
        #Text8
        {
            height: 25px;
            margin-left: 161px;
            width: 125px;
        }
        </style>

    <script language="javascript" type="text/javascript">
// <!CDATA[



        function Text1_onclick() {

        }

        function Text2_onclick() {

        }

        function Text3_onclick() {

        }

        function Text4_onclick() {

        }

        function Text5_onclick() {

        }

        function Text7_onclick() {

        }

        function Text8_onclick() {

        }

// ]]>
    </script>
</head>
<body background="Images/faculty.jpg">
    <form id="form1" runat="server">
    
    <div style="margin-left: 11px; margin-top: 0px;">
    
        1
    <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Italic="True" 
        Font-Names="Segoe Script" Font-Size="X-Large" ForeColor="#006600" 
            Text="For Insert enter details and press Insert"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        &nbsp;&nbsp;&nbsp;<asp:Label ID="Label19" runat="server" Font-Bold="True" Font-Italic="True" 
        Font-Names="Segoe Script" Font-Size="X-Large" ForeColor="#006600" 
            Text="Enter usn and press display to view details"></asp:Label>
        &nbsp;<br />
&nbsp;&nbsp; 
        <asp:Label ID="Label20" runat="server" Font-Bold="True" Font-Italic="True" 
        Font-Names="Segoe Script" Font-Size="X-Large" ForeColor="#006600" 
            Text="Modify required fields and press update to submit"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            
        <br />
        &nbsp;
        <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Italic="True" 
        Font-Names="Segoe Script" Font-Size="XX-Large" ForeColor="#006600" 
            Text="Enter Question no:"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList1" runat="server" Height="22px" Width="37px">
            <asp:ListItem>1</asp:ListItem>
            <asp:ListItem>2</asp:ListItem>
            <asp:ListItem>3</asp:ListItem>
            <asp:ListItem>4</asp:ListItem>
            <asp:ListItem>5</asp:ListItem>
        </asp:DropDownList>
        <br />
        &nbsp;
        <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Italic="True" 
        Font-Names="Segoe Script" Font-Size="XX-Large" ForeColor="#006600" 
            Text="Enter Question"></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server" Height="27px" 
            ontextchanged="TextBox3_TextChanged" style="margin-left: 23px" Width="363px"></asp:TextBox>
        <br />
    
    </div>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<p 
        style="margin-left: 14px; margin-top: 0px;">
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" 
        Font-Names="Segoe Script" Font-Size="XX-Large" ForeColor="#006600" 
        Text="Option A"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;<asp:TextBox ID="TextBox4" runat="server" Height="26px" Width="133px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label15" runat="server" Font-Bold="True" Font-Italic="True" 
        Font-Names="Segoe Script" Font-Size="XX-Large" ForeColor="#006600" 
        Text="Answer"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox8" runat="server" Height="26px" Width="133px" 
            style="margin-left: 8px"></asp:TextBox>
    &nbsp;&nbsp;
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
            ControlToValidate="TextBox8" ErrorMessage="Invalid option" 
            ValidationExpression="1|2|3|4"></asp:RegularExpressionValidator>
    </p>
    <p style="margin-left: 15px; margin-top: 0px;">
    <asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Italic="True" 
        Font-Names="Segoe Script" Font-Size="XX-Large" ForeColor="#006600" 
        Text="Option B"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox5" 
            runat="server" Height="26px" Width="133px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label16" runat="server" Font-Bold="True" Font-Italic="True" 
        Font-Names="Segoe Script" Font-Size="XX-Large" ForeColor="#006600" 
        Text="Testcode"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList2" runat="server" 
            DataSourceID="SqlDataSource2" DataTextField="testcode" 
            DataValueField="testcode" Height="26px" Width="133px">
        </asp:DropDownList>
    </p>
    <p style="margin-left: 17px; margin-top: 0px;">
    <asp:Label ID="Label13" runat="server" Font-Bold="True" Font-Italic="True" 
        Font-Names="Segoe Script" Font-Size="XX-Large" ForeColor="#006600" 
        Text="Option C"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox6" 
            runat="server" Height="26px" Width="133px"></asp:TextBox>
&nbsp;&nbsp;&nbsp; &nbsp;
    &nbsp;&nbsp;
        </p>
    <p style="margin-left: 19px; margin-top: 0px;">
    <asp:Label ID="Label14" runat="server" Font-Bold="True" Font-Italic="True" 
        Font-Names="Segoe Script" Font-Size="XX-Large" ForeColor="#006600" 
        Text="Option D"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox7" runat="server" Height="26px" 
            style="margin-left: 0px" Width="133px"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label18" runat="server" ForeColor="Red" Text="Label" 
            Visible="False"></asp:Label>
    </p>
    <p style="margin-left: 70px; margin-top: 0px; margin-bottom: 0px;">
    <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button2" runat="server" BackColor="#006600" BorderColor="White" 
        BorderStyle="Outset" BorderWidth="7px" Font-Bold="True" Font-Names="Arial" 
        Font-Size="Large" ForeColor="Black" onclick="Button1_Click" Text="Insert" 
        style="margin-left: 16px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button5" runat="server" BackColor="#006600" BorderColor="White" 
        BorderStyle="Outset" BorderWidth="7px" Font-Bold="True" Font-Names="Arial" 
        Font-Size="Large" ForeColor="Black" onclick="Button2_Click" Text="Update" 
        style="margin-left: 0px" Width="84px" Enabled="False" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;<asp:Button 
            ID="Button6" runat="server" BackColor="#006600" BorderColor="White" 
        BorderStyle="Outset" BorderWidth="7px" Font-Bold="True" Font-Names="Arial" 
        Font-Size="Large" ForeColor="Black" onclick="Button3_Click" Text="Display" 
        style="margin-left: 0px" Width="88px" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
    <asp:Button ID="Button3" runat="server" BackColor="#006600" BorderColor="White" 
        BorderStyle="Outset" BorderWidth="7px" Font-Bold="True" Font-Names="Arial" 
        Font-Size="Large" ForeColor="Black" onclick="Button4_Click" 
        PostBackUrl="~/ins_upd_que.aspx" Text="Reset" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button4" runat="server" BackColor="#006600" BorderColor="White" 
        BorderStyle="Outset" BorderWidth="7px" Font-Bold="True" Font-Names="Arial" 
        Font-Size="Large" ForeColor="Black" onclick="Button1_Click" 
        PostBackUrl="~/Default.aspx" Text="Logout" Width="87px" />
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    </p>
    <p style="margin-left: 158px; margin-top: 0px; margin-bottom: 0px;">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:ImageButton ID="ImageButton1" runat="server" BorderColor="White" 
        BorderStyle="Outset" BorderWidth="7px" Height="26px" 
        ImageUrl="~/Images/green_back.png" style="margin-left: 122px; margin-bottom: 0px" 
        Width="63px" onclick="ImageButton1_Click" 
        PostBackUrl="~/faculty_home.aspx" />
    </p>
    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:onlineConnectionString %>" 
        SelectCommand="SELECT [qno] FROM [question] WHERE ([question] = @question)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList2" Name="question" 
                PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:onlineConnectionString %>" 
        SelectCommand="SELECT [testcode] FROM [test] WHERE ([fid] = @fid)">
        <SelectParameters>
            <asp:SessionParameter Name="fid" SessionField="fid" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    
    </form>
</body>
</html>
