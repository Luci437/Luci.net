<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admimhome.aspx.cs" Inherits="ADMIN_Admimhome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Welcome Boss</title>
    <style>
        * {
            margin: 0px;
            padding: 0px;
            text-decoration: none;
        }
        body {
            background: #000f1a;
        }
        .mainconainter {
            position: fixed;
            height: 100vh;
            box-sizing: border-box;
            top: 10px;
        }
        .backgrounditems {
            position: fixed;
            top: 0px;
            left: 0px;
        }
        .circel {
            border-radius: 100%;
            position: absolute;
        }
        .c1 {
            width: 250px;
            height: 450px;
            left: 200px;
            top: 100px;
            transform: rotate(45deg);
            background: #123e5e;
            filter: blur(100px);
            animation: cir1 20s infinite alternate ease;
        }
        @keyframes cir1 {
            0% {
                opacity: 1;
            }
            20% {
                opacity: 0;
            }
            50% {
                opacity: 0;
            }
            70% {
                opacity: 1;
            }
            100% {
                opacity: 0;
            }
        }
        .c2 {
            background:rgba(255, 86, 0, 0.5);
            width: 700px;
            height: 250px;
            top: 80vh;
            left: 500px;
            filter: blur(100px);
            animation: cir1 40s infinite alternate ease;
        }
        .c3 {
            width: 250px;
            height: 250px;
            left: 1200px;
            top: 50px;
            background: #123e5e;
            filter: blur(80px);
            animation: cir1 15s infinite alternate ease;
        }
        .bars {
            position: absolute;
            top: 100px;
            width: 50px;
            height: 450px;
            background: rgba(110, 174, 220, 0.1);
            filter: blur(50px);
            animation: bars 3s infinite;
        }
        @keyframes bars {
            0% {
                left: -100px;
            }
            50% {
                left: 1500px;
            }
            100% {
                left: 1500px;
            }
        }
        .b1 {
            animation-delay: 0.2s;
        }
        .b2 {
            animation-delay: 0.5s;
        }
        .b3 {
            animation-delay: 0.6s;
        }
        .box1 {
            width: 400px;
            height: 250px;
            border: 10px solid rgba(18, 62, 94, 0.11);
            position: relative;
            top: 50px;
            left: 50px;
            text-align: center;
            overflow: hidden;
            opacity: 0;
            animation: ani1 0.5s 2 forwards 0.3s;
        }
        .coverphoto {
            max-width: 100%;
            max-height: 100%;
            margin: auto;
            position: relative;
        }
        .cp1 {
            transform: scale(1.2);
            transition: 1s ease-out;
        }
        .headingsection {
            position: absolute;
            top: 0px;
            width: 100%;
            background: rgba(0, 0, 0, 0.8);
            color: #0061a9;
            font-family: 'Motion Control';
            letter-spacing: 1px;
            font-size: 18px;
        }
        .headingsection h2 {
            padding-left: 5px;
            float: left;
        }
        .box2 {
            width: 400px;
            height: 200px;
            border: 10px solid rgba(18, 62, 94, 0.11);
            position: relative;
            top: 60px;
            left: 50px;
            text-align: center;
            overflow: hidden;
            opacity: 0;
            animation: ani1 0.5s 2 forwards 0.8s;
        }
        .cp2 {
            transform: scale(2.2);
            top: 80px;
            left: 80px;
        }
        .box3 {
            width: 400px;
            height: 140px;
            border: 10px solid rgba(18, 62, 94, 0.11);
            position: relative;
            top: -440px;
            left: 480px;
            text-align: center;
            overflow: hidden;
            opacity: 0;
            animation: ani1 0.5s 2 forwards 0.7s;
        }
        .cp3 {
            transform: scale(2.2);
            top: 60px;
            left: 5px;
        }
        .box4 {
            width: 400px;
            height: 140px;
            border: 10px solid rgba(18, 62, 94, 0.11);
            position: relative;
            top: -430px;
            left: 480px;
            text-align: center;
            overflow: hidden;
            opacity: 0;
            animation: ani1 0.5s 2 forwards 0.6s;
        }
        .cp4 {
            transform: scale(2.2);
            top: 80px;
            left: 60px;
        }
        .box5 {
            width: 400px;
            height: 140px;
            border: 10px solid rgba(18, 62, 94, 0.11);
            position: relative;
            top: -420px;
            left: 480px;
            text-align: center;
            overflow: hidden;
            opacity: 0;
            animation: ani1 0.5s 2 forwards 0.5s;
        }
        .cp5 {
            transform: scale(2.2);
            top: 20px;
            left: 20px;
        }
        .box6 {
            width: 400px;
            height: 480px;
            border: 10px solid rgba(241, 177, 46, 0.1);
            position: relative;
            top: -920px;
            left: 910px;
            text-align: center;
            overflow: hidden;
            opacity: 0;
            animation: ani1 0.5s 2 forwards 0.3s;
        }
        @keyframes ani1 {
            0% {
                opacity: 1;
            }
            10% {
                opacity: 0;
            }
            20% {
                opacity: 1;
            }
            30% {
                opacity: 0;
            }
            40% {
                opacity: 1;
            }
            50% {
                opacity: 0;
            }
            60% {
                opacity: 1;
            }
            70% {
                opacity: 0;
            }
            80% {
                opacity: 1;
            }
            90% {
                opacity: 0;
            }
            100% {
                opacity: 1;
            }
        }
        .cp6 {
            transform: scale(1.7);
            top: 100px;
        }
        .tx2 h2 {
            color: rgba(255, 216, 0, 0.83);
        }
        .box1:hover ,.box2:hover,.box3:hover,.box4:hover,.box5:hover,.box6:hover {
            box-shadow: 0 10px 10px rgba(0, 0, 0, 0.41);
        }
        .headerpart {
            position: absolute;
            top: 0px;
            width: 100%;
            background: rgba(0, 0, 0, 0.52);
            height: 50px;
        }
        .notification {
            width: 100px;
            height: 50px;
            position: fixed;
            right: 60px;
            top: 0px;
        }
        .notisvg polygon {
            fill: rgba(0, 97, 169, 0.3);
            position: absolute;
        }
        .noticount {
            font-family: 'Motion Control';
            color: rgba(255, 216, 0, 0.83);
            font-size: 30px;
            position: absolute;
            top: 10px;
            left: 15px;
            transition: 0.1s ease;
        }
        .eff1 {
            position: relative;
        }
        .eff1:nth-child(2) {
            opacity: 0;
            animation: eff 0.5s linear forwards 0.3s;
        }
        @keyframes eff {
            0% {
                opacity: 0;
            }
            10% {
                opacity: 1;
            }
            20% {
                opacity: 0;
            }
            30% {
                opacity: 1;
            }
            40% {
                opacity: 0;
            }
            50% {
                opacity: 1;
            }
            100% {
                opacity: 1;
            }
        }
        .eff1:nth-child(3) {
            opacity: 0;
            animation: eff 0.5s linear forwards 0.4s;
        }
        .notivalfromserver {
            color: rgba(255, 216, 0, 0.83);
            border-radius: 2px;
            font-size: 25px;
            width: 10px;
            height: 10px;
            padding: 3px;
            font-family: 'Motion Control';
            position: absolute;
            right: 30px;
        }
        .notivalfromserver2 {
            color: rgba(0, 255, 255, 0.66));
            border-radius: 2px;
            font-size: 25px;
            width: 10px;
            height: 10px;
            padding: 3px;
            font-family: 'Motion Control';
            position: absolute;
            top: 0px;
            right: 30px;
        }
        .notivalfromserver3 {
            color: rgba(255, 216, 0, 0.83);
            border-radius: 2px;
            font-size: 25px;
            width: 10px;
            height: 10px;
            padding: 3px;
            font-family: 'Motion Control';
            position: absolute;
            right: 30px;
        }
        .notivalfromserver9 {
            color: rgba(255, 216, 0, 0.83);
            border-radius: 2px;
            font-size: 25px;
            width: 10px;
            height: 10px;
            padding: 3px;
            font-family: 'Motion Control';
            position: absolute;
            right: 30px;
        }
        .headerpart h2 {
            color: rgba(255, 216, 0, 0.83);
            text-shadow: 0 0 10px rgba(255, 216, 0, 0.3);
            font-family: 'Motion Control';
            font-size: 50px;
            letter-spacing: 2px;
            padding-left: 10px;
            font-style: italic;
        }
        .progressbox {
            position: absolute;
            width: 1280px;
            height: 30px;
            background: rgba(0, 0, 0, 0.34);
            bottom: 300px;
            left: 50px;
            animation: progressbar1 0.5s linear forwards;
        }
        @keyframes progressbar1 {
            0% {
                opacity: 1;
            }
            50% {
              opacity: 1;
            }
            60% {
                opacity: 0;
            }
            70% {
              opacity: 1;
            }
            80% {
                opacity: 0;
            }
            90% {
              opacity: 1;
            }
            100% {
                opacity: 0;
            }
        }
        .progressbar {
            position: relative;
            box-shadow: 0 0 10px rgba(0, 255, 255, 0.66);
            height: 2px;
            width: 0%;
            top: 15px;
            background: rgba(0, 255, 255, 0.66);
            animation: progressbar2 0.5s linear forwards;
        }
        @keyframes progressbar2 {
            0% {
                width: 0%;
            }
            100% {
                width: 100%;
            }
        }
        .notiicon {
            font-family: Webdings;
            position: absolute;
            right: 50px;
            color: rgba(255, 216, 0, 0.83);
            font-size: 27px;
            letter-spacing: -8px;
        }
        .welcomebox {
            width: 1280px;
            background: rgba(0, 0, 0, 0.74);
            height: 50px;
            position: absolute;
            bottom: 40px;
            left: 50px;
            overflow: hidden;
            animation: welbox 0.5s linear forwards 5s;
        }

        @keyframes welbox2 {
            0% {
                opacity: 1;
            }
            10% {
                opacity: 0;
            }
            20% {
                opacity: 1;
            }
            30% {
                opacity: 0;
            }
            40% {
                opacity: 1;
            }
            50% {
                opacity: 0;
            }
            60% {
                opacity: 1;
            }
            70% {
                opacity: 0;
            }
            80% {
                opacity: 1;
            }
            90% {
                opacity: 0;
            }
            100% {
                opacity: 1;
            }
        }

        @keyframes welbox {
            0% {
                opacity: 0;
            }
            10% {
                opacity: 1;
            }
            20% {
                opacity: 0;
            }
            30% {
                opacity: 1;
            }
            40% {
                opacity: 0;
            }
            50% {
                opacity: 1;
            }
            60% {
                opacity: 0;
            }
            70% {
                opacity: 1;
            }
            80% {
                opacity: 0;
            }
            90% {
                opacity: 1;
            }
            100% {
                opacity: 0;
            }
        }
        .welcir1 {
            width: 1800px;
            border-radius: 0% 100% 100% 0%;
            height: 100px;
            box-shadow: -15px 0px 25px rgba(5, 120, 206, 0.3) inset, -30px 0px 50px rgba(0, 255, 255, 0.5) inset, 10px 0px 30px rgba(0, 255, 255, 0.8);
            position: relative;
            top: -25px;
            animation: welcir 1s linear forwards 1s;
        }
        @keyframes welcir {
            0% {
                left: -1800px;
            }
            100% {
                left: 0px;
            }
        }
        .adminwelcometext {
            color: rgba(0, 255, 255, 0.66);
            font-size: 50px;
            position: relative;
            text-align: center;
            top: -100px;
            font-family: 'Motion Control';
            opacity: 0;
            animation: weltext 1s linear forwards 1.5s;
        }
        @keyframes weltext {
            0% {
                opacity: 0;
            }
            8% {
                opacity: 1;
            }
            16% {
                opacity: 0;
            }
            24% {
                opacity: 1;
            }
            32% {
                opacity: 0;
            }
            40% {
                opacity: 1;
            }
            79% {
                text-shadow: 0 0 0px rgba(0, 255, 255, 0.66);
            }
            80% {
                text-shadow: 0 0 10px rgba(0, 255, 255, 0.66);
            }
            100% {
                opacity: 1;
                text-shadow: 0 0 10px rgba(0, 255, 255, 0.66);
            }
        }
        .moreoptionsbox {
            position: fixed;
            bottom: 40px;
            right: 30px;
            width: 150px;
            height: 50px;
            opacity: 0;
            animation: mroptani 0.5s linear forwards 6s;
        }
        @keyframes mroptani {
            0% {
                opacity: 1;
            }
            10% {
                opacity: 0;
            }
            20% {
                opacity: 1;
            }
            30% {
                opacity: 0;
            }
            40% {
                opacity: 1;
            }
            50% {
                opacity: 0;
            }
            60% {
                opacity: 1;
            }
            70% {
                opacity: 0;
            }
            80% {
                opacity: 1;
            }
            90% {
                opacity: 0;
            }
            100% {
                opacity: 1;
            }            
        }
        .moreoptiontext {
            position: absolute;
            color: rgba(255, 216, 0, 0.83);
            font-family: 'Motion Control';
            font-size: 40px;
            top: 5px;
            left: 15px;
            text-shadow: 0 0 10px rgba(255, 216, 0, 0.83);
        }
        .ploy1:nth-child(2) {
            animation: poly1ani 2s ease infinite 6s;
        }
        .ploy1:nth-child(3) {
            animation: poly1ani 2s ease infinite 6.1s;
        }
        @keyframes poly1ani {
            0% {
                opacity: 0;
            }
            100% {
                opacity: 1;
            }
        }
        .n2 {
            left: 20px;
        }
        .logoutbtn {
            font-family: Webdings Regular;
            position: absolute;
            top: 5px;
            right: 5px;
            font-size: 40px;
            background: rgba(0, 0, 0, 0.00);
            color: rgba(255, 216, 0, 0.83);
            border: none;
            cursor: pointer;
            outline: none;
            transition: 0.2s ease-in-out;
        }
        .logoutbtn:hover {
            color: rgb(255, 39, 24);
            text-shadow: 0 0 5px rgba(255, 0, 0, 1);
        }
        .detailsicon {
            font-family: Webdings;
            position: absolute;
            right: 50px;
            color: #0061a9;
            font-size: 27px;
            letter-spacing: -8px;
        }
        .loading {
            z-index: 1000;
            background: rgba(255, 255, 255, 0.32);
            width: 100%;
            height: 100vh;
        }
        .loading img {
            width: 10%;
            height: 10%;
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%,-50%);
        }
    </style>
    <script type="text/javascript">
        var el2=0;
        window.onload = function noticounter() {
            var el1 = document.getElementsByClassName("noticount");
            var val1 = parseInt(document.getElementsByClassName("notivalfromserver3")[0].innerHTML); 
            var val2 = parseInt(document.getElementsByClassName("notivalfromserver")[0].innerHTML);
            var val3 = parseInt(document.getElementsByClassName("notivalfromserver9")[0].innerHTML);

            var el3 = (val1 + val2 + val3);

            if (el3 > 0) {
                el2 = el2 + 1;
                el1[0].innerHTML = el2;
            }
            if (el2 < el3) {
                setTimeout(noticounter, 100);
            }
        }
    </script>
</head>
<body>
    <form runat="server">
            <div class="backgrounditems">
            <div class="bars b1"></div>
            <div class="bars b2"></div>
            <div class="bars b3"></div>

            <div class="circel c1"></div>
             <div class="circel c2"></div>
             <div class="circel c3"></div>
        </div>

    <div class="headerpart">
        <h2>LUCI</h2>
        <asp:Button ID="Button1" runat="server" ToolTip="Logout" Text="d" CssClass="logoutbtn" OnClick="Button1_Click" />
        <div class="notification">
            <svg class="notisvg" width="100" height="50">
                <polygon points="0,45 10,5 70,5 60,45"></polygon>
                <polygon points="65,45 75,5 85,5 75,45" style="fill: rgba(0, 97, 169, 0.2);" class="eff1"></polygon>
                <polygon points="80,45 90,5 100,5 90,45" style="fill: rgba(0, 97, 169, 0.1);" class="eff1"></polygon>
                 <asp:Label ID="Label1" runat="server" Text="0" CssClass="noticount" ToolTip="Total Notifications"></asp:Label>
            </svg>
        </div>
    </div>
    
    <div class="mainconainter">

        <div class="box1">
            <a href="../ADMIN/itemdetails.aspx">
                <img src="../Images/Cover/pic2.jpg" class="coverphoto cp1" />
                <div class="headingsection">
                    <h2>ITEMS DETAILS</h2>
                    <asp:Label ID="Label8" runat="server" Text="//" CssClass="detailsicon"></asp:Label>
                    <asp:Label ID="Label5" runat="server" Text="" CssClass="notivalfromserver2"></asp:Label>
                </div>
            </a>
        </div>
        <div class="box2">
            <a href="../ADMIN/Productapproval.aspx">
                <img src="../Images/Cover/pic3.jpg" class="coverphoto cp2" />
                <div class="headingsection">
                    <h2>ITEM APPROVAL</h2>
                    <asp:Label ID="Label11" runat="server" Text="//" CssClass="notiicon"></asp:Label>
                    <asp:Label ID="Label3" runat="server" Text="12" CssClass="notivalfromserver3"></asp:Label>
                </div>
            </a>
        </div>
        <div class="box3">
            <a href="../ADMIN/userdetails.aspx">
                <img src="../Images/Cover/pic4.jpg" class="coverphoto cp3" />
                <div class="headingsection">
                    <h2>USER DETAILS</h2>
                    <asp:Label ID="Label9" runat="server" Text="//" CssClass="detailsicon"></asp:Label>
                    <asp:Label ID="Label6" runat="server" Text="" CssClass="notivalfromserver2"></asp:Label>
                </div>
            </a>
        </div>
        <div class="box4">
            <a href="../ADMIN/addetails.aspx">
                <img src="../Images/Cover/pic5.jpg" class="coverphoto cp4" />
                <div class="headingsection">
                    <h2>ADVERTISMENT DETAILS</h2>
                    <asp:Label ID="Label10" runat="server" Text="//" CssClass="detailsicon"></asp:Label>
                    <asp:Label ID="Label7" runat="server" Text="" CssClass="notivalfromserver2"></asp:Label>
                </div>
            </a>
        </div>
        <div class="box5">
            <a href="../ADMIN/addapproval.aspx">
                <img src="../Images/Cover/pic6.jpg" class="coverphoto cp5" />
                <div class="headingsection">
                    <h2>ADVERTISMENT APPROVAL</h2>
                    <asp:Label ID="Label12" runat="server" Text="//" CssClass="notiicon"></asp:Label>
                    <asp:Label ID="Label4" runat="server" Text="0" CssClass="notivalfromserver9"></asp:Label>
                </div>
            </a>
        </div>
        <div class="box6">
            <a href="../ADMIN/userapproval.aspx">
                <img src="../Images/Cover/pic7.jpg" class="coverphoto cp6" />
                <div class="headingsection tx2">
                    <h2>USER APPROVAL</h2>
                    <asp:Label ID="Label13" runat="server" Text="//" CssClass="notiicon"></asp:Label>
                    <asp:Label ID="Label2" runat="server" Text="Label" CssClass="notivalfromserver"></asp:Label>
                </div>
            </a>
        </div>
    </div>

    <div class="progressbox">
        <div class="progressbar">

        </div>
    </div>
    <div class="welcomebox">
        <div class="welcir1"></div>
        <h2 class="adminwelcometext">WELCOME TO ADMIN INTERFACE</h2>
    </div>
    <div class="moreoptionsbox">
        <a href="../ADMIN/AdminHome.aspx">
            <h3 class="moreoptiontext">MORE</h3>
            <svg>
                <polygon class="ploy1" points="0,0 100,0 115,25 100,50 0,50" style="fill: rgba(0, 97, 169, 0.80);"></polygon>
                <polygon class="ploy1" points="110,0 120,0 135,25 120,50 110,50 125,25" style="fill: rgba(0, 97, 169, 0.40);"></polygon>
                <polygon class="ploy1" points="130,0 140,0 155,25 140,50 130,50 145,25" style="fill: rgba(0, 97, 169, 0.10);"></polygon>
            </svg>
        </a>
    </div>
     </form>
</body>
</html>
