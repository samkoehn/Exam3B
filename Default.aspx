<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" Culture="auto:en-US" UICulture="auto"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Exam 3B</title>
</head>
<body>
   
    <form id="form1" runat="server">
    <div id="container">
    <%If Not IsPostBack Then%>
        <div id="right align">
        <h1>
            <asp:Label ID="lbl_h1" runat="server" Text="Welcome to MSCI:3300" meta:resourceKey="lbl_h1"></asp:Label>
        </h1>
        <h2>
            <asp:Label ID="lbl_h2" runat="server" Text="Software Design and Development" meta:resourceKey="lbl_h2"></asp:Label>
        </h2>
        <p>
            <asp:Label ID="lbl_name" runat="server" Text="My name is:"></asp:Label>
             <asp:TextBox ID="tb_name" runat="server" meta:resourceKey="tb_name"></asp:TextBox>
           
        </p>
        <p>
            <asp:Label ID="lbl_gender" runat="server" Text="I am:"></asp:Label>
            <asp:RadioButton ID="rb_female" runat="server" Text="Female" GroupName="Gender" meta:resourceKey="rb_female" />
            <asp:RadioButton ID="rb_male" runat="server" Text="Male" GroupName="Gender" meta:resourceKey="rb_male"/>
            
        <p>
            <asp:Label ID="lbl_graduate" runat="server" Text="I plan to graduate on:"></asp:Label>
            <asp:TextBox ID="tb_graddate" runat="server"></asp:TextBox>
            <asp:Calendar ID="cln_graduate" runat="server"></asp:Calendar>
            
            <br />
            <asp:Label ID="lbl_salary" runat="server" Text="When I graduate, I hope to earn "></asp:Label> 
                <asp:TextBox ID="tb_salary" runat="server"></asp:TextBox>
              </p>
        </div>
        <div id="left align">
                <asp:Label ID="Language1" runat="server" Text="Please choose your language:"></asp:Label>
                <asp:DropDownList ID="ddl_language" runat="server">
                    <asp:ListItem Value="auto">Auto</asp:ListItem>
                    <asp:ListItem Value="en-US">English (US)</asp:ListItem>
                    <asp:ListItem Value="es-ES">Spanish</asp:ListItem>
                    <asp:ListItem Value="ar">Arabic</asp:ListItem>
                    <asp:ListItem Value="zh">Chinese</asp:ListItem>
                </asp:DropDownList>
            <asp:Button ID="btn_submit" runat="server" Text="Submit" />
            <asp:Button ID="btn_clear" runat="server" Text="Clear" />
       

        </div>
       <% Else %>
         <div id="right align">
        <h1>
            <asp:Label ID="Label1" runat="server" Text="Welcome to MSCI:3300" meta:resourceKey="lbl_h1"></asp:Label>
        </h1>
        <h2>
            <asp:Label ID="Label2" runat="server" Text="Software Design and Development" meta:resourceKey="lbl_h2"></asp:Label>
        </h2>
        <p>
            <asp:Label ID="Label3" runat="server" Text="My name is:"></asp:Label>
             <asp:Label ID="lbl_actualname" runat="server" Text=""></asp:Label>
        </p>
        <p>
            <asp:Label ID="Label5" runat="server" Text="I am:"></asp:Label>
            &nbsp;&nbsp;&nbsp;
            <asp:Label ID="lbl_actualgender" runat="server" Text=""></asp:Label>
       </p>
        <p>
            <asp:Label ID="Label7" runat="server" Text="I plan to graduate on:"></asp:Label>
             <asp:Label ID="lbl_actualgraddate" runat="server" Text=""></asp:Label>
             <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
            
            <br />
            <asp:Label ID="Label9" runat="server" Text="When I graduate, I hope to earn "></asp:Label> 
             <asp:Label ID="lbl_actualsalary" runat="server" Text=""></asp:Label>     
        <div id="left align">
                <asp:Label ID="Label11" runat="server" Text="Please choose your language:"></asp:Label>
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem Value="auto">Auto</asp:ListItem>
                    <asp:ListItem Value="en-US">English (US)</asp:ListItem>
                    <asp:ListItem Value="es-ES">Spanish</asp:ListItem>
                    <asp:ListItem Value="ar">Arabic</asp:ListItem>
                    <asp:ListItem Value="zh">Chinese</asp:ListItem>
                </asp:DropDownList>
            <asp:Button ID="Button1" runat="server" Text="Submit" />
            <asp:Button ID="Button2" runat="server" Text="Clear" />
       

        </div>
        <% End If%>
    </div>
    </form>
</body>
</html>
