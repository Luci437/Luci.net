<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Changepassword.aspx.cs" Inherits="CUSTOMER_Changepassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
    Change Details
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
    <style>
        * {
            margin: 0px;
            padding: 0px;
            outline: none;
        }
        .maincontainer {
            width: 50%;
            height: auto;
            padding: 10px;
            background: linear-gradient(#fff,#f1f1f1);
            border-radius: 3px;
            font-family: Montserrat;
            box-shadow: 0 5px 5px rgba(0, 0, 0, 0.20);
            margin: 10px auto;
            position: relative;
            text-align: right;
        }
        .tblheader {
            padding-top: 5px;
            font-weight: bold;
            font-size: 30px;
            color: #141414;
        }
        .txtlbl {
            font-size: 20px;
            color: #001533;
        }
        .passwrdtxtbx {
            border: 1px solid #d4d4d4;
            padding-left: 10px;
            height: 30px;
            border-radius: 3px;
            width: 380px;
            float: left;
        }
        .fnametxtbx {
            border: 1px solid #d4d4d4;
            padding-left: 10px;
            height: 30px;
            border-radius: 3px;
            width: 180px;
            float: left;
            font-family: Montserrat;
        }
        .fnametxtbx:nth-child(2) {
            margin-left: 10px;
        }
        .savebtn {
            width: 390px;
            border-radius: 3px;
            background: linear-gradient(#0094ff,#0088ea);
            color: #fff;
            padding: 15px 0 15px 0;
            border: none;
            font-family: Montserrat;
            cursor: pointer;
            letter-spacing: 2px;
        }
        .savebtn:hover {
            background: linear-gradient(#0088ea,#0094ff);
        }
        .validationerror {
            font-size: 15px;
            color: #ff5151;
        }
        .validationerror:nth-child(2) {
            margin-left: 35px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="maincontainer">
        <table style="width: 100%;" cellspacing="10">
            <tr>
                <td colspan="2" style="height: 50px;text-align: center;vertical-align: top;">
                    <asp:Label ID="Label1" runat="server" CssClass="tblheader" Text="EDIT PROFILE"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label6" runat="server" CssClass="txtlbl" Text="Change Name"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" CssClass="fnametxtbx" placeholder="First Name"></asp:TextBox> <asp:TextBox ID="TextBox5" CssClass="fnametxtbx" runat="server" placeholder="Last Name"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td style="text-align: left;">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" CssClass="validationerror" runat="server" ErrorMessage="*Please Fill First Name" ControlToValidate="TextBox4"></asp:RequiredFieldValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" CssClass="validationerror" runat="server" ErrorMessage="*Please Fill Last Name" ControlToValidate="TextBox5"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: center;">
                    <asp:Label ID="Label2" runat="server" CssClass="txtlbl" Text="Change Password"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" CssClass="txtlbl" Text="Current Password"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="passwrdtxtbx" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td></td>
                <td style="text-align: left;">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" CssClass="validationerror" runat="server" ErrorMessage="*Current Password Required" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" CssClass="txtlbl" Text="New Password"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" CssClass="passwrdtxtbx" runat="server" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label5" runat="server" CssClass="txtlbl" Text="Re enter Password"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" CssClass="passwrdtxtbx" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td></td>
                <td style="text-align: left;">
                    <asp:CompareValidator ID="CompareValidator1" CssClass="validationerror" runat="server" ErrorMessage="*Password Not Matching" ControlToCompare="TextBox2" ControlToValidate="TextBox3"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td></td>
                <td style="text-align: left;">
                    <asp:Button ID="Button1" runat="server" CssClass="savebtn" Text="SAVE" OnClick="Button1_Click" />
                </td>
            </tr>
            <tr>
                <td></td>
                <td style="text-align: left;">
                    <asp:Label ID="Label7" runat="server" CssClass="validationerror" Text=""></asp:Label>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

