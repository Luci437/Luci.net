<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/MasterPage.master" AutoEventWireup="true" CodeFile="userapproval.aspx.cs" Inherits="ADMIN_userapproval" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
    User Approval
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .maincontainer {
            width: 80%;
            height: 100vh;
            background: #000f1a;
            overflow: auto;
            float: left;
            perspective: 900px;
            perspective-origin: 50% 50%;
        }
        .toppart {
            width: 100%;
            height: 60px;
        }
        .toppart table {
            width: 100%;
            margin: auto;
            background: rgba(255, 106, 0, 0.06);
        }
        .tplbl {
            font-family: Roboto thin;
            font-size: 35px;
            text-transform: uppercase;
            color: rgba(255, 106, 0, 1);
            padding: 0px 60px 0px 60px;
        }
        .tptxtbx {
            width: 200px;
            height: 30px;
            border-top: 1px solid #008181;
            border-left: 1px solid #008181;
            border-bottom: 1px solid #008181;
            border-right: 1px solid rgba(0, 0, 0, 0.00);
            background: rgba(0, 129, 129, 0.1);
            color: #63ffff;
            padding-left: 10px;
            font-size: 17px;
            font-family: sans-serif;
            outline: none;
            letter-spacing: 1.5px;
        }
        .tpsrchbtn {
            padding: 8px 15px 7px 15px;
            border-top: 1px solid #008181;
            border-right: 1px solid #008181;
            border-bottom: 1px solid #008181;
            border-left: 1px solid rgba(0, 0, 0, 0.00);
            background: rgba(28, 255, 255, 0.2);
            font-family: sans-serif;
            color: #63ffff;
            transition: 0.2s ease;
            cursor: pointer;
            position: relative;
            left: -5px;
            outline: none;
        }
        .tpsrchbtn:hover {
            background: rgba(28, 255, 255, 0.4);
        }
        .userapprovalpanel {
            width: 100%;
            position: relative;
        }
        .userapprovaldatalist {
            margin: auto;
            width: 90%;
        }
        .userbox1 {
            width: 1000px;
            height: 100px;
            border: 1px dotted rgba(0, 129, 129, 0.3);
            margin-top: 15px;
            transition: box-shadow 0.2s ease 0.2s, border 0.2s ease;
            position: relative;
            overflow: hidden;
            padding: 5px 7px 7px 5px;
        }
        .userbox1:hover {
            border: 1px dotted rgba(255, 106, 0, 1);
            box-shadow: 0 5px 10px rgba(0, 0, 0, 0.5);
        }
        .userbox2 {
            border: 1px dotted rgba(0, 129, 129, 1);
            position: relative;
            width: 1000px;
            height: 100px;
            overflow: hidden;
        }
        .svgs {
            position: absolute;
        }
        .useridlblbox {
            width: 120px;
            height: 100px;
            position: relative;
            text-align: center;
        }
        .useridlbl {
            font-family: Roboto;
            font-size: 50px;
            color: #63ffff;
            text-shadow: 0 0 5px rgba(99, 255, 255, 0.51);
            position: relative;
        }
        .appbtnbox {
            position: absolute;
            right: 20px;
            top: 28px;
            
        }
        .apprvbtn {
            border: 1px dotted rgba(28, 255, 255, 0.3);
            padding: 10px 25px 10px 25px;
            background: rgba(28, 255, 255, 0.06);
            color: #63ffff;
            font-family: Roboto;
            cursor: pointer;
            transition: background 0.1s ease-out, border 0.1s ease-in 0.1s; 
        }
        .apprvbtn:hover {
            border: 1px dotted rgba(28, 255, 255, 1);
            background: rgba(99, 255, 255, 0.11);
        }
        .rejtbtn {
            border: 1px dotted rgba(28, 255, 255, 0.3);
            padding: 10px 25px 10px 25px;
            background: rgba(28, 255, 255, 0.06);
            color: #63ffff;
            font-family: Roboto;
            cursor: pointer;
            transition: background 0.1s ease-out, border 0.1s ease-in 0.1s; 
        }
        .rejtbtn:hover {
            border: 1px dotted rgba(255, 106, 0, 1);
            background: rgba(99, 255, 255, 0.11);
        }
        .rejtbtn:active {
            background: rgba(99, 255, 255, 0.21);
        }
        .nameemailidbox {
            position: absolute;
            top: 0px;
            left: 250px;
        }
        .appusernamlbl {
            font-size: 55px;
            color: rgba(99, 255, 255, 0.91);
            font-family: Roboto;
            text-transform: uppercase;
            letter-spacing: 2px;
            text-shadow: 0 0 10px rgba(99, 255, 255, 0.61);
        }
        .appuseremaillbl {
            font-family: Roboto;
            color: rgba(28, 255, 255, 0.4);
            position: relative;
            top: -6px;
        }
        .appsrchpanel {
            
            text-align: center;
            width: 100%;
            position: relative;
        }
        .datalist2 {
            margin: auto;
            border-bottom: 1px dotted rgba(255, 106, 0, 1);
        }
        .noapprvpanel {
            margin: 0% 30%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="maincontainer">

        <div class="toppart">
            <table>
                <tr>
                    <td style="padding-left: 10px;">
                        <asp:Label ID="Label8" runat="server" Text="USER ACCOUNT APPROVAL" CssClass="tplbl"></asp:Label>
                    </td>
                    <td style="text-align: right;padding-right: 10px;">
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="tptxtbx"></asp:TextBox>
                        <asp:Button ID="Button1" runat="server" Text="Search" CssClass="tpsrchbtn"/>
                    </td>
                </tr>
            </table>
        </div>

        <asp:Panel ID="Panel3" runat="server" CssClass="noapprvpanel">
            <asp:Label ID="Label5" runat="server" Text="No Request to approve." ForeColor="#003399" Font-Size="XX-Large" Font-Names="Montserrat"></asp:Label>
        </asp:Panel>

        <asp:Panel ID="Panel2" runat="server" CssClass="appsrchpanel">
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString='<%$ ConnectionStrings:OBSConnectionString16 %>' SelectCommand="SELECT * FROM [tbl_reg] WHERE ([fname] LIKE '%' + @fname + '%') AND ([status] = 'notapproved')">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" PropertyName="Text" Name="fname" Type="String"></asp:ControlParameter>
            </SelectParameters>
        </asp:SqlDataSource>

        <asp:DataList ID="DataList2" runat="server" OnItemCommand="DataList2_ItemCommand" DataKeyField="reg_id" CssClass="datalist2" DataSourceID="SqlDataSource2">
            <ItemTemplate>
            <div class="userbox1">
                        <div class="userbox2">
                            <svg width="1500px" height="100px" class="svgs">
                                <polygon points="100,100 150,0 1500,0 1500,100" style="fill: rgba(0, 129, 129, 0.2);"></polygon>
                            </svg>
                            <div class="useridlblbox">
                                <asp:Label ID="Label2" runat="server" Text="USER ID" ForeColor="#00C5D5" Font-Names="roboto thin"></asp:Label><br />
                            <asp:Label ID="Label1" runat="server" Text='<%#Eval("reg_id") %>' CssClass="useridlbl"></asp:Label>
                            </div>

                            <div class="nameemailidbox">
                                <asp:Label ID="Label3" runat="server" Text='<%#Eval("fname") %>' CssClass="appusernamlbl"></asp:Label><br />
                                <asp:Label ID="Label4" runat="server" Text='<%#Eval("email") %>' CssClass="appuseremaillbl"></asp:Label>
                            </div>

                            <div class="appbtnbox">
                                <asp:Button ID="Button2" runat="server" Text="APPROVE" CssClass="apprvbtn" CommandName="approvebtn" CommandArgument='<%#Eval("reg_id") %>' />
                                <asp:Button ID="Button3" runat="server" Text="REJECT" CssClass="rejtbtn" />
                            </div>

                        </div>
                    </div>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>


        <asp:Panel ID="Panel1" runat="server" CssClass="userapprovalpanel">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:OBSConnectionString16 %>' SelectCommand="SELECT * FROM [tbl_reg] WHERE ([status] = @status)">
                <SelectParameters>
                    <asp:Parameter DefaultValue="notapproved" Name="status" Type="String"></asp:Parameter>
                </SelectParameters>
            </asp:SqlDataSource>

            <asp:DataList ID="DataList1" OnItemCommand="DataList1_ItemCommand" CssClass="userapprovaldatalist" runat="server" DataKeyField="reg_id" DataSourceID="SqlDataSource1">
                <ItemTemplate>
                    <div class="userbox1">
                        <div class="userbox2">
                            <svg width="1500px" height="100px" class="svgs">
                                <polygon points="100,100 150,0 1500,0 1500,100" style="fill: rgba(0, 129, 129, 0.2);"></polygon>
                            </svg>
                            <div class="useridlblbox">
                                <asp:Label ID="Label2" runat="server" Text="USER ID" ForeColor="#00C5D5" Font-Names="roboto thin"></asp:Label><br />
                            <asp:Label ID="Label1" runat="server" Text='<%#Eval("reg_id") %>' CssClass="useridlbl"></asp:Label>
                            </div>

                            <div class="nameemailidbox">
                                <asp:Label ID="Label3" runat="server" Text='<%#Eval("fname") %>' CssClass="appusernamlbl"></asp:Label><br />
                                <asp:Label ID="Label4" runat="server" Text='<%#Eval("email") %>' CssClass="appuseremaillbl"></asp:Label>
                            </div>

                            <div class="appbtnbox">
                                <asp:Button ID="Button2" runat="server" Text="APPROVE" CssClass="apprvbtn" CommandName="approvebtn" CommandArgument='<%#Eval("reg_id") %>' />
                                <asp:Button ID="Button3" runat="server" Text="REJECT" CssClass="rejtbtn" />
                            </div>

                        </div>
                    </div>
                </ItemTemplate>
            </asp:DataList>
        </asp:Panel>

    </div>
</asp:Content>

