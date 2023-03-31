<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Gallery.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>Untitled Document</title>
        <meta http-equiv="content-type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="" />
        <meta name="description" content="" />
        <link href="image_gallary.css" rel="stylesheet" type="text/css" />
        <script type="text/javascript" src="jquery/cufon-yui.js"></script>
        <script type="text/javascript" src="jquery/Onyx_400.font.js"></script>
        <script type="text/javascript">
            Cufon.replace('h1')('h2')('h3')('h4')('h6')('.onix')('#row2 .read_more a')('#logo')('#buttons a')('.top_block_1');
        </script>

        <!-- Pirobox setup and styles -->
        <script type="text/javascript" src="jquery/jquery-1.3.2.min.js"></script>
        <script type="text/javascript" src="jquery/pirobox.js"></script>
        <script type="text/javascript">
            $(document).ready(function () {
                $().piroBox({
                    my_speed: 400, //animation speed
                    bg_alpha: 0.1, //background opacity
                    slideShow: false, // true == slideshow on, false == slideshow off
                    slideSpeed: 4, //slideshow duration in seconds(3 to 6 Recommended)
                    close_all: 'piro_close,.piro_overlay'// add class .piro_overlay(with comma)if you want overlay click close piroBox

                });
            });


            $(document).ready(function () {
                $().piroBox({
                    my_speed: 400, //animation speed
                    bg_alpha: 0.1, //background opacity
                    slideShow: false, // true == slideshow on, false == slideshow off
                    slideSpeed: 4, //slideshow duration in seconds(3 to 6 Recommended)
                    close_all: '.piro_close,.piro_overlay'// add class .piro_overlay(with comma)if you want overlay click close piroBox

                });
            });
        </script>
        <link href="images/style.css" rel="stylesheet" type="text/css" />
        <!-- Pirobox setup and styles end-->


         <!-- gallary-->

        <meta http-equiv="content-type" content="text/html; charset=utf-8" />
        <title>Metamorphosis Design Free Css Templates</title>
        <meta name="keywords" content="" />
        <meta name="description" content="" />
        <link href="css/styles_gall.css" rel="stylesheet" type="text/css" />
        <!-- Pirobox setup and styles -->

        <script type="text/javascript" src="js/pirobox.js"></script>
        <link href="css/style_gall.css" rel="stylesheet" type="text/css" />
    </head>
        <body>
        <div class="main">
       <div id="main_bg">
                <div id="main">
                    <!-- content begins -->
                    <div class="cont_top">
                       
                    </div>
                    <div id="content">
                        <div class="row">
                            <div class="box_img2">

                                <div class="g1 g_size">
                                
                                
                               
                                
                                <a href="images_gall/p1.jpg"  class="pirobox_gal1" title="1st Project Image"> </a>
                                
                                
                                
                                </div>
                                
                                   
                                
                                
                               

                            </div><div class="box_razd"></div>
                            <div class="box_img2">
                                <div class="g2 g_size"><a href="images_gall/p2.jpg" class="pirobox_gal1" title="2nd Project Image"></a></div>
                            </div>
                            <div class="box_razd"></div>
                            <div class="box_img2">
                                <div class="g3 g_size"><a href="images_gall/p3.jpg" class="pirobox_gal1"  title="3rd Project Image"></a></div>
                            </div>
                        </div>
                        <div style="height:15px"></div>
                        <div class="row">
                            <div class="box_img2">
                                <div class="g4 g_size"><a href="images_gall/p4.jpg" class="pirobox_gal1" title="4th Project Image"></a></div>
                            </div>
                            <div class="box_razd"></div>
                            <div class="box_img2">
                                <div class="g5 g_size"><a href="images_gall/p5.jpg" class="pirobox_gal1" title="5th Project Image"></a></div>
                            </div>
                            <div class="box_razd"></div>
                            <div class="box_img2">
                                <div class="g6 g_size"><a href="images_gall/p6.jpg" class="pirobox_gal1" title="6th Project Image"></a></div>
                            </div>
                        </div>
                        <div style="height:15px"></div>
                        <div class="row">
                            <div class="box_img2">
                                <div class="g7 g_size"><a href="images_gall/p7.jpg" class="pirobox_gal1" title="7th Project Image"></a></div>
                            </div>
                            <div class="box_razd"></div>
                            <div class="box_img2">
                                <div class="g8 g_size"><a href="images_gall/p8.jpg" class="pirobox_gal1"  title="8th Project Image"></a></div>
                            </div>
                            <div class="box_razd"></div>
                            <div class="box_img2">
                                <div class="g9 g_size"><a href="images_gall/p9.jpg" class="pirobox_gal1"  title="9th Project Image"></a></div>
                            </div>
                        </div><div style="height:15px"></div>

                        <!-- content ends --> 

                        </form>
                    </div>
                    <div style="clear: both"></div>
                </div>
            </div>

        </div>
        </DIV>

            
    </body>
</html>
</asp:Content>

