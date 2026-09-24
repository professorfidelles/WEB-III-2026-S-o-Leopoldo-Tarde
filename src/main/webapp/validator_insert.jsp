<%@ page import="com.example.crud.model.Aluno" %>
<%@ page import="com.example.crud.dao.AlunoDao" %><%
    String nome = request.getParameter("nome");
    String observacao = request.getParameter("observacao");
    String cpf = request.getParameter("cpf");
    String telefone = request.getParameter("telefone");
    String email = request.getParameter("email");

    if (nome != null && !nome.trim().isEmpty() && cpf != null && !cpf.trim().isEmpty() && telefone != null && !telefone.trim().isEmpty() && email != null && !email.trim().isEmpty()){
        try{
            Aluno aluno = new Aluno(nome , observacao , cpf , telefone , email);
            AlunoDao dao = new AlunoDao();
            dao.inserir(aluno);
            response.sendRedirect("index.jsp?message=Aluno Cadastrado com Sucesso");
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
%>