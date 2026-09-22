<%@ page pageEncoding="UTF-8" %>
<%@ page import="com.example.crud.dao.AlunoDao" %>
<%@ page import="java.util.List" %>
<%@ page import="com.example.crud.model.Aluno" %>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title> Projeto Final </title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
</head>
<body>

    <h1 class="text-center mt-3"> Lista de Alunos </h1>
    <div class="d-flex justify-content-end container">
        <a href="cadastrar.jsp" class="btn btn-primary"> Novo Cadastro </a>
    </div>
    <table class="table table-striped table-hover container">
        <thead>
        <tr>
            <th scope="col">#</th>
            <th scope="col">Nome</th>
            <th scope="col">Observação</th>
            <th scope="col">Cpf</th>
            <th scope="col">Telefone</th>
            <th scope="col">Email</th>
        </tr>
        </thead>
        <tbody>
        <%
            AlunoDao dao = new AlunoDao();
            List<Aluno> alunos = dao.getByAlunos();
            for (Aluno aluno : alunos){
        %>
                <tr>
                    <th scope="row"> <%= aluno.getId() %> </th>
                    <td> <%= aluno.getNome() %></td>
                    <td> <%= aluno.getObservacao() %> </td>
                    <td> <%= aluno.getCpf() %> </td>
                    <td> <%= aluno.getTelefone() %> </td>
                    <td> <%= aluno.getEmail() %> </td>
                </tr>
        <% } %>
        </tbody>
    </table>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js" integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI" crossorigin="anonymous"></script>
</body>
</html>
