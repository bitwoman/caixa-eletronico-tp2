/*CRIAÇÃO DE DATABASE*/
	CREATE DATABASE caixa;
	USE caixa;

/*
 * CRIAÇÃO DE TABELAS
 */
 
 /*
  * agencia
  */
	DROP TABLE IF EXISTS agencia;
	CREATE TABLE agencia (
		idAgencia INT NOT NULL AUTO_INCREMENT,
		nomeAgencia VARCHAR(50) NOT NULL,
		numAgencia INT NOT NULL,
		CONSTRAINT pk_idAgencia PRIMARY KEY (idAgencia)
	);

/*
  * conta
  */

/*
 * statusConta = 1 (Ativa), statusConta = 0 (Inativa)
 */
	DROP TABLE IF EXISTS conta;
	CREATE TABLE conta (
		idConta INT NOT NULL AUTO_INCREMENT,
		numeroConta INT NOT NULL,
		tipoConta VARCHAR(50) NOT NULL,
		saldoConta DOUBLE(10, 2) NOT NULL,
		statusConta INT NOT NULL,
        idCliente INT NOT NULL,
		CONSTRAINT pk_idConta PRIMARY KEY (idConta),
        CONSTRAINT fk_idCliente FOREIGN KEY (idCliente) REFERENCES cliente (idCliente)
	); 
 
 /*
  * cliente
  */
	DROP TABLE IF EXISTS cliente;
	CREATE TABLE cliente (
		idCliente INT NOT NULL AUTO_INCREMENT,
		nomeCliente VARCHAR(100) NOT NULL, 
		enderecoCliente VARCHAR(100) NOT NULL,  
		telefoneCliente INT NOT NULL,
		rendaCliente DOUBLE (10,2) NOT NULL,
		cepCliente INT NOT NULL,
		nomeAgencia VARCHAR(50) NOT NULL,
		numeroConta INT NOT NULL, 
		senha CHAR(6) NOT NULL,
		CONSTRAINT pk_idCliente PRIMARY KEY (idCliente)
	);
    
/*
 * tipoOperacoes: 1 - depósito, 2 - saque, 3 - extrato, 4 - consulto do usuário
 */
    DROP TABLE IF EXISTS tipoOperacoes;
    CREATE TABLE tipoOperacoes (
		idTipoOperacao INT NOT NULL AUTO_INCREMENT,
        tipoOperacao VARCHAR(50) NOT NULL,
		CONSTRAINT pk_idTipoOperacao PRIMARY KEY (idTipoOperacao)
    );

/*
 *  operações
 */
    DROP TABLE IF EXISTS operacoes;
    CREATE TABLE operacoes (
		idOperacao INT NOT NULL AUTO_INCREMENT,
        dataOperacao DATETIME NOT NULL,
		idTipoOperacao INT NOT NULL,
        valorOperacao DOUBLE (10,2) NOT NULL,
        CONSTRAINT pk_idOperacao PRIMARY KEY (idOperacao),
        CONSTRAINT fk_idTipoOperacao FOREIGN KEY (idTipoOperacao) REFERENCES tipoOperacoes (idTipoOperacao)
    );

/*
 * INSERÇÃO DE DADOS
 */

/*
 * ADD agencia
 */
    INSERT INTO agencia (nomeAgencia, numAgencia) VALUES ('Agência', 1234);
    INSERT INTO agencia (nomeAgencia, numAgencia) VALUES ('Agência', 5678);
    INSERT INTO agencia (nomeAgencia, numAgencia) VALUES ('Agência', 9101);
    INSERT INTO agencia (nomeAgencia, numAgencia) VALUES ('Agência', 1213);
    INSERT INTO agencia (nomeAgencia, numAgencia) VALUES ('Agência', 1415);
    INSERT INTO agencia (nomeAgencia, numAgencia) VALUES ('Agência', 1617);
    INSERT INTO agencia (nomeAgencia, numAgencia) VALUES ('Agência', 1819);
    INSERT INTO agencia (nomeAgencia, numAgencia) VALUES ('Agência', 2021);
    INSERT INTO agencia (nomeAgencia, numAgencia) VALUES ('Agência', 2223);
    INSERT INTO agencia (nomeAgencia, numAgencia) VALUES ('Agência', 2425);
    
/*
 * ADD conta
 */
 
 /*
  * ADD cliente
  */
    INSERT INTO cliente (nomeCliente, enderecoCliente, telefoneCliente, rendaCliente, cepCliente, nomeAgencia, numeroConta, senha) VALUES ('Brenda Leite', 'Rua da Glória, 21', 3333-3333, 5000.00, 19018025, 'Agência', 01, '123456'); 
    INSERT INTO cliente (nomeCliente, enderecoCliente, telefoneCliente, rendaCliente, cepCliente, nomeAgencia, numeroConta, senha) VALUES ('Marcos Vicente', 'Rua da Vitória, 30', 4444-4444, 5000.00, 20018025, 'Agência', 02, '654321');
    INSERT INTO cliente (nomeCliente, enderecoCliente, telefoneCliente, rendaCliente, cepCliente, nomeAgencia, numeroConta, senha) VALUES ('Maria Cristina', 'Rua José Constantino, 94', 5555-5555, 1500.00, 20029026, 'Agência', 03, '789101');
    INSERT INTO cliente (nomeCliente, enderecoCliente, telefoneCliente, rendaCliente, cepCliente, nomeAgencia, numeroConta, senha) VALUES ('Marcos Vicente', 'Rua da Vitória, 30', 4444-4444, 3500.00, 20030027, 'Agência', 04, '111213');
    INSERT INTO cliente (nomeCliente, enderecoCliente, telefoneCliente, rendaCliente, cepCliente, nomeAgencia, numeroConta, senha) VALUES ('Marcos Vicente', 'Rua da Vitória, 30', 4444-4444, 4500.00, 20040028, 'Agência', 05, '141516');
    
