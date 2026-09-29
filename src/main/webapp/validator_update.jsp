<%@ page import="com.example.crud.model.Aluno" %>
<%@ page import="com.example.crud.dao.AlunoDao" %><%

    int id = Integer.parseInt(request.getParameter("id"));
    String nome = request.getParameter("nome");
    String observacao = request.getParameter("observacao");
    String cpf = request.getParameter("cpf");
    String telefone = request.getParameter("telefone");
    String email = request.getParameter("email");

    if (nome != null && !nome.trim().isEmpty() && cpf != null && !cpf.trim().isEmpty() && telefone != null && !telefone.trim().isEmpty() && email != null && !email.trim().isEmpty()){
        try{
            Aluno aluno = new Aluno(nome , observacao , cpf , telefone , email);
            aluno.setId(id);
            AlunoDao dao = new AlunoDao();
            dao.atualizar(aluno);
            response.sendRedirect("index.jsp?message=Aluno Atualizado com Sucesso");
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
%>