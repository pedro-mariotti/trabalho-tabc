CREATE TABLE Marca
(
 ID_Marca   INTEGER   NOT null,
 Descricao  VARCHAR(30) NOT null
);

ALTER TABLE Marca ADD CONSTRAINT PK_Marca PRIMARY KEY (ID_Marca);

CREATE TABLE Modelo
(
 ID_Modelo INTEGER   NOT null,
 Descricao VARCHAR(30)  NOT NULL,
 ID_Marca INTEGER   NOT null
);

ALTER TABLE Modelo ADD CONSTRAINT PK_Modelo PRIMARY KEY (ID_Modelo);

ALTER TABLE Modelo ADD CONSTRAINT FK_Modelo_Marca FOREIGN KEY (ID_Marca) REFERENCES Marca(ID_Marca);


CREATE TABLE Aparelho
(
 ID_Aparelho INTEGER   NOT null,
 Numero_Serie  VARCHAR(10) NOT null,
 ID_Modelo INTEGER   NOT null
);

ALTER TABLE Aparelho ADD CONSTRAINT PK_Aparelho PRIMARY KEY (ID_Aparelho);

ALTER TABLE Aparelho ADD CONSTRAINT FK_Aparelho_Modelo FOREIGN KEY (ID_Modelo) REFERENCES Modelo(ID_Modelo);


CREATE TABLE Estado
(
 ID_Estado INTEGER   NOT null,
 Descricao VARCHAR(30) NOT NULL,
 Sigla CHAR(02) NOT null
);

ALTER TABLE Estado ADD CONSTRAINT PK_Estado PRIMARY KEY (ID_Estado);

CREATE TABLE Cidade
(
 ID_Cidade INTEGER   NOT null,
 Descricao VARCHAR(30) NOT null,
 ID_Estado  INTEGER   NOT null
);

ALTER TABLE Cidade ADD CONSTRAINT PK_Cidade PRIMARY KEY (ID_Cidade);

ALTER TABLE Cidade ADD CONSTRAINT FK_Cidade_Estado FOREIGN KEY (ID_Estado) REFERENCES Estado(ID_Estado);


CREATE TABLE Cliente
(
 ID_Cliente INTEGER   NOT null,
 Nome VARCHAR(30) NOT null,
 Sexo CHAR(01) NOT  NULL,
 ID_Cidade INTEGER   NOT null,
 Estado_civil CHAR(01) NOT NULL
);

ALTER TABLE Cliente ADD CONSTRAINT PK_Cliente PRIMARY KEY (ID_Cliente);

ALTER TABLE Cliente ADD CONSTRAINT FK_Cliente_Cidade FOREIGN KEY (ID_Cidade) REFERENCES Cidade(ID_Cidade);

CREATE SEQUENCE SQ_COMPRA;

CREATE TABLE Compra
(
 ID_Compra INTEGER   NOT null,
 ID_Cliente INTEGER   NOT null,
 Data DATE NOT null
);

ALTER TABLE Compra ADD CONSTRAINT PK_Compra PRIMARY KEY (ID_Compra);

ALTER TABLE Compra ADD CONSTRAINT FK_Compra_Cliente FOREIGN KEY (ID_Cliente) REFERENCES Cliente(ID_Cliente);

CREATE SEQUENCE SQ_CARRINHO;

CREATE TABLE Carrinho
(
 ID_Carrinho INTEGER   NOT null,
 ID_Compra INTEGER   NOT null,
 ID_Aparelho INTEGER   NOT null,
 Quantidade INT NOT null,
 Valor  NUMERIC (11,2) NOT null
);

ALTER TABLE Carrinho ADD CONSTRAINT PK_Carrinho PRIMARY KEY (ID_Carrinho);

ALTER TABLE Carrinho ADD CONSTRAINT FK_Carrinho_Compra FOREIGN KEY (ID_Compra) REFERENCES Compra(ID_Compra);

ALTER TABLE Carrinho ADD CONSTRAINT FK_Carrinho_Aparelho FOREIGN KEY (ID_Aparelho) REFERENCES Aparelho(ID_Aparelho);

alter session set nls_date_format='DD.MM.YYYY';
alter session set nls_timestamp_format='DD.MM.YYYY HH:MI:SS';

-- Marca

INSERT INTO Marca VALUES (1, 'Apple');
INSERT INTO Marca VALUES (2, 'Samsung');
INSERT INTO Marca VALUES (3, 'Google');
INSERT INTO Marca VALUES (4, 'OnePlus');
INSERT INTO Marca VALUES (5, 'Xiamoi');
INSERT INTO Marca VALUES (6, 'Sony');
INSERT INTO Marca VALUES (7, 'LG');
INSERT INTO Marca VALUES (8, 'Motorola');
INSERT INTO Marca VALUES (9, 'HUAWEI');
INSERT INTO Marca VALUES (10, 'Nokia');

-- Modelo

INSERT INTO modelo (ID_Modelo, Descricao, ID_Marca) VALUES       (1, 'iPhone 13 Pro', 1);
INSERT INTO modelo (ID_Modelo, Descricao, ID_Marca) VALUES       (2, 'Samsung Galaxy S21 Ultra', 2);
INSERT INTO modelo (ID_Modelo, Descricao, ID_Marca) VALUES       (3, 'Google Pixel 6 Pro', 3);
INSERT INTO modelo (ID_Modelo, Descricao, ID_Marca) VALUES       (4, 'OnePlus 9 Pro', 4);
INSERT INTO modelo (ID_Modelo, Descricao, ID_Marca) VALUES       (5, 'Xiaomi Mi 11 Ultra', 5);
INSERT INTO modelo (ID_Modelo, Descricao, ID_Marca) VALUES       (6, 'Sony Xperia 1 III', 6);
INSERT INTO modelo (ID_Modelo, Descricao, ID_Marca) VALUES       (7, 'LG Wing', 7);
INSERT INTO modelo (ID_Modelo, Descricao, ID_Marca) VALUES       (8, 'Motorola Edge+', 8);
INSERT INTO modelo (ID_Modelo, Descricao, ID_Marca) VALUES       (9, 'Huawei P40 Pro', 9);
INSERT INTO modelo (ID_Modelo, Descricao, ID_Marca) VALUES       (10, 'Nokia 9 PureView', 10);
INSERT INTO modelo (ID_Modelo, Descricao, ID_Marca) VALUES       (11, 'iPhone 12 Mini', 1);
INSERT INTO modelo (ID_Modelo, Descricao, ID_Marca) VALUES       (12, 'Samsung Galaxy Note 20 Ultra', 2);
INSERT INTO modelo (ID_Modelo, Descricao, ID_Marca) VALUES       (13, 'Google Pixel 5', 3);
INSERT INTO modelo (ID_Modelo, Descricao, ID_Marca) VALUES       (14, 'OnePlus 9', 4);
INSERT INTO modelo (ID_Modelo, Descricao, ID_Marca) VALUES       (15, 'Xiaomi Mi 11', 5);
INSERT INTO modelo (ID_Modelo, Descricao, ID_Marca) VALUES       (16, 'Sony Xperia 5 II', 6);
INSERT INTO modelo (ID_Modelo, Descricao, ID_Marca) VALUES       (17, 'LG Velvet', 7);
INSERT INTO modelo (ID_Modelo, Descricao, ID_Marca) VALUES       (18, 'Motorola Razr 5G', 8);
INSERT INTO modelo (ID_Modelo, Descricao, ID_Marca) VALUES       (19, 'Huawei Mate 40 Pro', 9);
INSERT INTO modelo (ID_Modelo, Descricao, ID_Marca) VALUES       (20, 'Nokia 8.3', 10);
INSERT INTO modelo (ID_Modelo, Descricao, ID_Marca) VALUES       (21, 'iPhone 11 Pro', 1);
INSERT INTO modelo (ID_Modelo, Descricao, ID_Marca) VALUES       (22, 'Samsung Galaxy S20 Ultra', 2);
INSERT INTO modelo (ID_Modelo, Descricao, ID_Marca) VALUES       (23, 'Google Pixel 4a', 3);
INSERT INTO modelo (ID_Modelo, Descricao, ID_Marca) VALUES       (24, 'OnePlus 8 Pro', 4);
INSERT INTO modelo (ID_Modelo, Descricao, ID_Marca) VALUES       (25, 'Xiaomi Mi 10 Pro', 5);
INSERT INTO modelo (ID_Modelo, Descricao, ID_Marca) VALUES       (26, 'Sony Xperia 1 II', 6);
INSERT INTO modelo (ID_Modelo, Descricao, ID_Marca) VALUES       (27, 'LG G8 ThinQ', 7);
INSERT INTO modelo (ID_Modelo, Descricao, ID_Marca) VALUES       (28, 'Motorola Edge', 8);
INSERT INTO modelo (ID_Modelo, Descricao, ID_Marca) VALUES       (29, 'Huawei P30 Pro', 9);
INSERT INTO modelo (ID_Modelo, Descricao, ID_Marca) VALUES       (30, 'Nokia 7.2', 10);

-- Estado
INSERT INTO Estado (ID_Estado, Descricao, Sigla) VALUES       (1, 'Acre', 'AC');
INSERT INTO Estado (ID_Estado, Descricao, Sigla) VALUES       (2, 'Alagoas', 'AL');
INSERT INTO Estado (ID_Estado, Descricao, Sigla) VALUES       (3, 'Amap ', 'AP');
INSERT INTO Estado (ID_Estado, Descricao, Sigla) VALUES       (4, 'Amazonas', 'AM');
INSERT INTO Estado (ID_Estado, Descricao, Sigla) VALUES       (5, 'Bahia', 'BA');
INSERT INTO Estado (ID_Estado, Descricao, Sigla) VALUES       (6, 'Cear ', 'CE');
INSERT INTO Estado (ID_Estado, Descricao, Sigla) VALUES       (7, 'Distrito Federal', 'DF');
INSERT INTO Estado (ID_Estado, Descricao, Sigla) VALUES       (8, 'Esp rito Santo', 'ES');
INSERT INTO Estado (ID_Estado, Descricao, Sigla) VALUES       (9, 'Goi s', 'GO');
INSERT INTO Estado (ID_Estado, Descricao, Sigla) VALUES       (10, 'Maranh o', 'MA');
INSERT INTO Estado (ID_Estado, Descricao, Sigla) VALUES       (11, 'Mato Grosso', 'MT');
INSERT INTO Estado (ID_Estado, Descricao, Sigla) VALUES       (12, 'Mato Grosso do Sul', 'MS');
INSERT INTO Estado (ID_Estado, Descricao, Sigla) VALUES       (13, 'Minas Gerais', 'MG');
INSERT INTO Estado (ID_Estado, Descricao, Sigla) VALUES       (14, 'Par ', 'PA');
INSERT INTO Estado (ID_Estado, Descricao, Sigla) VALUES       (15, 'Para ba', 'PB');
INSERT INTO Estado (ID_Estado, Descricao, Sigla) VALUES       (16, 'Paran ', 'PR');
INSERT INTO Estado (ID_Estado, Descricao, Sigla) VALUES       (17, 'Pernambuco', 'PE');
INSERT INTO Estado (ID_Estado, Descricao, Sigla) VALUES       (18, 'Piau ', 'PI');
INSERT INTO Estado (ID_Estado, Descricao, Sigla) VALUES       (19, 'Rio de Janeiro', 'RJ');
INSERT INTO Estado (ID_Estado, Descricao, Sigla) VALUES       (20, 'Rio Grande do Norte', 'RN');
INSERT INTO Estado (ID_Estado, Descricao, Sigla) VALUES       (21, 'Rio Grande do Sul', 'RS');
INSERT INTO Estado (ID_Estado, Descricao, Sigla) VALUES       (22, 'Rond nia', 'RO');
INSERT INTO Estado (ID_Estado, Descricao, Sigla) VALUES       (23, 'Roraima', 'RR');
INSERT INTO Estado (ID_Estado, Descricao, Sigla) VALUES       (24, 'Santa Catarina', 'SC');
INSERT INTO Estado (ID_Estado, Descricao, Sigla) VALUES       (25, 'S o Paulo', 'SP');
INSERT INTO Estado (ID_Estado, Descricao, Sigla) VALUES       (26, 'Sergipe', 'SE');
INSERT INTO Estado (ID_Estado, Descricao, Sigla) VALUES       (27, 'Tocantins', 'TO');

-- Cidade

INSERT INTO Cidade (ID_Cidade, Descricao, ID_Estado) VALUES (1, 'Rio Branco', 1);         
INSERT INTO Cidade (ID_Cidade, Descricao, ID_Estado) VALUES (2, 'Macei ', 2);            
INSERT INTO Cidade (ID_Cidade, Descricao, ID_Estado) VALUES (3, 'Macap ', 3);             
INSERT INTO Cidade (ID_Cidade, Descricao, ID_Estado) VALUES (4, 'Manaus', 4);             
INSERT INTO Cidade (ID_Cidade, Descricao, ID_Estado) VALUES (5, 'Salvador', 5);          
INSERT INTO Cidade (ID_Cidade, Descricao, ID_Estado) VALUES (6, 'Fortaleza', 6);          
INSERT INTO Cidade (ID_Cidade, Descricao, ID_Estado) VALUES (7, 'Bras lia', 7);          
INSERT INTO Cidade (ID_Cidade, Descricao, ID_Estado) VALUES (8, 'Vit ria', 8);            
INSERT INTO Cidade (ID_Cidade, Descricao, ID_Estado) VALUES (9, 'Goi nia', 9);          
INSERT INTO Cidade (ID_Cidade, Descricao, ID_Estado) VALUES (10, 'S o Lu s', 10);        
INSERT INTO Cidade (ID_Cidade, Descricao, ID_Estado) VALUES (11, 'Cuiab ', 11);         
INSERT INTO Cidade (ID_Cidade, Descricao, ID_Estado) VALUES (12, 'Campo Grande', 12);     
INSERT INTO Cidade (ID_Cidade, Descricao, ID_Estado) VALUES (13, 'Belo Horizonte', 13);   
INSERT INTO Cidade (ID_Cidade, Descricao, ID_Estado) VALUES (14, 'Bel m', 14);          
INSERT INTO Cidade (ID_Cidade, Descricao, ID_Estado) VALUES (15, 'Jo o Pessoa', 15);     
INSERT INTO Cidade (ID_Cidade, Descricao, ID_Estado) VALUES (16, 'Curitiba', 16);        
INSERT INTO Cidade (ID_Cidade, Descricao, ID_Estado) VALUES (17, 'Recife', 17);           
INSERT INTO Cidade (ID_Cidade, Descricao, ID_Estado) VALUES (18, 'Teresina', 18);        
INSERT INTO Cidade (ID_Cidade, Descricao, ID_Estado) VALUES (19, 'Rio de Janeiro', 19);  
INSERT INTO Cidade (ID_Cidade, Descricao, ID_Estado) VALUES (20, 'Natal', 20);           
INSERT INTO Cidade (ID_Cidade, Descricao, ID_Estado) VALUES (21, 'Porto Alegre', 21);    
INSERT INTO Cidade (ID_Cidade, Descricao, ID_Estado) VALUES (22, 'Porto Velho', 22);      
INSERT INTO Cidade (ID_Cidade, Descricao, ID_Estado) VALUES (23, 'Boa Vista', 23);        
INSERT INTO Cidade (ID_Cidade, Descricao, ID_Estado) VALUES (24, 'Florian polis', 24);    
INSERT INTO Cidade (ID_Cidade, Descricao, ID_Estado) VALUES (25, 'S o Paulo', 25);        
INSERT INTO Cidade (ID_Cidade, Descricao, ID_Estado) VALUES (26, 'Aracaju', 26);          
INSERT INTO Cidade (ID_Cidade, Descricao, ID_Estado) VALUES (27, 'Palmas', 27);           
INSERT INTO Cidade (ID_Cidade, Descricao, ID_Estado) VALUES (28, 'Itabuna', 5);        
INSERT INTO Cidade (ID_Cidade, Descricao, ID_Estado) VALUES (29, 'Feira de Santana', 5);  
INSERT INTO Cidade (ID_Cidade, Descricao, ID_Estado) VALUES (30, 'SSA', 5);        
INSERT INTO Cidade (ID_Cidade, Descricao, ID_Estado) VALUES (31, 'Ilh us', 5);            
INSERT INTO Cidade (ID_Cidade, Descricao, ID_Estado) VALUES (32, 'Porto Seguro', 5);         
INSERT INTO Cidade (ID_Cidade, Descricao, ID_Estado) VALUES (33, 'Campos do Jord o', 25); 
INSERT INTO Cidade (ID_Cidade, Descricao, ID_Estado) VALUES (34, 'Campinas', 25);        
INSERT INTO Cidade (ID_Cidade, Descricao, ID_Estado) VALUES (35, 'SP', 25);
INSERT INTO Cidade (ID_Cidade, Descricao, ID_Estado) VALUES (36, 'S o Bernardo', 25);    
INSERT INTO Cidade (ID_Cidade, Descricao, ID_Estado) VALUES (37, 'RJ', 19);        
INSERT INTO Cidade (ID_Cidade, Descricao, ID_Estado) VALUES (38, 'Paraty', 19);        
INSERT INTO Cidade (ID_Cidade, Descricao, ID_Estado) VALUES (39, 'Angra dos Reis', 19);        
INSERT INTO Cidade (ID_Cidade, Descricao, ID_Estado) VALUES (40, 'Passos', 13);  
INSERT INTO Cidade (ID_Cidade, Descricao, ID_Estado) VALUES (41, 'Monte Verde', 13);   
INSERT INTO Cidade (ID_Cidade, Descricao, ID_Estado) VALUES (42, 'Ouro Preto', 13);
commit;

-- Cliente

INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade, Estado_civil) VALUES (1, 'Jo o da Silva', 'M', 1,'S');
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade, Estado_civil) VALUES (2, 'Maria Oliveira', 'F', 2,'S');
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade, Estado_civil) VALUES (3, 'Pedro Santos', 'M', 28,'S');
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade, Estado_civil) VALUES (4, 'Ana Costa', 'F', 4,'S');
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade, Estado_civil) VALUES (5, 'Lucas Rodrigues', 'M', 5,'S');
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade, Estado_civil) VALUES (6, 'Mariana Almeida', '1', 29,'S');
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade, Estado_civil) VALUES (7, 'Carlos Souza', '2', 7,'S');
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade, Estado_civil) VALUES (8, 'Juliana Fernandes', 'F', 8,'S');
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade, Estado_civil) VALUES (9, 'Rafael Gomes', 'M', 30,'S');
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade, Estado_civil) VALUES (10, 'Camila Martins', 'F', 10,'S');
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade, Estado_civil) VALUES (11, 'Fernando Lima', '2', 11,'S');
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade, Estado_civil) VALUES (12, 'Vanessa Ribeiro', 'F', 31,'S');
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade, Estado_civil) VALUES (13, 'Jos  Ferreira', 'M', 13,'S');
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade, Estado_civil) VALUES (14, 'Carolina Pires', 'F', 14,'S');
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade, Estado_civil) VALUES (15, 'Eduardo Sousa', 'M', 32,'S');
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade, Estado_civil) VALUES (16, 'Luiza Carvalho', 'F', 16,'S');
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade, Estado_civil) VALUES (17, 'Paulo Andrade', '2', 17,'S');
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade, Estado_civil) VALUES (18, 'Amanda Nascimento', 'F', 33,'S');
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade, Estado_civil) VALUES (19, 'Gustavo Teixeira', 'M', 19,'S');
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade, Estado_civil) VALUES (20, 'Isabela Barbosa', '1', 20,'S');
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade, Estado_civil) VALUES (21, 'Ant nio Castro', 'M', 34,'S');
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade, Estado_civil) VALUES (22, 'Fernanda Duarte', 'F', 22,'S');
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade, Estado_civil) VALUES (23, 'Marcelo Ferreira', 'M', 23,'S');
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade, Estado_civil) VALUES (24, 'Let cia Cavalcanti', 'F', 35,'S');
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade, Estado_civil) VALUES (25, 'Andr  Alves', 'M', 25,'S');
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade, Estado_civil) VALUES (26, 'Patr cia Santos', 'F', 26,'S');
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade, Estado_civil) VALUES (27, 'Ricardo Oliveira', 'M', 36,'S');
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade, Estado_civil) VALUES (28, 'Bianca Lima', '1', 28,'S');
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade, Estado_civil) VALUES (29, 'S rgio Mendes', 'M', 29,'S');
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade, Estado_civil) VALUES (30, 'Mariana Costa', '1', 37,'S');
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade, Estado_civil) VALUES (31, 'Fernando Oliveira', 'M', 1,'S');
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade, Estado_civil) VALUES (32, 'Mariana Silva', 'F', 2,'S');
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade, Estado_civil) VALUES (33, 'Gustavo Costa', 'M', 38,'S');
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade, Estado_civil) VALUES (34, 'Isabela Santos', 'F', 4,'S');
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade, Estado_civil) VALUES (35, 'Ricardo Rodrigues', 'M', 5,'S');
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade, Estado_civil) VALUES (36, 'Luana Almeida', 'F', 30,'S');
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade, Estado_civil) VALUES (37, 'Henrique Souza', 'M', 7,'S');
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade, Estado_civil) VALUES (38, 'Larissa Fernandes', 'F', 8,'S');
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade, Estado_civil) VALUES (39, 'Rafael Gomes', 'M', 9,'S');
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade, Estado_civil) VALUES (40, 'Carolina Oliveira', 'F', 10,'S');
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade, Estado_civil) VALUES (41, 'Bruno Lima', 'M', 11,'S');
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade, Estado_civil) VALUES (42, 'Amanda Ribeiro', 'F', 29,'S');
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade, Estado_civil) VALUES (43, 'Rodrigo Ferreira', 'M', 13,'S');
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade, Estado_civil) VALUES (44, 'Marina Pires', 'F', 14,'S');
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade, Estado_civil) VALUES (45, 'Diego Sousa', 'M', 15,'S');
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade, Estado_civil) VALUES (46, 'Bianca Carvalho', 'F', 35,'S');
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade, Estado_civil) VALUES (47, 'Felipe Andrade', 'M', 17,'S');
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade, Estado_civil) VALUES (48, 'Let cia Nascimento', 'F', 18,'S');
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade, Estado_civil) VALUES (49, 'Andr  Teixeira', 'M', 19,'S');
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade, Estado_civil) VALUES (50, 'J lia Barbosa', 'F', 20,'C');
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade, Estado_civil) VALUES (51, 'Rafael Castro', 'M', 37,'C');
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade, Estado_civil) VALUES (52, 'Aline Duarte', 'F', 22,'C');
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade, Estado_civil) VALUES (53, 'Vinicius Ferreira', 'M', 23,'C');
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade, Estado_civil) VALUES (54, 'Nat lia Cavalcanti', 'F', 24,'C');
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade, Estado_civil) VALUES (55, 'Marcelo Alves', 'M', 25,'C');
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade, Estado_civil) VALUES (56, 'Patr cia Santos', 'F', 26,'C');
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade, Estado_civil) VALUES (57, 'Lucas Oliveira', 'M', 27,'C');
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade, Estado_civil) VALUES (58, 'Juliana Lima', 'F', 28,'C');
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade, Estado_civil) VALUES (59, 'Pedro Mendes', 'M', 29,'C');
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade, Estado_civil) VALUES (60, 'Vanessa Costa', 'F', 36,'C');
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade, Estado_civil) VALUES (61, 'Ricardo Almeida', 'M', 1,'C');
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade, Estado_civil) VALUES (62, 'Laura Lima', 'F', 2,'C');
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade, Estado_civil) VALUES (63, 'Andr  Costa', 'M', 3,'C');
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade, Estado_civil) VALUES (64, 'Gabriela Oliveira', 'F', 4,'C');
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade, Estado_civil) VALUES (65, 'Pedro Rodrigues', 'M', 5,'C');
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade, Estado_civil) VALUES (66, 'Carolina Alves', 'F', 28,'C');
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade, Estado_civil) VALUES (67, 'Lucas Souza', 'M', 7,'C');
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade, Estado_civil) VALUES (68, 'Fernanda Fernandes', 'F', 8,'C');
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade, Estado_civil) VALUES (69, 'Gustavo Gomes', 'M', 9,'C');
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade, Estado_civil) VALUES (70, 'Amanda Santos', 'F', 10,'C');
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade, Estado_civil) VALUES (71, 'Bruno Ribeiro', 'M', 11,'C');
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade, Estado_civil) VALUES (72, 'Mariana Ferreira', 'F', 30,'C');
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade, Estado_civil) VALUES (73, 'Rodrigo Pires', 'M', 13,'C');
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade, Estado_civil) VALUES (74, 'Isabela Sousa', 'F', 14,'C');
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade, Estado_civil) VALUES (75, 'Diego Silva', 'M', 15,'C');
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade, Estado_civil) VALUES (76, 'Let cia Carvalho', 'F', 16,'C');
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade, Estado_civil) VALUES (77, 'Felipe Andrade', 'M', 17,'C');
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade, Estado_civil) VALUES (78, 'Larissa Nascimento', 'F', 18,'C');
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade, Estado_civil) VALUES (79, 'Henrique Teixeira', 'M', 19,'C');
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade, Estado_civil) VALUES (80, 'Camila Barbosa', 'F', 31,'C');
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade, Estado_civil) VALUES (81, 'Rafael Castro', 'M', 21,'C');
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade, Estado_civil) VALUES (82, 'Nat lia Duarte', 'F', 22,'C');
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade, Estado_civil) VALUES (83, 'Vinicius Ferreira', 'M', 23,'C');
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade, Estado_civil) VALUES (84, 'Mariana Cavalcanti', 'F', 24,'C');
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade, Estado_civil) VALUES (85, 'Marcelo Alves', 'M', 25,'C');
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade, Estado_civil) VALUES (86, 'Patr cia Santos', 'F', 26,'C');
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade, Estado_civil) VALUES (87, 'Lucas Oliveira', 'M', 27,'C');
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade, Estado_civil) VALUES (88, 'Juliana Lima', 'F', 28,'C');
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade, Estado_civil) VALUES (89, 'Pedro Mendes', 'M', 29,'C');
INSERT INTO cliente (ID_Cliente, Nome, Sexo, ID_Cidade, Estado_civil) VALUES (90, 'Vanessa Costa', 'F', 30,'C');
commit;

-- Compras (Cabe alho) - 10.000 compras

INSERT INTO Compra (ID_Compra, ID_Cliente, Data)
SELECT
    SQ_Compra.Nextval,
    FLOOR(DBMS_RANDOM.VALUE(1, (select count(*) from cliente)+1)) AS ID_Cliente,
--    FLOOR(DBMS_RANDOM.VALUE(1, 91)) AS ID_Cliente,
    to_DATE('01.01.2020') + NUMTODSINTERVAL(FLOOR(DBMS_RANDOM.VALUE(0, 1825)), 'DAY') AS Data_Compra
FROM dual
CONNECT BY LEVEL <= 10000;

commit;

-- Insers o de 30000 aparelhos de celular
BEGIN
    FOR i IN 1..30000 LOOP
        INSERT INTO aparelho (ID_Aparelho, Numero_Serie, ID_Modelo)
        VALUES (i, DBMS_RANDOM.STRING('U', 10), TRUNC(DBMS_RANDOM.VALUE(1, 31)));
    END LOOP;
    COMMIT;
END;

-- Insers o do carrinho de compras 
DECLARE
  v_ano int;
  v_id_aparelho aparelho.ID_Aparelho%TYPE;
  v_quantidade int;
  v_valor NUMBER;
  v_qtde_itens_diferentes int;
BEGIN
  FOR i IN 1..10000 LOOP   -- Loop para as 10.000 compras realizadas
    -- Recupera o ano da compra
   SELECT extract(year from Data) INTO v_ano FROM COMPRA WHERE ID_Compra = i;

    v_qtde_itens_diferentes := 1;
    IF ( MOD(i,179) = 0 ) THEN -- A cada 179 compras, haverá 2 itens diferentes comprados no carrinho;
       v_qtde_itens_diferentes := 2;
    END IF;

    FOR j IN 1..v_qtde_itens_diferentes LOOP	
        
		-- Seleciona um ID_Aparelho aleatÃ³rio existente na tabela Aparelhos
		SELECT ID_Aparelho INTO v_id_aparelho
		FROM (SELECT ID_Aparelho FROM aparelho WHERE ID_Aparelho NOT IN (SELECT ID_Aparelho FROM Carrinho) )
		--ORDER BY DBMS_RANDOM.VALUE) 
		WHERE ROWNUM = 1;
		        
        -- Gera uma quantidade aleatÃ³ria entre 1 e 3
		v_quantidade := FLOOR(DBMS_RANDOM.VALUE(1, 4));
		
		-- Gera um valor aleatÃ³rio entre 900.00 e 12000.00, multiplica pela quantidade de itens comprados
        -- E reajusta o valor a cada ano da compra (5%) após o 1o ano que foi 2020.
		v_valor := DBMS_RANDOM.VALUE(900.00, 12000.00) * v_quantidade;
        IF (v_ano > 2020 ) THEN
            v_valor := v_valor + ( v_valor * ( (v_ano - 2020) * 5) / 100 );
		END IF;
       
		-- Insere o item de compra na tabela Carrinho
		INSERT INTO carrinho (ID_Carrinho, ID_Compra, ID_Aparelho, Quantidade, Valor)
		VALUES (SQ_Carrinho.NEXTVAL, i, v_id_aparelho, v_quantidade, v_valor);
        
    END LOOP;
  END LOOP;
  
  COMMIT;
END;

-- CORREÇÕES OLTP
UPDATE CLIENTE SET ID_CIDADE = 5 WHERE ID_CIDADE = 30;
UPDATE CLIENTE SET ID_CIDADE = 19 WHERE ID_CIDADE = 37;
UPDATE CLIENTE SET ID_CIDADE = 25 WHERE ID_CIDADE = 35;