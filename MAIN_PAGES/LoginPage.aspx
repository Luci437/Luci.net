<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="LoginPage.aspx.cs" Inherits="MAIN_PAGES_LoginPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        * {
            margin: 0px;
        }
        #logincontainer {
            background: #0094ff;
            width: 500px;
            height: 300px;
            margin: 5% auto;
            position: relative;
            border-radius: 3px;
        }
        #logincontainer::before {
          z-index: -1;
          position: absolute;
          content: "";
          bottom: 15px;
          left: 10px;
          width: 50%;
          top: 80%;
          box-shadow: 0 15px 10px #494949;
          transform: rotate(-3deg);
        }
        #logincontainer::after {
            z-index: -1;
            content: "";
            bottom: 15px;
            position: absolute;
            width: 50%;
            top: 80%;
            right: 10px;
            box-shadow: 0 15px 10px #494949;
            transform: rotate(3deg);
        }
        #logincontainer h2 {
            color: #ffffff;
            font-family: 'Script MT';
            font-size: 20px;
            text-align: center;
            background: #0075ca;
            padding-top: 10px;
            padding-bottom: 10px;
        }
        #logintable {
            margin: 5% auto;
            width: 350px; 
        }
        .txtboxes {
            width: 97%;
            height: 30px;
            border-radius: 5px;
            border: none;
            font-size: 20px;
            font-family: Cambria;
            padding-left: 10px;
        }
        .submitbtn {
            width: 100%;
            background: #007ed9;
            border: none;
            border-radius: 3px;
            color: #ffffff;
            font-size: 20px;
            padding-top: 10px;
            padding-bottom: 10px;
            font-family: Cambria;
            position: relative;
            top: 5px;
            cursor: pointer;
        }
        .submitbtn:hover {
            background: #006bb9;
        }
        #logintable h3 {
            color: #ffffff;
            font-family: Cambria;
            font-size: 15px;
        }
        #logintable a {
            color: #fff;
            position: relative;
            top: 5px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="logincontainer">
        <h2>Welcome back!! Please Login to Continue...</h2>
        <table id="logintable">
            <tr>
                <td><h3>Enter Your Email Id</h3></td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox CssClass="txtboxes" ID="emailtxtbx" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td><h3>Enter Password</h3></td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox CssClass="txtboxes" ID="passtxtbx" runat="server" TextMode="Password"></asp:TextBox>
                    <br />
                    <asp:Label ID="errormsglbl" runat="server" ForeColor="White"></asp:Label>
                </td>
            </tr>
            <tr>
                <td> 
                      <asp:Button ID="Button1" runat="server" Text="LOGIN" CssClass="submitbtn" OnClick="Button1_Click" />
                </td>
            </tr>
            <tr>
                <td>
                    <a href="SignupPage.aspx">Not a registered Customer</a>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

</asp:Content>

