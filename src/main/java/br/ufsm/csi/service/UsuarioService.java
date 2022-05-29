package br.ufsm.csi.service;

import br.ufsm.csi.dao.UsuarioDao;
import br.ufsm.csi.model.Usuario;

public class UsuarioService {


    public Usuario autenticado(String email, String senha) {

        Usuario u = new UsuarioDao().getUsuario(email, senha);

        try {
            if (u.getEmail().equals(email) &&
                    u.getSenha().equals(senha)) {
                return u;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public boolean Inserir(String nome, String email, String senha){

        try{
            if(new UsuarioDao().InsertUsuario(nome, email, senha)){
                return true;
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        return false;
    }
}