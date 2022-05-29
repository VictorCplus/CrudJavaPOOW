package br.ufsm.csi.model;

/*

create table permissao(
id_permissao serial,
	nome_permissao varchar(25) not null,
	primary key (id_permissao)
);

insert into permissao (nome_permissao) values ('ADMIN');
select * from permissao;

*/

public class Permissao {

    private int id;
    private String nome;

    public Permissao(int id, String nome){
        this.id = id;
        this.nome = nome;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }
}
