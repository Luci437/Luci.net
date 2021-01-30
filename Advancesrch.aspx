<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Advancesrch.aspx.cs" Inherits="Advancesrch" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
    Luci's Products
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
    <style>
        * {
            outline: none;
        }
        .srchbox {
            width: 98%;
            height: auto;
            padding: 10px 0px 10px 0px;
            background: #fff;
            box-shadow: 0 5px 5px rgba(0, 0, 0, 0.14);
            margin: 10px auto;
            position: relative;
            border-radius: 3px;
            text-align: center;
        }
        .srchheadinglbl {
            font-family: Montserrat;
            padding: 10px 0px 10px 0px;
            text-transform: uppercase;
            font-weight: bold;
            font-size: 35px;
            letter-spacing: 2px;
            color: #0075ca;
        }
        .wywtxtbx {
            width: 400px;
            height: 25px;
            border-radius: 3px;
            border: 1px solid #a4a4a4;
            padding-left: 10px;
            font-family: Montserrat;
        }
        .fndtrdbtn {
            width: 100%;
            padding: 10px 0px 10px 0px;
            background: linear-gradient(#25a2fc,#0094ff);
            border: none;
            border-radius: 3px;
            font-family: Montserrat;
            letter-spacing: 1px;
            color: #fff;
            cursor: pointer;
        }
        .fndtrdbtn:hover {
            background: linear-gradient(#0094ff,#25a2fc);
        }
        html,body {
            height: 100%;
            width: 100%;
        }
        .maincontainer {
            width: 100%;
            padding: 50px 0px 50px 0px;
            background: #fff;
            position: relative;
        }
        .noresultslbl {
            line-height: 2;
        }
        .norsltpanel > table {
            margin: auto;
        }
        .resultdatalist {
            position: relative;
        }
        .box1 {
            width: 250px;
            height: auto;
            padding: 5px 0px 5px 0px;
            box-shadow: 0 5px 5px rgba(0, 0, 0, 0.19);
        }
        .prdimgbox {
            position: relative;
            width: 240px;
            height: 250px;
        }
        .prdimg {
            max-width: 100%;
            max-height: 100%;
        }
        .prdname {
            font-family: Montserrat;
            font-weight: bold;
            color: #4d4d4d;
            font-size: 20px;
        }
        .trdbtn {
            width: 100%;
            padding: 10px 0px 10px 0px;
            background: linear-gradient(#25a2fc,#0094ff);
            border: none;
            border-radius: 3px;
            font-family: Montserrat;
            letter-spacing: 1px;
            color: #fff;
            cursor: pointer;
        }
        .trdbtn:hover {
            background: linear-gradient(#0094ff,#25a2fc);
        }
        .rtnitems {
            font-family: Montserrat;
            font-size: 15px;
            color: #057000;
            padding-left: 10px;
            text-overflow: ellipsis;
            width: 100px;
        }
       .prdcontentbox {
            width: 280px;
            height: 400px;
            background: #ffffff;
            border-radius: 10px;
            box-shadow: 0 0 10px #e0e0e0;
            overflow: hidden;
            text-align: center;
            position: relative;
            left: 10px;
        }
        .prdcontentbox:hover .prdimg {
            transform: scale(1.1);
        }
        .imgboxItem {
            width: 240px;
            height: 200px;
            position: relative;
            margin: 0 auto;
            padding-top: 20px;
            overflow: hidden;
            text-align: center;
        }
        .prdimg {
            max-width: 100%;
            max-height: 100%;
            transition: 0.2s ease;
        }
        .prdname {
            font-family: 'Montserrat Alternates';
            font-weight: bold;
            font-size: 20px;
            color: #1e1e1e;
            position: relative;
            top: 40px;
        }
        .returnbox {
            width: 100%;
            display: grid;
            grid-template-columns: auto auto auto;
            position: relative;
            top: 60px;
        }
        .prdreturns {
            color: #27ca3e;
            font-family: Roboto;
        }
        .prdtradebtn {
            background: #3C7BD6;
            border: none;
            border-radius: 5px;
            padding: 13px 80px;
            font-family: 'Montserrat Alternates';
            font-size: 12px;
            color: #ffffff;
            position: relative;
            top: 84px;
            letter-spacing: 2px;
            cursor: pointer;
            transition: 0.2s ease;
        }
        .prdtradebtn:hover {
            background: #518ee8;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="srchbox">
        <asp:Label ID="Label1" CssClass="srchheadinglbl" runat="server" Text="Search Anything"></asp:Label>
        <table style="margin: auto;font-family: Montserrat;" cellspacing="10">
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="What you want"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" CssClass="wywtxtbx" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="What you Have"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" CssClass="wywtxtbx" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <asp:Button ID="Button1" CssClass="fndtrdbtn" runat="server" Text="FIND TRADER" OnClick="Button1_Click" />
                </td>
            </tr>
        </table>
    </div>
    <asp:Panel ID="Panel1" runat="server">
        
        <div class="srchbox">
            <asp:Label ID="Label7" CssClass="srchheadinglbl" runat="server" Text="Available traders"></asp:Label>
          <asp:Panel ID="noresultpanel" runat="server" CssClass="norsltpanel" Visible="False">
        <table style="text-align: center;">
            <tr>
                <td>
                    <asp:Image ID="Image1" runat="server" ImageUrl="../Images/noresult.png" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="Sorry, no trader found!" Font-Names="roboto" Font-Bold="True" Font-Size="30px" CssClass="noresultslbl"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label5" runat="server" Text="Please check the spelling or try searching for something else" Font-Size="20px" ForeColor="Gray" Font-Names="roboto" CssClass="noresultslbl"></asp:Label>
                </td>
            </tr>
        </table>
    </asp:Panel>
        <asp:Panel ID="resultpanel" runat="server">
 
        <asp:DataList ID="DataList1" runat="server" CssClass="resultdatalist" RepeatDirection="Horizontal" RepeatColumns="5" CellSpacing="10" OnItemCommand="DataList1_ItemCommand" >
            <ItemTemplate>
                    <div class="box1">
                        <table>
                            <tr>
                                <td style="text-align: center;">
                                    <div class="prdimgbox">
                                        <asp:Image ID="Image2" runat="server" CssClass="prdimg" ImageUrl='<%#Eval("img_path")%>' />
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align: center;">
                                    <asp:Label ID="Label3" CssClass="prdname" runat="server" Text='<%#Eval("pr_name") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align: center;">
                                    <asp:Label ID="Label4" CssClass="rtnitems" runat="server" Text='<%#Eval("pr_rename") %>'></asp:Label><asp:Label ID="Label5" CssClass="rtnitems" runat="server" Text='<%#Eval("pr_rename1") %>'></asp:Label><asp:Label ID="Label6" CssClass="rtnitems" runat="server" Text='<%#Eval("pr_rename2") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Button ID="Button1" CssClass="trdbtn" runat="server" Text="TRADE NOW" CommandName="Productview" CommandArgument='<%# Eval("pr_id") %>'/>
                                </td>
                            </tr>
                        </table>
                    </div>
            </ItemTemplate>
        </asp:DataList> 

        </asp:Panel>
        </div>
    </asp:Panel>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

