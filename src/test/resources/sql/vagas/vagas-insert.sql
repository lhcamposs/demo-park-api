insert into USUARIOS (id, username, password, role)
    values (100, 'ana@email.com', '$2a$12$wTid126TXSdUlcuQq/vUNeUMtKFqtyztbkmdZ19jWBZ1di5ap8fkC', ' ROLE_ADMIN');
insert into USUARIOS (id, username, password, role)
values (101, 'bia@email.com', '$2a$12$wTid126TXSdUlcuQq/vUNeUMtKFqtyztbkmdZ19jWBZ1di5ap8fkC', ' ROLE_CLIENTE');
insert into USUARIOS (id, username, password, role)
values (102, 'bob@email.com', '$2a$12$wTid126TXSdUlcuQq/vUNeUMtKFqtyztbkmdZ19jWBZ1di5ap8fkC', ' ROLE_CLIENTE');

insert into VAGAS (id, codigo, status) values (10, 'A-01', 'LIVRE');
insert into VAGAS (id, codigo, status) values (20, 'A-02', 'LIVRE');
insert into VAGAS (id, codigo, status) values (30, 'A-03', 'OCUPADA');
insert into VAGAS (id, codigo, status) values (40, 'A-04', 'LIVRE');