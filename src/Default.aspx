<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Batsamayi</title>

    <link rel="shortcut icon" type="image/png" href="BatsamayiFav.png" />

    <script src="//code.jquery.com/jquery-1.10.2.js"></script>
    <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Bootstrap Core CSS - Uses Bootswatch Flatly Theme: http://bootswatch.com/flatly/ -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/freelancer.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <!--Afikile has some work-->


    <style>
        body {
            background-color: white;
            margin:0;
            min-width:600px;
        }
        body, html {
            min-height: 100%;
            min-width:600px;
        }

/*MENU*/
        ul#menu {
            padding: 0;
        }
        ul#menu li {
            display: inline;
            margin-left:5px;
        }
        ul#menu li a {
            background-color:gray;
            color:#ececec;
            padding: 10px 20px;
            text-decoration: none;
            border-radius: 4px 4px 0 0;
        }
        ul#menu li a:hover {
            background-color: darkgray;
        }
        div {
            /*background-image:url(Batsamayi.jpg);*/
            background-repeat: no-repeat;
            background-size: cover;
        }

        .Menu {
            margin-left: 300px;
            font-family:'Cordia New';
            font-size: xx-large;
            font-style:normal;
            font-weight:800;
        }
/*MENU END*/

/*BUTTONS*/
        .Button {
            padding: 5px;
            margin: 5px 20px;
            border: solid 1px rgba(0,0,0,0.3);
            background: rgba(0,123,37,0.9);
            box-shadow: inset 0 -1px rgba(255,255,255,0.3), inset 0px -4px 2px rgba(255,255,255,0.2);
            width: 260px;
            height: 40px;
            border-radius: 5px;
            font: 15px Segoe UI,sans-serif;
            color: white;
            -webkit-transition: background 1s ease,margin-top 0.4s ease;
            -ms-transition: background .5s ease,margin-top 1s ease;
            -moz-transition: background .5s ease,margin-top 1s ease;
            -o-transition: background .5s ease,margin-top 1s ease;
        }
        .Button:hover {
            background: rgba(0,0,0,0.5);
        }
        #divTLA #toggle {
            width: 280px;
            height: 90px;
            background: #ececec;
            text-align:center;
            margin-left:41%;
            margin-top:5%;
        }
/*BUTTONS END*/
/*divBatsamayi*/   
        #divBatsamayi {
            align-content:center;
        }
        #divTLA {
            text-align:center;
            }
    </style>


</head>

<body>
    <form id="formBatsamayi" runat="server">
        <div style="min-width:600px">
<%--MENU--%>
        <div style="height:100px; text-align:center;">
            <ul id="menu">
                <li><a href="#divBatsamayi">Batsamayi</a></li>
                <li><a href="#divTLA">&nbsp;&nbsp;TLA&nbsp;&nbsp;</a></li>
                <li><a href="#divLinks">&nbsp;&nbsp;Links&nbsp;&nbsp;</a></li>

            </ul>
        </div>

<%--Batsamayi--%>
        <div id="divBatsamayi" style="background-repeat: no-repeat; background-size: cover; min-width:100%; min-height:100%; text-align:center;">
            <asp:Image ID="im" ImageUrl="~/BatsamayiBackground2.jpg" Style="" runat="server"></asp:Image>
        </div>
<%--SaturdayGig--%>
        <div style="height:350px; background-color:gray; text-align:center;">
            <asp:Image ID="Image1" ImageUrl="~/ComingSoon.jpg" Style="" runat="server"></asp:Image>
        </div>

<%--TLA--%>
        <div id="divTLA" style="background-repeat: no-repeat; background-size: cover; background-color:white; height: 200px;">

            <div id="toggle">
                    <asp:ImageButton ID="ImgTlaa" Width="280px" OnClientClick="PlaySound()" ImageUrl="~/TLA.png" runat="server" />
                    <script>
                        function DHTMLSound(surl) {
                            document.getElementById("dummyspan").innerHTML = "<embed src='" + surl + "' hidden=true autostart=true loop=false>";
                        }

                        //TLA BUTTON EXPLODE
                        $(document).click(function ()
                        { $("#toggle").effect("shake"); });

                        var val = true;

                        if (val) {
                            $(document).click(function ()
                            { $("#toggle").toggle("explode"); $("#toggle").toggle("explode"); });
                            val = false;
                        }

    </script>
            </div>
        </div>

<%--SaturdayGig--%>
        <%--<div id="divSaturdayGig1" style="height:100px; background-color:gray">

        </div>--%>

<%--SaturdayGig--%>
        <div id="divLinks" style="height:50px; background-color:white; text-align:center;">
            <ul id="menu" style="background-color:white; color:red;">
                <li><a href="https://www.facebook.com/Batsamayi">Facebook</a></li>
                <li><a href="https://twitter.com/batsamayi">Twitter</a></li>
                <li><a href="https://www.youtube.com/watch?v=62eZoY7ha_M">YouTube</a></li>
            </ul>
        </div>

        </div>
    </form>
</body>

</html>
