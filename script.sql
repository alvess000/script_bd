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



