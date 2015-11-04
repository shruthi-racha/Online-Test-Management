<%@ Page Language="C#" AutoEventWireup="true" CodeFile="about.aspx.cs" Inherits="about" %>

<%@ Register assembly="CrystalDecisions.Web, Version=10.5.3700.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body background="Images/home.jpg">
    <form id="form1" runat="server">
    <br />
    <br />
    <br />
    <br />
        <Marquee direction="left" <Strong 
            
            
        
        style="text-decoration:blink; text-transform: capitalize; color: blue; font-weight: 200; font-size: xx-large; font-family: 'Arial Black'; height: 59px; width: 571px; margin-left: 13px; margin-bottom: 0px;"> <blink> Online Test Management </blink> </Strong></Marquee><br />
    <br />
    <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/online-test.jpg" 
        style="margin-left: 204px" Width="172px" />
    <br />
    <br />
    <br />
    <br />
&nbsp;<asp:Menu ID="Menu1" runat="server" BackColor="Black" Font-Size="X-Large" 
        ForeColor="Blue" Height="136px" 
        style="margin-left: 0px; margin-right: 0px; margin-top: 0px;" Width="85px">
        <StaticMenuStyle BackColor="Black" />
        <StaticSelectedStyle BackColor="White" />
        <StaticMenuItemStyle BackColor="Black" />
        <DynamicHoverStyle BackColor="Black" BorderColor="Blue" BorderStyle="Dotted" 
            ForeColor="Blue" />
        <DynamicMenuStyle BackColor="White" />
        <DynamicSelectedStyle BackColor="White" />
        <DynamicMenuItemStyle BackColor="Black" BorderColor="Blue" 
            BorderStyle="Dotted" />
        <StaticHoverStyle BackColor="White" />
        <Items>
            <asp:MenuItem NavigateUrl="~/Default.aspx" Text="Home" 
                Value="New Item"></asp:MenuItem>
            <asp:MenuItem Selectable="False" Text="Contacts Us" Value="New Item">
                <asp:MenuItem Selectable="False" Text="By Mail: otm@rvce.edu.in" 
                    Value="By Mail: otm@rvce.edu.in"></asp:MenuItem>
                <asp:MenuItem Selectable="False" Text="By Phone:+91-9876543210" 
                    Value="By Phone:+91-9876543210"></asp:MenuItem>
                <asp:MenuItem Selectable="False" 
                    Text="Postal Address: #5 Prestige Towers,Richmond Road,Bangalore." 
                    Value="Postal Address: #5 Prestige Towers,Richmond Road,Bangalore.">
                </asp:MenuItem>
            </asp:MenuItem>
            <asp:MenuItem Text="FAQS" Value="FAQS">
                <asp:MenuItem Selectable="False" Text="What is online examination?" 
                    Value="What is online examination?">
                    <asp:MenuItem Selectable="False" 
                        Text="Online examination is a new technique to conduct an examination through internet." 
                        Value="Online examination is a new technique to conduct an examination through internet.">
                    </asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem Selectable="False" Text="What are the advantages of this system?" 
                    Value="What are the advantages of this system?">
                    <asp:MenuItem Selectable="False" 
                        Text="Low cost, minimum effort, minimum employee deployment, saving time, instant result and conduct an examination India and abroad." 
                        Value="Lot of companies is gladly taking this modern system to exemption form the tedious written examination system. Low cost, minimum effort, minimum employee deployment, saving time, instant result and conduct an examination India and abroad. ">
                    </asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem Selectable="False" Text="Why it has been popular?" 
                    Value="Why it has been popular?">
                    <asp:MenuItem Selectable="False" 
                        Text="The formal examination system is a very long procedure to conduct an examination." 
                        Value="The formal examination system is a very long procedure to conduct an examination.">
                    </asp:MenuItem>
                </asp:MenuItem>
            </asp:MenuItem>
        </Items>
    </asp:Menu>
    </form>
    </body>
</html>
