package br.ufsm.csi.dao;

import br.ufsm.csi.model.Usuario;
import br.ufsm.csi.model.Permissao;

import java.sql.*;

public class UsuarioDao {

    private String sql;
    private PreparedStatement preparedStatement;
    private ResultSet resultSet;

    public Usuario getUsuario(String email, String senha){

        Usuario usuario = null;
    try (Connection connection = new ConectaBDPostgress().getConexao()){

        this.sql = "SELECT id_usuario, nome, email, senha, id_permissao FROM usuario WHERE email = ? AND senha = ?;";

        preparedStatement = connection.prepareStatement(this.sql);
        preparedStatement.setString(1, email);
        preparedStatement.setString(2, senha);
        resultSet = preparedStatement.executeQuery();
        System.out.println("getUsuario"+preparedStatement);
        while (resultSet.next()){
            usuario = new Usuario();
            usuario.setId(resultSet.getInt("id_usuario"));
            usuario.setName(resultSet.getString("nome").toLowerCase());
            usuario.setEmail(resultSet.getString("email"));
            usuario.setSenha(resultSet.getString("senha"));
            usuario.setPermissao(resultSet.getInt("id_permissao"));
        }
    }catch (SQLException e){
        e.printStackTrace();
    }

//        Usuario u = new Usuario();
//        u.setEmail(email);
//        u.setName("Joana");
//        u.setAtivo(true);
//        u.setId(13);
//        u.setSenha("123");
//        u.setDataCadastro(new Date(2022, 06, 05));
//        u.setPermissao(new Permissao(1, "ADMIN"));

        return usuario;
    }

    public boolean InsertUsuario(String nome, String email, String senha){

        try (Connection connection = new ConectaBDPostgress().getConexao()){
            this.sql = "INSERT INTO usuario (nome, email, senha, data_cadastro, ativo, id_permissao) VALUES (?, ?, ?, current_date, true, 2);";
            preparedStatement = connection.prepareStatement(this.sql);
            preparedStatement.setString(1, nome);
            preparedStatement.setString(2, email);
            preparedStatement.setString(3, senha);
            preparedStatement.execute();
        }catch (Exception e){
            e.printStackTrace();
            return false;
        }

    return true;
    }

}
