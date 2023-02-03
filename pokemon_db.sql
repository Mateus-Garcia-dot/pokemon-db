CREATE TABLE USUARIO_SENHA(
    USUARIO   VARCHAR(15)   NOT NULL primary key,
    SENHA     VARCHAR(10)   NOT NULL
);

INSERT INTO PUBLIC.USUARIO_SENHA (usuario, senha) VALUES ('bruninha', 12345678), ('mateuzinho', 87654321), ('fernandinha', 12348765);

select * from public.usuario_senha;

create table pokemon (
    poke_nome    varchar(50)   not null,
    usuario       varchar(15)  not null,
    tipo          numeric(3)   not null ,-- 1 - fogo   2 - ar  3 - água  4 - terra
    habilidades   varchar(50)  null     ,
    foto          bytea        not null ,
    constraint ck_tipo check(tipo in(1,2,3,4)),
    constraint fk_usuario foreign key (usuario) references usuario_senha(usuario),
    constraint pk_poke_usuario  primary key (poke_nome, usuario)
);