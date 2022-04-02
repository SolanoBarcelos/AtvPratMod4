<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Atualizar Destino</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>

</head>
<body>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#">Nav</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#conteudoNavbarSuportado" aria-controls="conteudoNavbarSuportado" aria-expanded="false" aria-label="Alterna navegação">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="conteudoNavbarSuportado">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="index.html">Home <span class="sr-only">(página atual)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="DestinoCreateAndSFind">Lista de Destinos</a>
      </li>
    </ul>
    <form action="DestinoCreateAndSFind" method="GET" class="form-inline my-2 my-lg-0">
      <input name="pesquisa" class="form-control mr-sm-2" type="search" placeholder=" Digite nome ou cidade" aria-label="Pesquisar">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Pesquisar</button>
    </form>
  </div>
</nav>

<br>
<br>

<div class="container">
<div class="row">
</div class="Cold-md-7">
<hr>

<h3>Atualizar Destino</h3>

<hr>

<form action="DestinoUpdate" method="POST">
	
					<input value="$(destino.id)" name="id" style="visibility:hiddem">
					<div class="form-floating mb-3">
				
						<input value="$(destino.nome)" name="nome" maxlength="40" type="text" class="form-control" id="floatingInput1"> 
						<label>Nome do Destino</label>
					</div>
					
					<div class="form-floating mb-3">
						<input value="$(destino.cidade)" name="cidade" maxlength="30" type="text" class="form-control"> 
						<label>Cidade</label>
					</div>
					
					<div class="form-floating mb-3">
						<input value="$(destino.estado)" name="estado" maxlength="30" type="text" class="form-control">
						<label>Estado</label>
					</div>

					<button class="btn btn-success" type="submit">Atualizar
						Destino</button>
					<button class="btn btn-secondary" type="reset">Limpar
						Formulario</button>
</form>

</div>

</body>
</html>