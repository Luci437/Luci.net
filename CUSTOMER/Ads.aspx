<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Ads.aspx.cs" Inherits="CUSTOMER_Ads" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
    Advertise With Luci
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
    <style>
        * {
            outline: none;
        }
        html,body {
           height: 100%;
           width: 100%;
       }
        .le-container {
            width: 90%;
            height: 40px;
            padding: 20px;
            border-radius: 5px;
            background: #cde3f3;
            margin: 20px auto;
            border-bottom: 1px solid #ffffff;
            overflow: hidden;
            position: relative;
        }
        .le-container h4 {
            color: #5f5f5f;
            font-size: 18px;
            letter-spacing: 1px;
            font-family: Cambria;
            font-style: italic;
            text-align: center;
            line-height: 2;
        }
        .effect-1 {
            width: 250px;
            height: 80px;
            background: rgba(255, 255, 255, 0.49);
            position: relative;
            top: -40px;
            filter: blur(10px);
            transform: rotate(45deg);
            animation: effect1ani 10s infinite linear;
        }
        @keyframes effect1ani {
            0% {
                left: -300px;
            }
            100% {
                left: 1500px;
            }
        }
        .maincontainer {
            width: 100%;
            height: auto;
            padding: 10px 0 10px 0px;
            border-radius: 5px;
            position: relative;
            text-align: center;
        }
        .part1 {
            width: 72%;
            padding: 5px 0px 5px 0px;
            position: relative;
            float: left;
            margin: 5px;
        }
        .part2 {
            width: 25%;
            padding: 5px;
            position: relative;
            float: left;
            margin: 5px;
        }
        .part1-1 {
            width: 100%;
            height:180px;
            background: #fff;
            border: 1px solid #e0e0e0;
            margin: 10px auto;
            box-sizing: border-box;
            position: relative;
            overflow: hidden;
            box-shadow: 0 5px 5px rgba(0, 0, 0, 0.07);
        }
        .part1-1 h3 ,.part1-1-1 h3,.part1-1-2 h3 {
            width: 100%;
            background: #8f8f8f;
            color: #fff;
            text-rendering: geometricPrecision;
            font-family: Montserrat;
            font-weight: 300;
            font-size: 16px;
            padding: 15px 0px 15px 35px;
            text-align: left;
        }
        .part1-1-1:hover > h3 {
            background: #00b164;
        } 
        .part1-1:hover > h3 {
            background: #00b164;
        }
        .part1-1-2 > h3 {
            background: #00b164;
        }
        .abouttext {
            width: 90%;
            height: 30px;
            border: 1px solid #c4c4c4;
            font-family: Montserrat;
            position: relative;
            top: 15px;
            padding: 5px 0px 5px 20px;
        }
        .abouttext:focus {
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.12);
        }
        .aboutbtn {
            padding: 15px 30px 15px 30px;
            border: none;
            color: #fff;
            font-family: Montserrat;
            letter-spacing: 3px;
            background: #cc3333;
            position: absolute;
            bottom: 10px;
            right: 10px;
            border-radius: 3px;
            cursor: pointer;
            min-width: 200px;
        }
        .aboutbtn:hover {
            background: #a71c1c;
        }
        .addroplist {
            width: 41%;
            height: 45px;
            border: 1px solid #c4c4c4;
            font-family: Montserrat;
            margin: 10px auto;
        }
        .addroplist:nth-child(3) {
            width: 50%;
        }
        .choosebtn {
            padding: 15px 30px 15px 30px;
            border: none;
            color: #fff;
            font-family: Montserrat;
            letter-spacing: 3px;
            background: #6a91ff;
            position: absolute;
            border-radius: 3px;
            cursor: pointer;
            left: 10px;
            top: 60px;
        }
        .fileupload {
            font-family: Montserrat;
            position: absolute;
            left: 105px;
            top: 72px;
        }
        .part1-1-1 {
            width: 100%;
            height:120px;
            background: #fff;
            border: 1px solid #e0e0e0;
            margin: 10px auto;
            box-sizing: border-box;
            position: relative;
            overflow: hidden;
            box-shadow: 0 5px 5px rgba(0, 0, 0, 0.07);
        }
        .part1-1-2 {
            width: 100%;
            height: 340px;
            background: #fff;
            border: 1px solid #e0e0e0;
            margin: 10px auto;
            box-sizing: border-box;
            position: relative;
            overflow: hidden;
            box-shadow: 0 5px 5px rgba(0, 0, 0, 0.07);
        }
        .part2-1 {
            width: 100%;
            background: #fff;
            border: 1px solid #e0e0e0;
            margin: 10px auto;
            box-sizing: border-box;
            position: relative;
            overflow: hidden;
            padding: 5px 0px 5px 0px;
            box-shadow: 0 5px 5px rgba(0, 0, 0, 0.07);
        }
        .paybtn {
            width: 98%;
            padding: 20px 5px 20px 5px;
            color: #fff;
            border: none;
            border-radius: 3px;
            background: #cc3333;
            font-family: Montserrat;
            cursor: pointer;
        }
        .paybtn:hover {
            background: #a71c1c;
        }
        .offerprice {
            position: absolute;
            bottom: 10px;
            right: 250px;
            font-family: Montserrat;
        }
        .validationerror {
            position: absolute;
            bottom: 10px;
            right: 220px;
            font-family: Montserrat;
            color: #cc3333;
        }
    </style>
    <script type="text/javascript">
        $(document).ready(function () {
            var inter = function () {
                $('.fileupload').html($('.fileupload').val());
            };
            $('.choosebtn').click(function () {
                $('.fileupload').click();
                setInterval(inter, 1);
                return false;
                
            });
        });
    </script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:Panel ID="loginerror" runat="server">
        <div class="le-container">
            <h4>Sorry! Please <asp:LinkButton ID="LinkButton1" runat="server" ClientIDMode="AutoID" ForeColor="#5F5F5F" PostBackUrl="~/MAIN_PAGES/LoginPage.aspx">Login</asp:LinkButton> to View Page.</h4>
            <div class="effect-1"></div>
        </div>
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server">
        
        <div class="maincontainer">
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
             <asp:UpdatePanel ID="UpdatePanel1" runat="server">
              <ContentTemplate>
            <div class="part1">
                    <div class="part1-1-1">
                        <h3> > Choose your advertisement picture</h3>
                        <asp:FileUpload ID="FileUpload1" runat="server" CssClass="fileupload" class="fileupload" />
                        <asp:Button ID="Button4" runat="server" Text="CHOOSE FILE" OnClick="Button4_Click" CssClass="choosebtn" class="choosebtn" />
                        <asp:Button ID="Button3" runat="server" Text="UPLOAD" CssClass="aboutbtn" OnClick="Button3_Click"/>
                        <asp:Label ID="Label12" CssClass="validationerror" runat="server" Text="*Please upload any picture." Visible="False"></asp:Label>
                    </div>

                <asp:Panel ID="Panel2" runat="server" Visible="False">
                <div class="part1-1">
                    <h3> > Say something about your advertisement</h3>
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="abouttext" placeholder="Enter text here"></asp:TextBox>
                    <asp:Button ID="Button1" runat="server" Text="PROCEED" CssClass="aboutbtn" OnClick="Button1_Click"/>
                </div>
                </asp:Panel>

                <asp:Panel ID="Panel1" runat="server" Visible="False">
                    <div class="part1-1">
                        <h3> > Select your item / Select Advertisement type</h3>
                        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="addroplist" DataSourceID="SqlDataSource1" DataTextField="pr_name" DataValueField="pr_id"></asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OBSConnectionString16 %>" SelectCommand="SELECT [pr_name], [pr_id] FROM [ProductTable] WHERE ([reg_id] = @reg_id)">
                            <SelectParameters>
                                <asp:SessionParameter Name="reg_id" SessionField="userid" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <asp:DropDownList ID="DropDownList2" runat="server" CssClass="addroplist" DataSourceID="SqlDataSource2" DataTextField="ad_typename" DataValueField="ad_typeid" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" AutoPostBack="True">
                            <asp:ListItem Selected="True">--Select Offers--</asp:ListItem>
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:OBSConnectionString16 %>" SelectCommand="SELECT [ad_typename], [ad_typeid] FROM [adtypetable]"></asp:SqlDataSource>
                        <span class="offerprice"><asp:Label ID="Label10" runat="server" Text="Rs."></asp:Label><asp:Label ID="Label11" runat="server" Text="---" Font-Size="XX-Large"></asp:Label></span>
                        <asp:Button ID="Button2" runat="server" Text="PROCEED" CssClass="aboutbtn" OnClick="Button2_Click"/>
                    </div>
                </asp:Panel>


                <asp:Panel ID="Panel4" runat="server" Visible="False">
                    <div class="part1-1-2">
                        <h3> > Select Advertisement dates (Starting / Ending)</h3>
                        <table style="margin: auto;font-family: Montserrat;color: #262626;width: 50%;" cellspacing="20">
                            <tr>
                                <td colspan="2" style="font-size: 20px;">
                                    Your Ads will show from <asp:Label ID="Label1" runat="server" Text="-/-/-" ForeColor="#66CCFF"></asp:Label> to <asp:Label ID="Label2" runat="server" Text="-/-/-" ForeColor="#66CCFF"></asp:Label>.
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged"></asp:Calendar>
                                </td>
                                <td>
                                    <asp:Calendar ID="Calendar2" runat="server" OnSelectionChanged="Calendar2_SelectionChanged"></asp:Calendar>
                                </td>

                            </tr>
                        </table>
                        <asp:Label ID="Label13" CssClass="validationerror" runat="server" Text="*Please Select Dates." Visible="False"></asp:Label>
                        <asp:Button ID="Button5" runat="server" Text="ALL DONE" CssClass="aboutbtn" OnClick="Button5_Click"/>
                    </div>
                </asp:Panel>

             </div>

            <asp:Panel ID="Panel5" runat="server">
            <div class="part2">
                <div class="part2-1">
                    <table style="width: 100%;font-family: Montserrat;">
                        <tr style="height: 65px;">
                            <td style="vertical-align:top;color: #9a9a9a;letter-spacing: 3px;font-size: 15px;" colspan="2">
                                <h3>ORDER SUMMARY</h3>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" style="font-size: 13px;height: 20px;">
                                <asp:Label ID="Label3" runat="server" Text="Selected options will be here"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" style="font-size: 13px;height: 20px;">
                                <asp:Label ID="Label4" runat="server" Text="-/-/-" ForeColor="#66CCFF"></asp:Label> to <asp:Label ID="Label5" runat="server" Text="-/-/-" ForeColor="#66CCFF"></asp:Label> (Total Days : <asp:Label ID="Label9" runat="server" Text="0"></asp:Label>)
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <asp:Label ID="Label14" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                        <tr style="height: 50px;">
                            <td style="text-align: left;vertical-align:bottom;padding-left: 5px;">
                                <asp:Label ID="Label6" runat="server" Text="Amount to pay"></asp:Label>
                            </td>
                            <td style="text-align: right;vertical-align:bottom;">
                                <asp:Label ID="Label8" runat="server" Text="Rs."></asp:Label>
                                <asp:Label ID="Label7" runat="server" Text="0" Font-Size="18"></asp:Label>
                            </td>
                        </tr>
                        <tr style="height: 100px;">
                            <td colspan="2" style="vertical-align: bottom;">
                                <asp:Button ID="Button6" runat="server" Text="PAY NOW" CssClass="paybtn" OnClick="Button6_Click" />
                            </td>
                        </tr>
                    </table>
                    
                </div>
            </div>
            </asp:Panel>
           </ContentTemplate>
                 <Triggers>
                     <asp:PostBackTrigger ControlID="Button3"  />
                     <asp:PostBackTrigger ControlID="Button5"  />
                 </Triggers>
         </asp:UpdatePanel>
            
      </div>
    </asp:Panel>

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

