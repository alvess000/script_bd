create table public.categoria(
  id_categoria serial primary key,
  nome_categoria     varchar(100) null,
  descricao          varchar(255) null,
  slug               varchar(100)


);
 create table public.usuario(
  id_usuario serial not null,
  nome       varchar(255) null,
  email      varchar(255) null,
  senha_hash varchar(255) null,
  data_nascimento date,
  tipo_perfil varchar(255),
  data_cadastro timestamp


);

create table public.tag(
  id_tag serial not null,
  nome_tag      varchar(50) 
);
