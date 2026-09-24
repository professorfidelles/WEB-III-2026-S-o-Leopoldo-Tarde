<%@ page pageEncoding="UTF-8" %>

<html>
<head>
    <title> Cadastro de Aluno </title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
</head>

<body>
<h1 class="text-center mt-3"> Cadastro de Aluno </h1>

<form action="validator_insert.jsp" method="post" class="container">
    <div class="mb-3">
        <label for="nome" class="form-label"> Nome </label>
        <input type="text" id="nome" name="nome" class="form-control">
    </div>

    <div class="mb-3">
        <label for="cpf" class="form-label"> Cpf </label>
        <input type="text" id="cpf" name="cpf" class="form-control">
    </div>

    <div class="mb-3">
        <label for="telefone" class="form-label"> Telefone </label>
        <input type="text" id="telefone" name="telefone" class="form-control">
    </div>

    <div class="mb-3">
        <label for="email" class="form-label"> Email </label>
        <input type="email" id="email" name="email" class="form-control">
    </div>

    <div class="mb-3">
        <label for="observacao" class="form-label"> Observação </label>
        <textarea name="observacao" id="observacao" class="form-control"></textarea>
    </div>

    <button class="btn btn-primary"> Cadastrar </button>
</form>
</body>
</html>