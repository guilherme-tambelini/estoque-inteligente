create sequence estoque.seq_produtos;
create table estoque.tb_produtos(
    id_produto number default estoque.seq_produtos.nextval primary key,
    nm_marca varchar2(100),
    nm_modelo varchar2(100) not null,
    nm_descricao varchar2(1000) not null,
    dim_h number(5,2) not null,
    dim_v number(5,2) not null,
    dim_p number(5,2) not null,
    dim_unidade varchar2(2) not null,
    vl_unit_venda number(5,2) not null,
    id_depto number not null,
    constraint fk_produto_depto foreign key (id_depto) references estoque.tb_deptos (id_depto),
    constraint ck_produto_dim_unidade check (dim_unidade in ('m','cm','mm'))
);
comment on table estoque.tb_produtos is 'tabela para armazenamento de produtos';
comment on column estoque.tb_produtos.id_produto is 'id do produto';
comment on column estoque.tb_produtos.nm_marca is 'marca do produto: fabricante, fornecedor';
comment on column estoque.tb_produtos.nm_modelo is 'modelo do produto: nome comercial do produto';
comment on column estoque.tb_produtos.nm_descricao is 'descrição do produto: o que é, a que se destina';
comment on column estoque.tb_produtos.dim_h is 'dimensões: horizontal em metros (m), centímetros (cm) ou milímetros (mm)';
comment on column estoque.tb_produtos.dim_v is 'dimensões: vertical em metros (m), centímetros (cm) ou milímetros (mm)';
comment on column estoque.tb_produtos.dim_p is 'dimensões: profundidade em metros (m), centímetros (cm) ou milímetros (mm)';
comment on column estoque.tb_produtos.dim_unidade is 'unidade de medida das três dimensões do produto: m, cm, mm';
comment on column estoque.tb_produtos.id_depto is 'departamento a que o produto pertence';