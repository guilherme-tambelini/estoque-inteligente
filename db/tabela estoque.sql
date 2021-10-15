create sequence estoque.seq_estoque start with 1 increment by 1;
create table estoque.tb_estoque(
    id_estoque number default estoque.seq_estoque.nextval primary key,
    dt_compra date default sysdate,
    qt_estoque number not null,
    vl_unit_compra number(5,2) not null,
    nb_nf_compra number not null,
    id_produto number not null,
    constraint fk_estoque_produto foreign key (id_produto) references estoque.tb_produtos (id_produto)
);
comment on table estoque.tb_estoque is 'tabela de controle de estoque';
comment on column estoque.tb_estoque.id_estoque is 'id entrada estoque';
comment on column estoque.tb_estoque.dt_compra is 'data de compra ou de entrada no estoque';
comment on column estoque.tb_estoque.qt_estoque is 'quantidade restante em estoque';
comment on column estoque.tb_estoque.vl_unit_compra is 'preço custo';
comment on column estoque.tb_estoque.nb_nf_compra is 'número da nota fiscal de compra do produto';
comment on column estoque.tb_estoque.id_produto is 'id do produto';