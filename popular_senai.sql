use senai;

insert into unidades_senai(nome_unidade, cidade) values
('senai Umuarama', 'Umuarama'),
('senai Maringá', 'Maringá'),
('senai Londrina', 'Londrina'),
('senai Cascavel', 'Cascavel'),
('senai Curitiba', 'Curitiba');

insert into linhas_producao(id_unidade, nome_linha) values
(1, 'alvenaria'),
(2, 'usinagem cnc'),
(3, 'automação industrial'),
(4, 'soldagem robotizada'),
(5, 'panificação industrial');

insert into tipos_maquina(nome_tipo, horas_revisao_padrao) values
('centrífuga', 8),
('torno mecânico', 12),
('prensa hidráulica', 16),
('compressor de ar', 6),
('esteira transportadora', 4);

insert into maquinas_senai(id_linha, id_tipo, tag_patrimonio, data_aquisicao, status_operacao) values
(1, 1, 'TP-khghgut1', '2020-02-23', 'Ativa'),
(2, 2, 'TP-mrg98234', '2021-05-14', 'Ativa'),
(3, 3, 'TP-lnd45109', '2019-11-08', 'Manutencao'),
(4, 4, 'TP-csc77321', '2022-08-19', 'Ativa'),
(5, 5, 'TP-ctb11092', '2018-03-30', 'desativada');

insert into tecnicos(nome_tecnico, especialidade, nivel_certificacao) values
('Roberval Pereira', 'web', 'senior'),
('Mariana Costa', 'mecânica industrial', 'especialista'),
('Carlos Eduardo Lima', 'eletrotécnica', 'pleno'),
('Fernanda Alves', 'automação', 'junior'),
('João Batista Souza', 'instrumentação', 'senior');

insert into componentes_maq(id_maquina, nome_componente, horas_uso_acumulado, limite_horas_alerta) values
(1, 'sensor', 88, 150),
(2, 'rolamento principal', 310, 500),
(3, 'válvula solenoide', 420, 400),
(4, 'correia dentada', 125, 250),
(5, 'motor elétrico trifásico', 600, 1000);

insert into ordens_servico(id_maquina, id_tecnico, data_abertura, tipo_manutencao, status_os) values
(1, 1, '2021-06-28', 'preventiva', 'concluida'),
(2, 2, '2025-09-12', 'preditiva', 'concluida'),
(3, 3, '2026-02-15', 'corretiva', 'em_andamento'),
(4, 4, '2026-04-01', 'preventiva', 'aberta'),
(5, 5, '2026-03-20', 'corretiva', 'cancelada');

insert into estoque_pecas(codigo_part_number, descricao, qtd_estoque, preco_unitario) values
('EP-ouhbjhsbd8yfydf87sd:1', 'sensor de monitoramento preciso', 8, 188.99),
('EP-rlm99812a7bc34de12:2', 'rolamento autocompensador de rolos', 15, 340.50),
('EP-vlv55431x9yz00qw88:3', 'válvula solenoide pneumática 24v', 4, 215.00),
('EP-crr77120m4np65kl90:4', 'correia sincronizadora reforçada', 22, 95.80),
('EP-flt33019p8rs21tv45:5', 'filtro coalescente de alta pressão', 0, 142.30);

insert into pecas_os(id_ordem, id_peca, qtd_utilizada, preco_aplicado) values
(1, 1, 4, 1511.92),
(2, 2, 2, 681.00),
(3, 3, 1, 215.00),
(4, 4, 3, 287.40),
(5, 5, 2, 284.60);

insert into historico_sensores(id_ordem, temperatura_medida, vibracao_mm_s, data_hora_leitura) values
(1, 98.00, 3.8, '2026-04-10 18:06:00'),
(2, 64.50, 1.9, '2026-04-11 09:15:00'),
(3, 112.30, 6.4, '2026-04-12 14:30:00'),
(4, 42.10, 1.2, '2026-04-13 10:45:00'),
(5, 25.00, 0.4, '2026-04-14 16:20:00');