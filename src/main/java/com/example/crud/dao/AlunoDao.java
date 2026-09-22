package com.example.crud.dao;

import com.example.crud.config.Conexao;
import com.example.crud.model.Aluno;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class AlunoDao {

    public List<Aluno> getByAlunos(){
        List<Aluno> alunos = new ArrayList<>();
        String sql = "SELECT * FROM alunos";
        ResultSet resultado;

        try {
            Connection conn = Conexao.getConnection();
            resultado = conn.createStatement().executeQuery(sql);
            while (resultado.next()){
               Aluno aluno = new Aluno();
               aluno.setId(resultado.getInt("id"));
               aluno.setNome(resultado.getString("nome"));
               aluno.setObservacao(resultado.getString("observacao"));
               aluno.setCpf(resultado.getString("cpf"));
               aluno.setTelefone(resultado.getString("telefone"));
               aluno.setEmail(resultado.getString("email"));
               alunos.add(aluno);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return alunos;
    }
}
