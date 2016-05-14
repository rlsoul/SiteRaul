<!-- #include file="./include/header.asp" -->
<% Response.Charset="UTF-8" %>
<script>
      $(document).ready(function(){
	  
	  
	  $("#rss-default").rss("http://feeds.folha.uol.com.br/tec/rss091.xml").show();

		$("#rss-styled").rss("http://feeds.folha.uol.com.br/tec/rss091.xml", {
			limit: 5,
			layoutTemplate: '<dl class="dl-horizontal">{entries}</dl>',
			entryTemplate: '<dt><a href="{url}">{title}</a></dt><dd>{shortBodyPlain}[{author}@{date}]</dd>'
		}).show();

		$("#rss-metro").rss("http://feeds.folha.uol.com.br/tec/rss091.xml", {
			limit: 4,
			layoutTemplate: '<span id="entries">{entries}</span>',
			entryTemplate: '<a href="{url}">{title}</a>|'
		}).show();

		});
</script>



<div>
	<h1>Notícias sobre Tecnologia</h1>
	<h2>Principais</h2>
	<div id="rss-default" class="well" style="display: none;"></div>
	<h2>Interessantes<small> outros assuntos</small></h2>
	<div id="rss-styled" class="well" style="display: none;"></div>
	<h2>Metro <small>for a customer</small></h2>
	<div id="rss-metro" class="well" style="display: none;"></div>
</div>

<p>CSS provided by <a href="http://getbootstrap.com/">Bootstrap</a>, an unrelated project</p>


<!-- #include file="./include/footer.asp" -->
