package com.example.crud.dao;

import com.example.crud.config.Conexao;
import com.example.crud.model.Aluno;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class AlunoDao {
    private ResultSet resultado;
    private PreparedStatement ps;
    private Statement smt;
    public List<Aluno> getByAlunos(){
        List<Aluno> alunos = new ArrayList<>();
        String sql = "SELECT * FROM alunos";


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

    public void inserir(Aluno aluno){
        String sql = "INSERT INTO alunos(nome,observacao,cpf,telefone,email) VALUES(?,?,?,?,?)";
        try {
            Connection conn = Conexao.getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1 , aluno.getNome());
            ps.setString(2 , aluno.getObservacao());
            ps.setString(3 , aluno.getCpf());
            ps.setString(4, aluno.getTelefone());
            ps.setString(5, aluno.getEmail());
            ps.execute();
            ps.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public void atualizar(Aluno aluno){
        String sql = "UPDATE alunos SET nome=?,observacao=?,cpf=?,telefone=?,email=? WHERE id=?";
        try {
            Connection conn = Conexao.getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1 , aluno.getNome());
            ps.setString(2 , aluno.getObservacao());
            ps.setString(3 , aluno.getCpf());
            ps.setString(4, aluno.getTelefone());
            ps.setString(5, aluno.getEmail());
            ps.setInt(6, aluno.getId());
            ps.execute();
            ps.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public void deletar(int valor){
        String sql = "DELETE FROM aluno WHERE id="+valor;

        try {
            Connection conn = Conexao.getConnection();
            smt = conn.createStatement();
            smt.execute(sql);
            smt.close();
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
}
