<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home</title>
</head>

<body style="background-image:url('Images/default.jpg');">

    <form id="form1" runat="server">
    <div style="width: 261px; height: 84px;">
    <div style="width: 629px; text-decoration: blink; font-size: xx-large;"> 
        <br />
        <Marquee direction="left" <Strong 
            
            style="text-decoration:blink; text-transform: capitalize; color: #FFFFFF; font-weight: 200; font-size: xx-large; font-family: 'Arial Black'; height: 200px; width: 1055px; margin-left: 133px;"> <blink> Online Test Management </blink> </Strong></Marquee></font>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
            </div>
        <asp:Menu ID="Menu1" runat="server" BackColor="Silver" 
            DataSourceID="SiteMapDataSource1" DynamicHorizontalOffset="2" 
            Font-Names="Arial Black" Font-Size="Medium" ForeColor="Black" 
            Orientation="Horizontal" StaticDisplayLevels="2" 
            StaticSubMenuIndent="10px" BorderStyle="Groove" BorderWidth="5px" 
            Font-Bold="False" Height="31px" onmenuitemclick="Menu1_MenuItemClick1" 
            style="margin-left: 463px" Width="307px">
            <StaticSelectedStyle BackColor="#5D7B9D" />
            <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
            <DynamicHoverStyle BackColor="#7C6F57" ForeColor="White" />
            <DynamicMenuStyle BackColor="#F7F6F3" />
            <DynamicSelectedStyle BackColor="#5D7B9D" />
            <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
            <StaticHoverStyle BackColor="#7C6F57" ForeColor="White" />
        </asp:Menu>
        <asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" />
    
            <br />
    
            <br />
    
    </div>
    </form>
    <p style="width: 552px; margin-left: 161px">
        <img align="middle" src="Images/start.png" 
            style="width: 552px; height: 363px; right: 50px; margin-left: 222px;" /></p>
</body>
</html>
