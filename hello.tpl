<!doctype html>
<html><head>
    <meta charset="utf-8">
    <title>BLOCKS - Bootstrap Dashboard Theme</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Carlos Alvarez - Alvarez.is">

    <!-- Le styles -->
    <link href="assets/css/bootstrap.css" rel="stylesheet">
    <link href="assets/css/main.css" rel="stylesheet">
    <link href="assets/css/font-style.css" rel="stylesheet">
    <link href="assets/css/flexslider.css" rel="stylesheet">
    <link href="assets/css/font-awesome.css" rel="stylesheet">
    
	<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>

    <style type="text/css">
      body {
        padding-top: 60px;
      }
    </style>

    <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

    <!-- Le fav and touch icons -->
    <link rel="shortcut icon" href="assets/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="assets/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="assets/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="assets/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="assets/ico/apple-touch-icon-57-precomposed.png">

  	<!-- Google Fonts call. Font Used Open Sans & Raleway -->
	<link href="http://fonts.googleapis.com/css?family=Raleway:400,300" rel="stylesheet" type="text/css">
  	<link href="http://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet" type="text/css">

<script type="text/javascript">
$(document).ready(function () {

    $("#btn-blog-next").click(function () {
      $('#blogCarousel').carousel('next')
    });
     $("#btn-blog-prev").click(function () {
      $('#blogCarousel').carousel('prev')
    });

     $("#btn-client-next").click(function () {
      $('#clientCarousel').carousel('next')
    });
     $("#btn-client-prev").click(function () {
      $('#clientCarousel').carousel('prev')
    });
    
});

 $(window).load(function(){

    $('.flexslider').flexslider({
        animation: "slide",
        slideshow: true,
        start: function(slider){
          $('body').removeClass('loading');
        }
    });  
});

</script>


    
  </head>
  <body>
  
  	<!-- NAVIGATION MENU -->

    <div class="navbar-nav navbar-inverse navbar-fixed-top">
        <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="index.html"><img src="assets/img/logo30.png" alt=""> ROVER System - Mission to Mars</a>
        </div> 
          <div class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
             <!-- Add something here -->
            </ul>
          </div><!--/.nav-collapse -->
        </div>
    </div>

    <div class="container">

	  <!-- FIRST ROW OF BLOCKS -->     
      <div class="row">

      <!-- USER PROFILE BLOCK -->
        <div class="col-sm-3 col-lg-3">
      		<div class="dash-unit">
	      		<dtitle>Astronauta</dtitle>
	      		<hr>
				<div class="thumbnail">
					<img src="assets/img/armstrong80x80.jpg" alt="Marcel Newman" class="img-circle">
				</div><!-- /thumbnail -->
				<h1>Neil Armstrong</h1>
				<h3>ID: #2123</h3>
				</div>
        </div>

      <!-- DONUT CHART BLOCK -->
        <div class="col-sm-3 col-lg-3">   
      		<div class="dash-unit">
	      		<dtitle>Temperatura Externa</dtitle>
	      		<hr>
	      		<div class="info-user">
	      			<i class="fa fa-tachometer fa-2x" aria-hidden="true"></i>
	      		</div>
	      		<div class="cont">
	      			<p><bold id="temp">27°</bold></p>
	      			<p>Celsius</p>
	      		</div>
      		</div>
        </div>

      <!-- DONUT CHART BLOCK -->
        <div class="col-sm-3 col-lg-3">
      		<div class="dash-unit">
		  		<dtitle>Incidência de Raios</dtitle>
		  		<hr>
		  		<div class="info-user">
	      				<i class="fa fa-sun-o fa-2x" aria-hidden="true"></i>
	      			</div>
		  		<div class="cont">
		  			<p><bold id="lux">1600</bold></p>
      				<p>Radiancia</p>
		  		</div>	
	        	
			</div>
        </div>
        
        <div class="col-sm-3 col-lg-3">

      <!-- LOCAL TIME BLOCK -->
      		<div class="half-unit">
	      		<dtitle>Status da Missão</dtitle>
	      		<hr>
		      		<div class="cont">
		      			<span id="status" style="font-size: 20px;" class="label label-success">Em andamento</span>	      	
		      		</div>
			</div>

			<div class="half-unit">
	      		<dtitle>Hora em Marte</dtitle>
	      		<hr>
		      		<div class="clockcenter">
			      		<digiclock>12:45:25</digiclock>
		      		</div>
			</div>

        </div>
      </div><!-- /row -->


        <div class="row">

      <!-- USER PROFILE BLOCK -->
        <div class="col-sm-4 col-lg-4">
      	<div class="dash-unit">
		  		<dtitle>Controle</dtitle>
		  		<hr>	
	        	<div class="cont" style="width: 100%; height: 100%;">
	      			<button id="success" class="btn btn-success noty"  style="width: 80%; height: 80%;" data-noty-options="{&quot;text&quot;:&quot;Informação enviada.&quot;,&quot;layout&quot;:&quot;topRight&quot;,&quot;type&quot;:&quot;success&quot;}"><span style="font-size: 20px;">Prosseguir</span></button>
	      		</div>
			</div>
        </div>

      <!-- DONUT CHART BLOCK -->
        <div class="col-sm-4 col-lg-4">   
      		<div class="dash-unit">
		  		<dtitle>Controle</dtitle>
		  		<hr>	
	        	<div class="cont" style="width: 100%; height: 100%;">
	      			<button id="warning" class="btn btn-warning noty"  style="width: 80%; height: 80%;" data-noty-options="{&quot;text&quot;:&quot;Informação enviada.&quot;,&quot;layout&quot;:&quot;topRight&quot;,&quot;type&quot;:&quot;success&quot;}"><span style="font-size: 20px;">Atenção</span></button>
	      		</div>
			</div>
        </div>

      <!-- DONUT CHART BLOCK -->
        <div class="col-sm-4 col-lg-4">
      		<div class="dash-unit">
		  		<dtitle>Controle</dtitle>
		  		<hr>	
	        	<div class="cont" style="width: 100%; height: 100%;">
	      			<button id="danger" class="btn btn-danger noty"  style="width: 80%; height: 80%;" data-noty-options="{&quot;text&quot;:&quot;Informação enviada.&quot;,&quot;layout&quot;:&quot;topRight&quot;,&quot;type&quot;:&quot;success&quot;}"><span style="font-size: 20px;">Abortar</span></button>
	      		</div>
			</div>
        </div>
        
      </div><!-- /row -->
	</div> <!-- /container -->

	<div id="footerwrap">
      	<footer class="clearfix"></footer>
      	<div class="container">
      		<div class="row">
      			<div class="col-sm-12 col-lg-12">
      			<p><img src="assets/img/logo.png" alt=""></p>
      			<p>Blocks Dashboard Theme - Crafted With Love - Copyright 2013</p>
      			</div>

      		</div><!-- /row -->
      	</div><!-- /container -->		
	</div><!-- /footerwrap -->


    <!-- Le javascript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script type="text/javascript" src="assets/js/bootstrap.js"></script>
	
	<!-- NOTY JAVASCRIPT -->
	<script type="text/javascript" src="assets/js/noty/jquery.noty.js"></script>
	<script type="text/javascript" src="assets/js/noty/layouts/top.js"></script>
	<script type="text/javascript" src="assets/js/noty/layouts/topLeft.js"></script>
	<script type="text/javascript" src="assets/js/noty/layouts/topRight.js"></script>
	<script type="text/javascript" src="assets/js/noty/layouts/topCenter.js"></script>
	
	<!-- You can add more layouts if you want -->
	<script type="text/javascript" src="assets/js/noty/themes/default.js"></script>
    <!-- <script type="text/javascript" src="assets/js/dash-noty.js"></script> This is a Noty bubble when you init the theme-->
	<script src="assets/js/jquery.flexslider.js" type="text/javascript"></script>

    <script type="text/javascript" src="assets/js/admin.js"></script>

    <script type="text/javascript">

		$("#success").click(function() {
			$("#success").addClass("disabled");
			$("#warning").removeClass("disabled");
			$("#danger").removeClass("disabled");

			$("#status").removeClass();
			$("#status").addClass("label label-success");
			$("#status").text("Em andamento");
			$.post( "/comandos", { comando: "G"})
			.done(function( data ) {
			});

		});

		$( "#warning" ).click(function() {
			$("#warning").addClass("disabled");
			$("#success").removeClass("disabled");
			$("#danger").removeClass("disabled");

			$("#status").removeClass();
			$("#status").addClass("label label-warning");
			$("#status").text("Atenção");

			$.post( "/comandos", { comando: "Y"})
			.done(function( data ) {
			});
		});

		$( "#danger" ).click(function() {
			$("#danger").addClass("disabled");
			$("#success").removeClass("disabled");
			$("#warning").removeClass("disabled");

			$("#status").removeClass();
			$("#status").addClass("label label-danger");
			$( "#status").text("Abortada");

			$.post( "/comandos", { comando: "R"})
			.done(function( data ) {
			});
		});

		
		setInterval(function(){ 
			$.getJSON( "/medidas", function( data ) {
				$.each( data, function( key, val ) {
					$("#temp").text(val.temp);
					$("#lux").text(val.lux);
				});
			}); 
		}
		, 10000);

    </script>
  
</body></html>