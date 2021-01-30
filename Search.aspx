<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Search.aspx.cs" Inherits="Search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
    Luci
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
    <style>
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
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="maincontainer">
            <asp:Panel ID="noresultpanel" runat="server" CssClass="norsltpanel">
        <table style="text-align: center;">
            <tr>
                <td>
                    <asp:Image ID="Image1" runat="server" ImageUrl="../Images/noresult.png" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Sorry, no results found!" Font-Names="roboto" Font-Bold="True" Font-Size="30px" CssClass="noresultslbl"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Please check the spelling or try searching for something else" Font-Size="20px" ForeColor="Gray" Font-Names="roboto" CssClass="noresultslbl"></asp:Label>
                </td>
            </tr>
        </table>
    </asp:Panel>
        <asp:Panel ID="resultpanel" runat="server">
 
        <asp:DataList ID="DataList1" runat="server" CssClass="resultdatalist" RepeatDirection="Horizontal" RepeatColumns="4" CellSpacing="10" OnItemCommand="DataList1_ItemCommand" >
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

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

