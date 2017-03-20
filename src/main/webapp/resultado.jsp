<html>


<head>
				<SCRIPT LANGUAGE="JavaScript" SRC="js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="css/bootstrap.min.css" />
        <link rel="stylesheet" href="css/bootstrap-theme.min.css" />
				<%@ page contentType="text/html; charset=UTF-8" %>

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

            <div class="alert alert-info" role="alert">
              <%= request.getAttribute("action")%> executada com sucesso.
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
