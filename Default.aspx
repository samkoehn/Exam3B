<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" Culture="auto:en-US" UICulture="auto"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Exam 3B</title>
</head>
<body>
   
    <form id="form1" runat="server">
    <div id="container">
        <div id="right_align">
        <h1>
            <asp:Label ID="lbl_h1" runat="server" Text="Welcome to MSCI:3300" meta:resourceKey="lbl_h1"></asp:Label>
        </h1>
        <h2>
            <asp:Label ID="lbl_h2" runat="server" Text="Software Design and Development" meta:resourceKey="lbl_h2"></asp:Label>
        </h2>
        <p>
            <asp:Label ID="lbl_myNameIs" runat="server" Text="My name is" meta:resourceKey="lbl_myNameIs"></asp:Label>
             <asp:TextBox ID="tb_name" runat="server" ></asp:TextBox>
           
    
        </p>
        <p>
            <asp:Label ID="lbl_gender" runat="server" Text="I am:" meta:resourceKey="lbl_gender"></asp:Label>
            <asp:RadioButton ID="rb_female" runat="server" Text="Female" GroupName="Gender" meta:resourceKey="rb_female" />
            <asp:RadioButton ID="rb_male" runat="server" Text="Male" GroupName="Gender" meta:resourceKey="rb_male"/>
            

        </p>    
        <p>
            <asp:Label ID="lbl_graduate" runat="server" Text="I plan to graduate on:" meta:resouceKey="lbl_graduate"></asp:Label>
             <asp:Calendar ID="cln_graduate" runat="server"></asp:Calendar>
            
            <br />
            <asp:Label ID="lbl_salary" runat="server" Text="When I graduate, I hope to earn " meta:resourceKey="lbl_salary"></asp:Label> 
                <asp:TextBox ID="tb_salary" runat="server"></asp:TextBox>
                  

            <p>
                <asp:Label ID="lbl_hello" runat="server" Text="Hello," meta:resourceKey="lbl_hello"></asp:Label>
                 <asp:Label ID="lbl_actualgender" runat="server" Text=""></asp:Label>
                <asp:Label ID="lbl_actualname" runat="server" Text=""></asp:Label> 
                 <asp:Label ID="lbl_response1" runat="server" Text="it's wonderful that you're graduating on " meta:resourceKey="lbl_response1"></asp:Label>
                <asp:Label ID="lbl_graddate" runat="server" Text=""></asp:Label>
                <asp:Label ID="lbl_response2" runat="server" Text="and I hope you make" meta:resourceKey="lbl_response2"></asp:Label>
                <asp:Label ID="lbl_actualsalary" runat="server" Text=""></asp:Label>
            </p>

        </p>
        </div>
        <div id="left_align">
                <asp:Label ID="lbl_chooseLang" runat="server" Text="Please choose your language:"></asp:Label>
                <asp:DropDownList ID="Language1" runat="server" AutoPostBack="True">
                    <asp:ListItem Value="auto">Auto</asp:ListItem>
                    <asp:ListItem Value="en-US">English (US)</asp:ListItem>
                    <asp:ListItem Value="es-ES">Spanish</asp:ListItem>
                    <asp:ListItem Value="ar">Arabic</asp:ListItem>
                    <asp:ListItem Value="zh">Chinese</asp:ListItem>
                </asp:DropDownList>
            <asp:Button ID="btn_submit" runat="server" Text="Submit"/>
            <asp:Button ID="btn_clear" runat="server" Text="Clear" />
        </div>
    </div>
    </form>
</body>
</html>
