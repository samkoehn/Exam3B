<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" Culture="auto:en-US" UICulture="auto"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Exam 3B</title>
</head>
<body>
    <form id="form1" runat="server">
    <div id="container">
        <div id="right align">
        <h1>
            <asp:Label ID="lbl_h1" runat="server" Text="Welcome to MSCI:3300" meta:resourceKey="lbl_h1"></asp:Label>
        </h1>
        <h2>
            <asp:Label ID="lbl_h2" runat="server" Text="Software Design and Development" meta:resourceKey="lbl_h2"></asp:Label>
        </h2>
        <p>
            <asp:Label ID="lbl_name" runat="server" Text="My name is:"></asp:Label> <asp:TextBox ID="tb_name" runat="server" meta:resourceKey="tb_name"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="lbl_gender" runat="server" Text="I am:"></asp:Label> 
            <asp:RadioButton ID="rb_female" runat="server" Text="Female" meta:resourceKey="rb_female" />
            <asp:RadioButton ID="rb_male" runat="server" Text="Male" meta:resourceKey="rb_male"/>
        </p>
        <p>
            <asp:Label ID="lbl_graduate" runat="server" Text="I plan to graduate on:"></asp:Label>
            <asp:Calendar ID="cln_graduate" runat="server"></asp:Calendar>
            <asp:Label ID="lbl_salary" runat="server" Text="When I graduate, I hope to earn "></asp:Label> 
                <asp:TextBox ID="tb_salary" runat="server"></asp:TextBox>
        </p>
        </div>
        <div id="left align">
            <p>
                <asp:Label ID="lbl_langchoice" runat="server" Text="Please choose your language:"></asp:Label>
                <asp:DropDownList ID="ddl_language" runat="server">
                    <asp:ListItem Value="en-US">English (US)</asp:ListItem>
                    <asp:ListItem Value="es-ES">Spanish</asp:ListItem>
                    <asp:ListItem Value="ar">Arabic</asp:ListItem>
                    <asp:ListItem Value="zh">Chinese</asp:ListItem>


                </asp:DropDownList>
            </p>

        </div>
    </div>
    </form>
</body>
</html>
