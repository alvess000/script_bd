create table public.categoria(
  id_categoria serial primary key,
  nome_categoria     varchar(100) null,
  descricao          varchar(255) null,
  slug               varchar(100)


);

SELECT * FROM public.categoria;


 create table public.usuario(
  id_usuario serial not null,
  nome       varchar(255) null,
  email      varchar(255) null,
  senha_hash varchar(255) null,
  data_nascimento date,
  tipo_perfil varchar(255),
  data_cadastro timestamp


);
SELECT * FROM public.usuario;

create table public.tag(
  id_tag serial not null,
  nome_tag      varchar(50) 
);

SELECT * FROM public.tag;


create table public.jornalista(
  id_jornalista serial primary key,
  id_usuario                bigint 
  registro_profissional     varchar(50) null,
  biografia                 text
  especialidade             varchar(100) null, 
);


create table public.comentario(
  id_comentario serial primary key,
  id_noticia                bigint,
  id_usuario                bigint,
  biografia                 text,
  data_publicacao           datetime,
  ativo                      bolean
);


create table public.noticia (
  id_noticia serial primary key,
  titulo               varchar(255) not null,
  subtitulo            varchar(255) not null,
  conteudo_texto       text not null,,
  status               status_noticia_enum not null,
  id_jornalista        bigint not null,
  id_categoria         bigint not null,
  data_publicação      datetime,
  data_criação         timestamp,
;

create table public.historico_revisão(
  id_historico serial primary key,
  id_noticia              bigint not null,
  id_editor               bigint not null,
  observação_revisão      text not null,
  status_aplicado         status_noticia_enum not null,
  data_alteração          timestamp,
  fk_noticia              int

;



create table public.midia_noticia(
  id_midia serial primary key,
  id_noticia              bigint not null,
  tipo_midia              tipo_midia_enum not null,
  url_arquivo             varchar(255) not null,
  legenda                 varchar(255),
  data_upload             timestamp,
  fk_noticia              int

create table public.noticia_tag(
  id_noticia serial primary key,
  id_tag              bigint not null,
  fk_noticia              int,
);
