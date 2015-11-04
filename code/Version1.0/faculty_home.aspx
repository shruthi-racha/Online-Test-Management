<%@ Page Language="C#" AutoEventWireup="true" CodeFile="faculty_home.aspx.cs" Inherits="faculty_home" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body background="Images/faculty.jpg">
    <form id="form1" runat="server">
    <div style="margin-left: 0px">
    
    <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" 
        Font-Names="Arial Black" Font-Size="XX-Large" ForeColor="#006600" 
        Text="Welcome"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="True" 
        Font-Names="Arial Black" Font-Size="XX-Large" ForeColor="#006600" 
        Text="faculty name"></asp:Label>
&nbsp;<asp:Menu ID="Menu1" runat="server" Font-Bold="False" Font-Italic="False" 
        Font-Names="Arial Black" Font-Size="XX-Large" ForeColor="#006600" 
        Height="508px" style="margin-left: 181px" Width="100px" 
        onmenuitemclick="Menu1_MenuItemClick">
        <DynamicHoverStyle BackColor="Black" BorderColor="White" BorderStyle="Outset" 
            BorderWidth="3px" />
        <DynamicMenuItemStyle BackColor="White" BorderColor="White" 
            BorderStyle="Outset" BorderWidth="3px" />
        <Items>
            <asp:MenuItem Text="Attendance" Value="Student Details">
                <asp:MenuItem NavigateUrl="~/ins_upd_att.aspx" 
                    Text="Insert/Update Attendance" Value="Insert/Update Attendance">
                </asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/view_del_att.aspx" Text="View/Delete Attendance" 
                    Value="View/Delete Attendance"></asp:MenuItem>
            </asp:MenuItem>
            <asp:MenuItem Text="Questions" Value="Questions">
                <asp:MenuItem NavigateUrl="~/ins_upd_que.aspx" 
                    Text="Insert/Update a Question" Value="Insert/Update a Question">
                </asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/view_del_que.aspx" Text="View/Delete a Question" 
                    Value="View/Delete a Question"></asp:MenuItem>
            </asp:MenuItem>
            <asp:MenuItem Text="Results" 
                Value="Results">
                <asp:MenuItem NavigateUrl="~/upd_res.aspx" Text="Update Result" 
                    Value="Update Result"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/rep_res.aspx" Text="Report" Value="Report">
                </asp:MenuItem>
            </asp:MenuItem>
            <asp:MenuItem NavigateUrl="~/about.aspx" Text="Help" Value="Help">
            </asp:MenuItem>
            <asp:MenuItem NavigateUrl="~/Default.aspx" Text="Logout" Value="Logout">
            </asp:MenuItem>
        </Items>
    </asp:Menu>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:onlineConnectionString %>" 
            SelectCommand="SELECT * FROM [faculty]"></asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
