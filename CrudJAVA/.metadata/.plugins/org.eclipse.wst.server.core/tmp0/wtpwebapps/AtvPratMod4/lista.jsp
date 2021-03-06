<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta charset="UTF-8">
<title>Lista de Destinos</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script></head>
<body>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#">Nav</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#conteudoNavbarSuportado" aria-controls="conteudoNavbarSuportado" aria-expanded="false" aria-label="Alterna navega??o">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="conteudoNavbarSuportado">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="index.html">Home <span class="sr-only">(p?gina atual)</span></a>
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

<h3>Destinos cadastrados</h3>

<hr>

<table class="table">

<thead>
<tr>
<th>Id</th>
<th>Nome</th>
<th>Cidade</th>
<th>Estado</th>
</tr>
</thead>

<tbody>

<c:forEach items="${destinos}" var="destino">
<tr>
<td>${destino.id}</td>
<td>${destino.nome}</td>
<td>${destino.cidade}</td>
<td>${destino.estado}</td>
<td>
<a href="DestinoDestroy?destinoId=${Destino.id}">Deletar</a>
<a href="DestinoUpdate?destinoId=${Destino.id}">Atualizar</a> 
<td>
</c:forEach>

</tbody>

</table>

<h5><a href="index.html">Voltar para o cadastro de Destinos</a></h5>

</div>

</body>
</html>