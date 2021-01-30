<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ViewProfile.aspx.cs" Inherits="CUSTOMER_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
    User Profile
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
    <style>
        * {
            margin: 0px;
            padding: 0px;
        }
        html,body {
            width: 100%;
            height: 100%;
        }
        .maincontainer {
            margin: auto;
            position: relative;
        }
        .lbls {
            font-size: 18px;
            color: #808080;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <table class="maincontainer">
            <tr>
                <td>
                  <img src="../Images/prdimgs/usericon.png" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label1" CssClass="lbls" runat="server" Text="ID:- "></asp:Label> <asp:Label ID="Label2" CssClass="lbls" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>

                </td>
            </tr>
        </table>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

