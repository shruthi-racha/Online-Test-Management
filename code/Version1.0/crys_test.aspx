﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="crys_test.aspx.cs" Inherits="crys_test" %>

<%@ Register assembly="CrystalDecisions.Web, Version=10.5.3700.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <CR:CrystalReportSource ID="CrystalReportSource1" runat="server">
            <Report FileName="test.rpt">
            </Report>
        </CR:CrystalReportSource>
    
        <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click" 
            PostBackUrl="~/view_del_test.aspx">back</asp:LinkButton>
    
    </div>
    <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" 
        AutoDataBind="true" ReportSourceID="CrystalReportSource1" />
    </form>
</body>
</html>
