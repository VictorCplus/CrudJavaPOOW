package br.ufsm.csi.model;

import java.sql.Date;

/*

create table usuario (
	id_usuario serial,
	nome varchar(25) not null,
	email varchar(25) not null unique,
	senha varchar(6) not null,
	data_cadastro date,
	ativo boolean,
	id_permissao integer,
	primary key (id_usuario),
	foreign key (id_permissao) references permissao(id_permissao)
);

insert into usuario (nome, email, senha,
			 data_cadastro, ativo, id_permissao)
			 values ('Joana', 'joana@teste', '123', Current_date, true, 1);

*/

public class Usuario {

    private int id;
    private String name;
    private String email;
    private String senha;
    private Date dataCadastro;
    private boolean ativo;
    private int permissao;


    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }

    public Date getDataCadastro() {
        return dataCadastro;
    }

    public void setDataCadastro(Date dataCadastro) {
        this.dataCadastro = dataCadastro;
    }

    public boolean isAtivo() {
        return ativo;
    }

    public void setAtivo(boolean ativo) {
        this.ativo = ativo;
    }

    public int getPermissao() {
        return permissao;
    }
    public void setPermissao(int permissao) {
        this.permissao = permissao;
    }
}

