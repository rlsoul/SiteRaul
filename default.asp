<!-- Include Header -->
<!-- #include file="./include/header.asp" -->

	<style>
		[data-sr] {
			visibility: hidden;
		}
	</style>
	<script>
		$(function () {
			$(".element").typed({
				strings: ["Saúde / Bem estar / Autoestima"],
				typeSpeed: 70,
				showCursor: false,
			});
		});
	
		$(function () {
			$('a[href*=#]:not([href=#])').click(function () {
				if (location.pathname.replace(/^\//, '') == this.pathname.replace(/^\//, '') && location.hostname == this.hostname) {

					var target = $(this.hash);
					target = target.length ? target : $('[name=' + this.hash.slice(1) + ']');
					if (target.length) {
						$('html,body').animate({
							scrollTop: target.offset().top
						}, 1000);
						return false;
					}
				}
			});
		});
	</script>
	<div class="bar"></div>

	<ul id="slider" style="list-style: none; width: 100%; height: 100%; padding: 0; margin: 0;" class="hde">
		<li>
			<img src="img/slide1.jpg"></li>
		<li>
			<img src="img/slide2.jpg"></li>
		<li>
			<img src="img/slide3.jpg"></li>

	</ul>


	<script type="text/javascript">
		$(function () {
			var demo1 = $("#slider").slippry({
				transition: 'kenburns',
				useCSS: true,
				speed: 5000,
				pause: 9000,
				auto: true,
				controls: false,
				preload: 'visible',
				autoHover: false
			});

		});
	</script>
	<!-- header panel -->
	<!-- bar loader -->

	<div class="container-fluid prx-b" id="header">
		<div class="row">
			<div class="col-sm-4">


				<a href="#cd-nav" class="cd-nav-trigger">Menu
					<span class="cd-nav-icon"></span>

					<svg x="0px" y="0px" width="54px" height="54px" viewBox="0 0 54 54">
						<circle fill="transparent" stroke="#fff" stroke-width="1" cx="27" cy="27" r="25" stroke-dasharray="157 157" stroke-dashoffset="157"></circle>
					</svg>
				</a>

				<div id="cd-nav" class="cd-nav index bgcover">
					<div class="cd-navigation-wrapper bg-xs">
						<div class="cd-half-block">

							<h2>
								<img src="img/sep.gif" alt="separator"><br />
								Menu</h2>

							<nav>
								<ul class="cd-primary-nav">
									<li><a href="default.asp" class="selected">Home</a></li>
									<li><a href="#">RSS</a><span><a href="RSSTecnologia.asp">Tecnologia</a> &nbsp;/&nbsp; <a href="RSSCiencia.asp">Saúde</a></span></li>
									<li><a href="login.asp">Colaboradores</a></li>
								</ul>
							</nav>
						</div>
						<!-- .cd-half-block -->

						<div class="cd-half-block">
							<address>
								<ul class="cd-contact-info">
									<li><a href="mailto:oiraul@hotmail.com">oiraul@hotmail.com</a></li>
									<li>1199999999</li>
									<li>
										<span>São Paulo, Brasil</span>
									</li>
								</ul>
							</address>
						</div>
						<!-- .cd-half-block -->
					</div>
					<!-- .cd-navigation-wrapper -->
				</div>
				<!-- .cd-nav -->


			</div>
			<div class="col-sm-4 z1">
			</div>
			<div class="col-sm-4 social no-space z1">
				<ul class="hde-social">
					<li><a href="https://www.linkedin.com/in/raul-almeida-b478456b" target="_blank"><span class="socicon">Linkedin</span></a></li>
				</ul>
			</div>
		</div>
		<div class="row">
			<div class="col-sm-12">
				<div class="caption">
					<h1 class="element"></h1>
					<span>Nosso compromisso, é transformar corpo e mente, entregar além de qualidade no atendimento, conceitos em beleza e estética.</span>

					<p class="m-button">
						<a href="webdocs/Curriculo_RaulAlmeida.pdf" class="ghost-button" target="_blank">CV</a>
					</p>


					<div id="mice">
						<a href="#scroll">
							<div class="mouse">
								<div class="wheel"></div>
							</div>
							<div><span class="unu"></span><span class="doi"></span></div>
						</a>
					</div>

				</div>
			</div>
		</div>
	</div>

	<div class="container-fluid zp">

		<div class="row">
			<div class="col-sm-6 no-space">
				<div class="grid">
					<a href="graphics.html" class="thumb active" title="image">
						<img src="img/background-home-1920x1044.jpg" alt="logo fcamara principal">
						<div class="text-overlay">
							<!--<h1 class="text-center">1280x900</h1>-->
						</div>
					</a>
				</div>
			</div>
			<div class="col-sm-6 no-space">
				<div id="slider">
					<figure id="scroll">
						<a href="graphics.html">
							<img src="img/solucoes-negocios4-1920x960.jpg" alt="logo marina"></a>
						<a href="graphics.html">
							<img src="img/trabalhe-conosco-1.jpg" alt="logo inspiracity"></a>
						<a href="web.html">
							<img src="img/img-03-3-1920x476.jpg" alt="website toytown"></a>
						<a href="graphics.html">
							<img src="img/consultoria-de-resultados5-1920x960.jpg" alt="logo gars and co"></a>
					</figure>
				</div>

			</div>
		</div>

		<p id="back-top"><a href="#top"><span></span></a></p>

		<!-- Resource jQuery -->
		<script src="js/main.js"></script>
		<script src="js/scrollReveal.min.js?ver=2.1.0"></script>
		<script src="js/parallax.js" defer></script>

		<script type="text/javascript">
			(function ($) {
				'use strict';
				window.sr = new scrollReveal({
					reset: false,
					move: '50px',
					mobile: false
				});
			})();
		</script>

		<script type="text/javascript">
			(function (i, s, o, g, r, a, m) {
				i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () {
					(i[r].q = i[r].q || []).push(arguments)
				}, i[r].l = 1 * new Date(); a = s.createElement(o),
				m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m)
			})(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');

			ga('create', 'UA-9313479-2', 'auto');
			ga('send', 'pageview');

		</script>

		<div id="awwwards" class="nominee white left">
			<a href="http://www.awwwards.com" target="_blank">Awwwards</a>
		</div>
<!-- #include file="./include/footer.asp" -->