<%@ Page Language="C#" AutoEventWireup="true" CodeFile="questions.aspx.cs" Inherits="questions" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body background="Images/student.jpg">
    <form id="form1" runat="server">
    <div style="height: 259px">
    
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
        <asp:Timer ID="Timer1" runat="server" Interval="1000" ontick="Timer1_Tick"></asp:Timer>
        <asp:Label ID="Label5" runat="server" ForeColor="White" Text="Time Taken"></asp:Label>
    
    &nbsp;&nbsp;
    <asp:Label ID="Label6" runat="server" ForeColor="#99CCFF" Text="0"></asp:Label>
        &nbsp;
        <asp:Label ID="Label7" runat="server" ForeColor="#99CCFF" Text="0"></asp:Label>
        &nbsp;&nbsp;<asp:Label ID="Label8" runat="server" ForeColor="#99CCFF" 
            Text=":"></asp:Label>
        &nbsp;
        <asp:Label ID="Label9" runat="server" ForeColor="#99CCFF" Text="0"></asp:Label>
        &nbsp;<asp:Label ID="Label10" runat="server" ForeColor="#99CCFF" 
            Text="0"></asp:Label>
        &nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <asp:Label ID="Label3" runat="server" ForeColor="#99CCFF" Text="0" Visible="False"></asp:Label>
        <asp:Label ID="Label11" runat="server" ForeColor="#99CCFF" Text="0" Visible="False"></asp:Label>
        <asp:Label ID="Label12" runat="server" ForeColor="#99CCFF" Text="0" Visible="False"></asp:Label>
        <br />
&nbsp;
        <asp:Label ID="Label1" runat="server" Font-Names="Arial" Font-Size="X-Large" 
            ForeColor="#006699" Text="Label"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Font-Names="Arial" Font-Size="X-Large" 
            ForeColor="#006699" Text="Label"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label14" runat="server" Font-Size="XX-Large" ForeColor="#006699" 
                    Text="label" Visible="False"></asp:Label>
        <br />
        <asp:Label ID="Label13" runat="server" ForeColor="#006699" Text="Time up!" 
            Visible="False"></asp:Label>
        <br />
        <asp:RadioButton ID="RadioButton1" runat="server" ForeColor="#006699" 
                    oncheckedchanged="RadioButton1_CheckedChanged" />
        <br />
        <asp:RadioButton ID="RadioButton2" runat="server" ForeColor="#006699" />
        <br />
        <asp:RadioButton ID="RadioButton3" runat="server" ForeColor="#006699" />
        <br />
    
        <asp:RadioButton ID="RadioButton4" runat="server" ForeColor="#006699" />
    
   
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:onlineConnectionString %>" 
            SelectCommand="SELECT * FROM question INNER JOIN test ON question.testcode = test.testcode where test.testcode=@testcode">
            <SelectParameters>
                <asp:SessionParameter Name="testcode" SessionField="testcode" />
            </SelectParameters>
        </asp:SqlDataSource>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Image ID="Image1" 
            runat="server" Height="156px" ImageUrl="~/Images/results.jpg" 
            style="margin-left: 58px" Visible="False" Width="281px" />
                </p>
    <p>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="LinkButton1" runat="server" BackColor="#006699" 
                    BorderColor="White" BorderStyle="Outset" BorderWidth="5px" 
                    Font-Names="Arial Black" Font-Size="Medium" ForeColor="Black" Height="22px" 
                    onclick="LinkButton1_Click" PostBackUrl="~/Default.aspx" 
                    style="margin-left: 224px" Visible="False" Width="66px"> Logout</asp:LinkButton>
    </p>
    <p>
        <asp:Label ID="Label15" runat="server" ForeColor="#99CCFF" Text="Your score is" 
            Visible="False"></asp:Label>
        &nbsp;
        <asp:Label ID="Label16" runat="server" ForeColor="White" Text="0" 
            Visible="False"></asp:Label>
        &nbsp;
        <asp:Label ID="Label17" runat="server" ForeColor="#66CCFF" Text="Points" 
            Visible="False"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label24" runat="server" ForeColor="#006699" Text="1. " 
            Visible="False"></asp:Label>
        <asp:Label ID="Label18" runat="server" ForeColor="#99CCFF" Text="0" 
            Visible="False"></asp:Label>
        &nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label25" runat="server" ForeColor="#006699" Text="2. " 
            Visible="False"></asp:Label>
        <asp:Label ID="Label19" runat="server" ForeColor="#99CCFF" Text="0" 
            Visible="False"></asp:Label>
        &nbsp;&nbsp;
        <asp:Label ID="Label26" runat="server" ForeColor="#006699" Text="3. " 
            Visible="False"></asp:Label>
        <asp:Label ID="Label20" runat="server" ForeColor="#99CCFF" Text="0" 
            Visible="False"></asp:Label>
        &nbsp;&nbsp;
        <asp:Label ID="Label27" runat="server" ForeColor="#006699" Text="4. " 
            Visible="False"></asp:Label>
        <asp:Label ID="Label21" runat="server" ForeColor="#99CCFF" Text="0" 
            Visible="False"></asp:Label>
        &nbsp;&nbsp;
        <asp:Label ID="Label28" runat="server" ForeColor="#006699" Text="5. " 
            Visible="False"></asp:Label>
        <asp:Label ID="Label22" runat="server" ForeColor="#99CCFF" Text="0" 
            Visible="False"></asp:Label>
        &nbsp;&nbsp;
        <asp:Label ID="Label23" runat="server" ForeColor="#006699" 
            Text="please select one option" Visible="False"></asp:Label>
    </p>
    <p style="margin-left: 87px">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button3" runat="server" onclick="Button3_Click" 
            Text="back" BackColor="#006699" BorderColor="White" BorderStyle="Outset" 
            BorderWidth="5px" Font-Bold="True" Font-Size="Large" Height="38px" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button2" runat="server" 
            BackColor="#006699" BorderColor="White" 
            BorderStyle="Outset" BorderWidth="5px" Font-Names="Arial Black" 
            Font-Size="Large" Height="38px" style="margin-left: 44px; margin-bottom: 0px" 
            Text="Fix the answer" onclick="Button2_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:Button ID="Button4" runat="server" 
            Font-Names="Aharoni" ForeColor="Black" onclick="Button4_Click" Text="next" 
            BackColor="#006699" BorderColor="White" BorderStyle="Outset" BorderWidth="5px" 
            Font-Size="Large" Height="37px" Width="67px" />
        &nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label4" runat="server" Text="Label" 
            Visible="False"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>
    <p style="margin-left: 87px">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" BackColor="#006699" BorderColor="White" 
            BorderStyle="Outset" BorderWidth="5px" Font-Names="Arial Black" 
            Font-Size="Large" Height="38px" style="margin-left: 84px; margin-bottom: 0px" 
            Text="Submit" onclick="Button1_Click1" />
    </p>
    </ContentTemplate>
        </asp:UpdatePanel>
     </div>
    </form>
    
</body>
</html>
