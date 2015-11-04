<%@ Page Language="C#" AutoEventWireup="true" CodeFile="dept_statistics.aspx.cs" Inherits="dept_statistics" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body background="Images/admin.jpg">
    <form id="form1" runat="server">
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        <asp:Button ID="Button10" runat="server" BackColor="#CCA400" BorderColor="White" 
            BorderStyle="Outset" BorderWidth="5px" Font-Bold="True" 
            Font-Names="Arial Black" Font-Size="Large" Height="35px" 
            onclick="Button7_Click" style="margin-left: 6px" Text="Print Faculty Details" 
            Width="242px" Visible="False" />
        </p>
    <p>
        <asp:Button ID="Button11" runat="server" BackColor="#CCA400" BorderColor="White" 
            BorderStyle="Outset" BorderWidth="5px" Font-Bold="True" 
            Font-Names="Arial Black" Font-Size="Large" Height="35px" 
            onclick="Button7_Click" style="margin-left: 6px" Text="Print Test Details" 
            Width="243px" />
        </p>
    <p>
        <asp:Button ID="Button7" runat="server" BackColor="#CCA400" BorderColor="White" 
            BorderStyle="Outset" BorderWidth="5px" Font-Bold="True" 
            Font-Names="Arial Black" Font-Size="Large" Height="35px" 
            onclick="Button7_Click" style="margin-left: 6px" Text="Print Subject Details" 
            Width="243px" />
        </p>
    <p>
        &nbsp;</p>
    </form>
    </body>
</html>
