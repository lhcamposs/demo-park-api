insert into USUARIOS (id, username, password, role)
    values (100, 'ana@email.com', '$2a$12$wTid126TXSdUlcuQq/vUNeUMtKFqtyztbkmdZ19jWBZ1di5ap8fkC', ' ROLE_ADMIN');
insert into USUARIOS (id, username, password, role)
    values (101, 'bia@email.com', '$2a$12$wTid126TXSdUlcuQq/vUNeUMtKFqtyztbkmdZ19jWBZ1di5ap8fkC', ' ROLE_CLIENTE');
insert into USUARIOS (id, username, password, role)
    values (102, 'bob@email.com', '$2a$12$wTid126TXSdUlcuQq/vUNeUMtKFqtyztbkmdZ19jWBZ1di5ap8fkC', ' ROLE_CLIENTE');

insert into CLIENTES (id, nome, cpf, id_usuario) values (21, 'Bianca Silva', '66448441034', 101);
insert into CLIENTES (id, nome, cpf, id_usuario) values (22, 'Roberto Gomes', '34304891057', 102);

insert into vagas (id, codigo, status) values (100, 'A-01', 'OCUPADA');
insert into vagas (id, codigo, status) values (200, 'A-02', 'OCUPADA');
insert into vagas (id, codigo, status) values (300, 'A-03', 'OCUPADA');
insert into vagas (id, codigo, status) values (400, 'A-04', 'OCUPADA');
insert into vagas (id, codigo, status) values (500, 'A-05', 'OCUPADA');

insert into clientes_tem_vagas (numero_recibo, placa, marca, modelo, cor, data_entrada, id_cliente, id_vaga)
    values ('20230313-101300', 'FIT-1010', 'FIAT', 'PALIO', 'VERDE', '2023-03-13 10:15:00', 22, 100);
insert into clientes_tem_vagas (numero_recibo, placa, marca, modelo, cor, data_entrada, id_cliente, id_vaga)
    values ('20230314-101400', 'SIE-1020', 'FIAT', 'SIENA', 'BRANCO', '2023-03-14 10:15:00', 21, 200);
insert into clientes_tem_vagas (numero_recibo, placa, marca, modelo, cor, data_entrada, id_cliente, id_vaga)
    values ('20230315-101500', 'FIT-1030', 'FIAT', 'PALIO', 'VERDE', '2023-03-14 10:15:00', 22, 300);
insert into clientes_tem_vagas (numero_recibo, placa, marca, modelo, cor, data_entrada, id_cliente, id_vaga)
    values ('20230316-101600', 'SIE-1040', 'FIAT', 'SIENA', 'VERDE', '2023-03-14 10:15:00', 21, 400);
insert into clientes_tem_vagas (numero_recibo, placa, marca, modelo, cor, data_entrada, id_cliente, id_vaga)
    values ('20230317-101700', 'SIE-1050', 'FIAT', 'SIENA', 'VERDE', '2023-03-14 10:15:00', 22, 500);