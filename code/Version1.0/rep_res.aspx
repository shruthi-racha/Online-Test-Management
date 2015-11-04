<%@ Page Language="C#" AutoEventWireup="true" CodeFile="rep_res.aspx.cs" Inherits="rep_res" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body background="Images/faculty.jpg">
    <form id="form1" runat="server">
    <div>
    
        <br />
    <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Italic="True" 
        Font-Names="Segoe Script" Font-Size="XX-Large" ForeColor="#006600" 
            Text="Select Subject which you want to see the report"></asp:Label>
        <br />
    
    </div>
    <asp:DropDownList ID="DropDownList1" runat="server" BackColor="#006600" 
        Font-Names="Arial" Font-Size="Large" Height="31px" 
        onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
        style="margin-left: 355px" Width="138px" DataSourceID="SqlDataSource1" 
        DataTextField="name" DataValueField="testcode">
    </asp:DropDownList>
    &nbsp;
    <asp:Button ID="Button5" runat="server" BackColor="#006600" BorderColor="White" 
        BorderStyle="Outset" BorderWidth="4px" Font-Bold="True" Font-Names="Arial" 
        Font-Size="Large" ForeColor="Black" onclick="Button1_Click" Text="ok" 
        Width="62px" Height="31px" 
            style="margin-left: 27px; margin-bottom: 0px" />
    <br />
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="testcode,usn,usn1,testcode1" DataSourceID="SqlDataSource2" 
        Font-Size="Large" ForeColor="White" style="margin-left: 71px" 
        Visible="False" AllowPaging="True">
        <Columns>
            <asp:BoundField DataField="marks" HeaderText="marks" SortExpression="marks" />
            <asp:BoundField DataField="evaluated" HeaderText="evaluated" 
                SortExpression="evaluated" />
            <asp:BoundField DataField="testcode" HeaderText="testcode" ReadOnly="True" 
                SortExpression="testcode" />
            <asp:BoundField DataField="usn" HeaderText="usn" SortExpression="usn" 
                ReadOnly="True" />
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            <asp:BoundField DataField="usn1" HeaderText="usn1" SortExpression="usn1" 
                ReadOnly="True" />
            <asp:BoundField DataField="did" HeaderText="did" SortExpression="did" />
            <asp:BoundField DataField="batch" HeaderText="batch" SortExpression="batch" />
            <asp:BoundField DataField="login" HeaderText="login" SortExpression="login" />
            <asp:BoundField DataField="password" HeaderText="password" 
                SortExpression="password" />
            <asp:BoundField DataField="aid" HeaderText="aid" SortExpression="aid" />
            <asp:BoundField DataField="testcode1" HeaderText="testcode1" ReadOnly="True" 
                SortExpression="testcode1" />
            <asp:BoundField DataField="fid" HeaderText="fid" SortExpression="fid" />
            <asp:BoundField DataField="sid" HeaderText="sid" SortExpression="sid" />
        </Columns>
    </asp:GridView>
    <br />
    <br />
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:onlineConnectionString %>" 
        SelectCommand="SELECT * FROM result INNER JOIN student ON result.usn = student.usn INNER JOIN test ON result.testcode = test.testcode where test.testcode=@testcode">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="testcode" 
                PropertyName="SelectedValue" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:onlineConnectionString %>" 
        
        SelectCommand="SELECT * FROM subject INNER JOIN test ON subject.sid = test.sid INNER JOIN faculty ON subject.fid = faculty.fid AND test.fid = faculty.fid where faculty.fid=@fid">
        <SelectParameters>
            <asp:SessionParameter Name="fid" SessionField="fid" />
        </SelectParameters>
    </asp:SqlDataSource>
        <br />
        <asp:ImageButton ID="ImageButton1" runat="server" BorderColor="White" 
            BorderStyle="Outset" BorderWidth="7px" Height="24px" 
            ImageUrl="~/Images/green_back.png" style="margin-left: 362px" Width="80px" 
            PostBackUrl="~/faculty_home.aspx" onclick="ImageButton1_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
    <asp:Button ID="Button4" runat="server" BackColor="#006600" BorderColor="White" 
        BorderStyle="Outset" BorderWidth="7px" Font-Bold="True" Font-Names="Arial" 
        Font-Size="Large" ForeColor="Black" onclick="Button1_Click" 
        PostBackUrl="~/Default.aspx" Text="Logout" Width="95px" Height="39px" 
            style="margin-left: 362px; margin-bottom: 0px" />
    </form>
</body>
</html>
