<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Account.aspx.cs" Inherits="CUSTOMER_Account" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
    My Account
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
    <style>
        * {
            margin: 0px;
        }
        #container {
            width: 97%;
            height: auto;
            background: #ffffff;
            margin: auto;
            padding-bottom: 10px;
        }
        #profiletable  {
            margin: 10px auto;
        }
        #profiletable a {
            text-decoration: none;
            color: #1e1e1e;
            font-family: Cambria;
        }
        #profiletable a:hover > .post1 {
            background: #ededed;
        }
        .post1 {
            width: 300px;
            height: auto;
            padding: 20px 10px 20px 10px;
            margin: auto 20px;
            background: #fff;
            border: 1px solid #d8d8d8;
            border-radius: 3px;
        }
        .postlogos {
            width: auto;
            height: 50px;
        }
        .aboutpost  {
            color: #969696;
            font-size: 15px;
            font-family: Calibri;
        }
        #profiletable tr th {
            font-size: 22px;
            font-family: Cambria;
            margin: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="container">
        <table id="profiletable" style="width: 980px;table-layout: fixed;">
            <tr><th colspan="3">Your Account</th></tr>
            <tr>
                <td>
                    <a href="../CUSTOMER/Viewmyitems.aspx"><div class="post1">
                        <table>
                        <tr><td rowspan="2"><img src="../Images/postimg1.png" class="postlogos" /></td>
                        <td><h4>View your Items</h4></td></tr>
                        <tr><td><p class="aboutpost">You can see your products here.</p></td></tr>
                        </table>
                    </div></a>
                </td>
                <td>
                    <a href="../CUSTOMER/Changepassword.aspx"><div class="post1">
                        <table>
                        <tr><td rowspan="2"><img src="../Images/postimg2.png" class="postlogos" /></td>
                        <td><h4>Login & Security</h4></td></tr>
                        <tr><td><p class="aboutpost">Edit Login,name and Mobile number</p></td></tr>
                        </table>
                    </div></a>
                </td>
                <td>
                    <a href="../CUSTOMER/Allads.aspx"><div class="post1">
                        <table>
                        <tr><td rowspan="2"><img src="../Images/postimg3.png" class="postlogos" /></td>
                        <td><h4>Your Advertisements</h4></td></tr>
                        <tr><td><p class="aboutpost">View All Your Ads here.</p></td></tr>
                        </table>
                    </div></a>
                </td>
            </tr>
             
            <tr>
                
                <td>
                    <a href="../CUSTOMER/Addprds.aspx"><div class="post1">
                        <table>
                        <tr><td rowspan="2"><img src="../Images/postimg4.png" class="postlogos" /></td>
                        <td><h4>Add Product</h4></td></tr>
                        <tr><td><p class="aboutpost">Create details of your products.</p></td></tr>
                        </table>
                    </div></a>
                </td>
<%--                <td>
                    <a href="../CUSTOMER/ViewProfile.aspx"><div class="post1">
                        <table>
                        <tr><td rowspan="2"><img src="..\Images\prdimgs\usericon.png" class="postlogos" /></td>
                        <td><h4>View Profile</h4></td></tr>
                        <tr><td><p class="aboutpost">See all your personal details here.</p></td></tr>
                        </table>
                    </div></a>
                </td>--%>
            </tr>
        </table>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

