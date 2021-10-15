create sequence estoque.seq_deptos start with 1 increment by 1;
create table estoque.tb_deptos (
    id_depto number default estoque.seq_deptos.nextval primary key,
    nm_depto varchar2(30) not null,
    fg_ativo number(1) default 1
);
alter table estoque.tb_deptos add constraint ativo check (fg_ativo in (0,1));
comment on table estoque.tb_deptos is 'departamentos';
comment on column estoque.tb_deptos.id_depto is 'id do departamento';
comment on column estoque.tb_deptos.nm_depto is 'nome do departamento';
comment on column estoque.tb_deptos.fg_ativo is '0 inativo ou 1 ativo';