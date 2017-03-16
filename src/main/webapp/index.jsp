<html>
<title>Mashup POC Sales</title>
<body>
<h2>Mashup POC Sales</h2>
<body>

<form method="POST" action="solicitarSegundaVia" >
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
</form>
</body>
</body>
</html>
