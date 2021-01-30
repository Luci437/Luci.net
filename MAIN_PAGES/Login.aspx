<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="MAIN_PAGES_Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Online Barter Shop</title>
    <style type="text/css">
        * {
            margin: 0px;
        }
        body {
        background: url("bg.jpg");
        }
        #container {
            width: 600px;
            height: 300px;
            border-radius: 5px;
            background: #0094ff;
            margin: 10% auto;
            position: relative;
        }
        #container::before {
          z-index: -1;
          position: absolute;
          content: "";
          bottom: 15px;
          left: 10px;
          width: 50%;
          top: 80%;
          max-width:300px;
          background: #777;
          box-shadow: 0 15px 10px #494949;
          transform: rotate(-3deg);
        }
        #container::after {
          z-index: -1;
          position: absolute;
          content: "";
          bottom: 15px;
          right: 10px;
          width: 50%;
          top: 80%;
          max-width:300px;
          background: #777;
          box-shadow: 0 15px 10px #494949;
          transform: rotate(3deg);
        }
        footer {
            position: absolute;
            bottom: 0px;
            width: 100%;
            height: 50px;
            background: #808080;
        }
        .footertext {
            position: relative;
            text-align: center;
            margin: 10px auto;
            color: #ffffff;
            font-size: 24px;
            font-family: 'Script MT';
        }
        #logintable {
            position: absolute;
            margin: 5% 15%;
        }
        #Button1, #Button2 {
            padding: 5px 20px 5px 20px;
            background: #0094ff;
            color: #ffffff;
            border: 1px solid #ffffff;
            border-radius: 3px;
            font-size: 25px;
            font-family: 'Script MT';
        }

        #TextBox1 {
            width: 100%;
            height: 25px;
            font-family: Cambria;
            font-size: 20px;
            padding-left: 10px;
        }
        #TextBox2 {
            width: 100%;
            height: 25px;
            font-family: Cambria;
            font-size: 20px;
            padding-left: 10px;
        }
        .labels {
            color: #ffffff;
            font-family: 'Script MT';
            font-size: 25px;
        }
        .boxtitle {
            text-align: center;
            color: #ffffff;
            font-size: 60px;
            position: relative;
            font-family: 'Script MT';
        }
        #errormsg {
            color: white;
            position: absolute;
            text-align: center;
            bottom: 5px;
        }
        .auto-style1 {
            left: 0px;
            bottom: 452px;
        }
    </style>
    
</head>
<body>

    <div id="container">
        <form id="loginform" runat="server">
            <h1 class="boxtitle">Login to our system</h1>

            <table id="logintable">
                <tr>
                    <td class="labels">Username/Email&nbsp; </td>
                    <td><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="labels">Password</td>
                    <td><asp:TextBox ID="TextBox2"  runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td></td>
                    <td><asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" />
                    &nbsp;<asp:DataList ID="DataList1" runat="server">
                            <ItemTemplate>
                               // <asp:Label ID="Label1" runat="server" Text='<%# Eval("name") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:DataList>
&nbsp;<asp:Button ID="Button2" runat="server" OnClick="Button1_Click" Text="Cancel" /> </td>
                </tr>
                </table>
            <asp:Label ID="errormsg" runat="server"></asp:Label>
            </form>
    </div>
    <p>
        &nbsp;</p>
    <footer class="auto-style1">
        <h1 class="footertext">&copy;Pillo 2018</h1>
    </footer>
</body>
</html>
