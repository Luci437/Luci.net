<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Allads.aspx.cs" Inherits="CUSTOMER_Allads" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
    Ads Details
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
    <style>
        * {
           outline: none;
        }
        .maincontainer {
            width: 95%;
            margin: auto;
            background: #fff;
            border-radius: 3px;
            height: 500px;
            position: relative;
        }
        .maincontainer h3 {
            color: #0094ff;
            font-family: Montserrat;
            font-size: 35px;
            text-align: center;
            text-transform: uppercase;
            letter-spacing: 2px;
            line-height: 2;
            position: relative;
        }
        .datalistad {
            width: 100%;
            position: relative;
        }
        .subcontainer {
            width: 90%;
            height: 130px;
            background: linear-gradient(#f2f2f2,#ebebeb);
            margin: 10px auto;
            box-shadow: 0 3px 2px rgba(0, 0, 0, 0.12);
            position: relative;
        }
        .imgbox {
            width: 150px;
            height: 80px;
            top: 20px;
            left: 10px;
            position: relative;
            float: left;
        }
        .adimgcss {
            max-height: 100%;
            max-width: 100%;
        }
        .addetailslbl {
            font-family: Montserrat;
            color: #272727;
            font-size: 20px;
        }
        .addtlbls {
            font-size: 15px;
            color: #5c5c5c;
            position: relative;
            top: -10px;
        }
        .pausebtn {
            font-family: 'Wingdings 2';
            font-size: 40px;
            color: #a8a8a8;
            position: absolute;
            bottom: 22px;
            right: 10px;
            padding: 5px 25px 5px 25px;
            background: linear-gradient(#f5f5f5,#dbdbdb);
            border: 1px solid #b2b2b2;
            cursor: pointer;
        }
        .pausebtn:hover {
            background: linear-gradient(#dbdbdb,#f5f5f5)
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="maincontainer">
        <h3>See all your Ads here</h3>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString='<%$ ConnectionStrings:OBSConnectionString16 %>' SelectCommand="select * from useradtypetable,adtypetable,tbl_reg,ProductTable where ProductTable.pr_id = useradtypetable.ad_prid and useradtypetable.ad_typeid = adtypetable.ad_typeid and useradtypetable.ad_regid = tbl_reg.reg_id and useradtypetable.ad_regid = @ad_regid">
            <SelectParameters>
                <asp:SessionParameter SessionField="userid" Name="ad_regid" Type="Int32"></asp:SessionParameter>
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource2" CssClass="datalistad" OnItemCommand="DataList1_ItemCommand">
            <ItemTemplate>
                <div class="subcontainer">
                    <div class="imgbox">
                        <asp:Image ID="Image1" runat="server" CssClass="adimgcss" ImageUrl='<%#Eval("ad_img") %>' />
                    </div>
                    <table style="float:left;position: relative;left: 10px;font-family: Montserrat;font-size: 17px;" cellspacing="5">
                        <tr>
                            <td>
                                <asp:Label ID="Label1" runat="server" CssClass="addetailslbl" Text='<%#Eval("ad_typename") %>' Font-Size="25"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                            <asp:Label ID="Label2" CssClass="addtlbls" runat="server" Text="Starting Date: "></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label3" CssClass="addtlbls" runat="server" Text='<%#Eval("ad_startdate") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label4" CssClass="addtlbls" runat="server" Text="Ending Date: "></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label5" CssClass="addtlbls" runat="server" Text='<%#Eval("ad_enddate") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label6" CssClass="addtlbls" runat="server" Text='<%#Eval("ad_admin_status") %>'></asp:Label>
                            </td>
                        </tr>
                    </table>
                    <table style="float: left;">
                        <tr>
                            <td>
                                <asp:Button ID="Button1" runat="server" CssClass="pausebtn" Text="X" ToolTip="Remove Ads" CommandArgument=<%#Eval("ad_id") %> CommandName="adstat" />
                            </td>
                        </tr>
                    </table>
                </div>
            </ItemTemplate>
        </asp:DataList>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

