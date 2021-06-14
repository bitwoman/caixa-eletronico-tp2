/*CRIAÇÃO DE DATABASE*/
CREATE DATABASE caixa;

USE caixa;

/*
 * CRIAÇÃO DE TABELAS
 */
 
 /*
  * cliente
  */
CREATE TABLE cliente (
	idCliente INT NOT NULL,
	nomeCliente VARCHAR(100) NOT NULL, 
	enderecoClinte VARCHAR(100) NOT NULL,  
	telefoneCliente INT NOT NULL,
	rendaCliente DOUBLE (10,2) NOT NULL,
	cepCliente INT NOT NULL,
	nomeAgencia VARCHAR(50) NOT NULL,
	numeroConta INT NOT NULL, 
	senha CHAR(6) NOT NULL,
	CONSTRAINT pk_idCliente PRIMARY KEY (idCliente)
);

/*
  * agencia
  */
CREATE TABLE agencia (
	idAgencia INT NOT NULL,
	nomeAgencia VARCHAR(50) NOT NULL,
	numAgencia INT NOT NULL,
    CONSTRAINT pk_idAgencia PRIMARY KEY (idAgencia)
);


/*
  * conta
  */
CREATE TABLE conta (
	idConta INT NOT NULL,
	numeroConta INT NOT NULL,
    tipoConta VARCHAR(50) NOT NULL,
    saldoConta DOUBLE(10, 2) NOT NULL,
    statusConta DOUBLE(10,2) NOT NULL,
	CONSTRAINT fk_idConta PRIMARY KEY (idConta)
);
