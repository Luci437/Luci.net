<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SignupPage.aspx.cs" Inherits="MAIN_PAGES_SignupPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        * {
            margin: 0px;
        }
        #container {
            margin: 2% auto;
            width: 500px;
            height: 550px;
            background: #0094ff;
            border-radius: 3px;
            position: relative;
        }
        #container::before {
            z-index: -1;
            content: "";
            width: 50%;
            position: absolute;
            left: 10px;
            top: 80%;
            bottom: 15px;
            max-width: 500px;
            box-shadow: 0 15px 10px #3d3d3d;
            transform: rotate(-3deg);
        }
        #container::after {
            z-index: -1;
            content: "";
            width: 50%;
            position: absolute;
            right: 10px;
            top: 80%;
            bottom: 15px;
            max-width: 500px;
            box-shadow: 0 15px 10px #3d3d3d;
            transform: rotate(3deg);
        }
        #container h2 {
            color: #ffffff;
            width: 100%;
            padding-top: 10px;
            padding-bottom: 10px;
            background: #0075ca;
            font-family: 'Script MT';
            text-align: center;
        }
        #signuptable {
            margin: 2% auto;
            width: 80%;
        }
        #signuptable h3 {
            color: #ffffff;
            font-size: 15px;
            font-family: Cambria;
        }
        .txtbx {
            width: 100%;
            height: 30px;
            border-radius: 3px;
            border:none;
            font-family: Cambria;
            font-size: 18px;
        }
        .subbtn {
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
        }
        .subbtn:hover {
            background: #006bb9;
        }
        #signuptable a {
            color: #fff;
            font-family: Cambria;
            position: relative;
            top: 5px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="container">
        <h2>Welcome to Luci!! Please Signup</h2>
        <table id="signuptable">
            <tr>
                <td>
                    <h3>First Name</h3>
                </td>
                <td>
                    <h3>Last Name</h3>
                </td>
            </tr>
            <tr>
                <td style="vertical-align: top;">

                    <asp:TextBox ID="TextBox1" runat="server" CssClass="txtbx"></asp:TextBox>
                    
                </td>
                
                <td>

                    <asp:TextBox ID="TextBox2" runat="server" CssClass="txtbx"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*First Name Needed" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td><h3>Enter Your Email Id</h3></td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:TextBox ID="emailtxtbx" runat="server" CssClass="txtbx" TextMode="Email"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="emailtxtbx" runat="server" ErrorMessage="*Please give Email ID"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td><h3>Enter Your Password</h3></td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:TextBox ID="firstpass" runat="server" TextMode="Password" CssClass="txtbx"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Required Password" ControlToValidate="firstpass"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 300px;"><h3>Confirm Your Password</h3></td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:TextBox ID="secpass" runat="server" TextMode="Password" CssClass="txtbx"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password not matching." ControlToCompare="secpass" ControlToValidate="firstpass"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td><h3>Mobile Phone</h3><asp:TextBox ID="mobnum" runat="server" CssClass="txtbx" MaxLength="10" TextMode="Phone"></asp:TextBox></td>
            </tr>
            <tr>
                <td colspan="2"><asp:Label ID="errormsg" runat="server" ForeColor="#CC0000"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    
                    <asp:Button ID="Button1" runat="server" CssClass="subbtn" Text="SIGNUP" OnClick="Button1_Click" />
                    
                </td>
            </tr>
            <tr>
                <td>
                    <a href="LoginPage.aspx">Already have an Account?</a>
                </td>
            </tr>
            </table>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

