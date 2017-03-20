<html>


<head>
				<SCRIPT LANGUAGE="JavaScript" SRC="js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="css/bootstrap.min.css" />
        <link rel="stylesheet" href="css/bootstrap-theme.min.css" />
				<meta charset="utf-8"></meta>

				<title>Mashup PocSales</title>
</head>


<script>
	function changeTab(nav,panel){

		document.getElementById('navSegVia').className = '';
		document.getElementById('navLibSenha').className = '';

		document.getElementById('SegundaVia').className='tab-pane ';
		document.getElementById('LiberarSenha').className='tab-pane ';

		document.getElementById(nav).className = 'active';
		document.getElementById(panel).className='tab-pane active';
	}
</script>

<body>

	<div class="container-fluid" id="fullPage" style="background:url('images/bgr_topo_body.jpg') top center no-repeat;font-size:10px;color:#797F8B">
            <div class="page-header" >
                &nbsp;
                <img src="images/img_logo.png" class="image-responsive"></img>
            </div>
    </div>

	<ul class="nav nav-tabs">
	  <li role="presentation" class="active" id="navSegVia"><a href="#" onclick="changeTab('navSegVia','SegundaVia')" >Segunda Via</a></li>
	  <li role="presentation" id="navLibSenha"><a href="#" onclick="changeTab('navLibSenha','LiberarSenha')" >Liberar Senha</a></li>
	</ul>

	<div class="tab-content">
		<div role="tabpanel" class="tab-pane active" id="SegundaVia">
			<form method="POST" action="solicitarSegundaVia">

				<div class="container-fluid">

				  <div class="form-group">
				    <label for="caso"># Caso:</label>
						<input type="text" value='<%= request.getParameter("caso") %>' name="caso" class="form-control"/>
				  </div>

					<div class="form-group">
				    <label for="protocolo"># Protocolo:</label>
						<input type="text" value='<%= request.getParameter("protocolo") %>' name="protocolo" class="form-control"/>
				  </div>

					<div class="form-group">
				    <label for="carterinha"># Carterinha:</label>
						<input type="text" value='<%= request.getParameter("carterinha") %>' name="carterinha" class="form-control"/>
				  </div>

			  	<button type="submit" class="btn btn-default">Solicitar Segunda Via</button>
				</div>
			</form>
		</div>

<div role="tabpanel" class="tab-pane" id="LiberarSenha">

	<form method="POST" action="liberarSenha">

		<div class="container-fluid">

		  <div class="form-group">
		    <label for="caso"># Caso:</label>
				<input type="text" value='<%= request.getParameter("caso") %>' name="caso" class="form-control"/>
		  </div>

			<div class="form-group">
		    <label for="protocolo"># Protocolo:</label>
				<input type="text" value='<%= request.getParameter("protocolo") %>' name="protocolo" class="form-control"/>
		  </div>

			<div class="form-group">
		    <label for="carterinha"># Carterinha:</label>
				<input type="text" value='<%= request.getParameter("coddentista") %>' name="carterinha" class="form-control"/>
		  </div>

	  	<button type="submit" class="btn btn-default">Liberar Senha</button>
		</div>


	</form>

</div>

</div>





<!--form method="POST" action="solicitarSegundaVia" >
	<label>Caso:</label><input type="text" value="<%= request.getParameter("caso") %>" name="caso" /><br/>
    <label>Protocolo:</label><input type="text" value="<%= request.getParameter("protocolo") %>" name="protocolo" /><br/>
    <label>Carterinha:</label><input type="text" value="<%= request.getParameter("carterinha") %>" name="carterinha" />  <br/>
    <input type="submit" value="SolicitarSegundaVia" />
</form>

<form method="POST" action="liberarSenha" >
	<label>Caso:</label><input type="text" value="<%= request.getParameter("caso") %>" name="caso" /><br/>
    <label>Protocolo:</label><input type="text" value="<%= request.getParameter("protocolo") %>" name="protocolo" /><br/>
    <label>Código Dentista:</label><input type="text" value="<%= request.getParameter("coddentista") %>" name="coddentista" /><br/>
    <input type="submit" value="LiberarSenha" />
</form-->


</body>
</body>
</html>
