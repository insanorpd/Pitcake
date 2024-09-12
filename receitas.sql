USE pitcakeDB;

-- Tabela principal para armazenar informações da receita
CREATE TABLE receitas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(255) NOT NULL,
    descricao TEXT
);

-- Tabela para armazenar ingredientes
CREATE TABLE ingredientes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    receita_id INT,
    tipo VARCHAR(100),
    quantidade VARCHAR(50),
    descricao VARCHAR(255),
    FOREIGN KEY (receita_id) REFERENCES receitas(id)
);

-- Tabela para armazenar o modo de preparo
CREATE TABLE preparo (
    id INT AUTO_INCREMENT PRIMARY KEY,
    receita_id INT,
    tipo VARCHAR(100),
    ordem INT,
    instrucoes TEXT,
    FOREIGN KEY (receita_id) REFERENCES receitas(id)
);

-- Tabela para armazenar dicas
CREATE TABLE dicas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    receita_id INT,
    dica TEXT,
    FOREIGN KEY (receita_id) REFERENCES receitas(id)
);

INSERT INTO receitas (titulo, descricao)
VALUES ('Cupcakes de Chocolate', 'Uma receita deliciosa de cupcakes de chocolate com ganache de chocolate.');

-- Ingredientes para os cupcakes
INSERT INTO ingredientes (receita_id, tipo, quantidade, descricao)
VALUES
(1, 'Cupcakes', '1 xícara (chá)', 'farinha de trigo'),
(1, 'Cupcakes', '1 xícara (chá)', 'açúcar'),
(1, 'Cupcakes', '1/2 xícara (chá)', 'cacau em pó'),
(1, 'Cupcakes', '1 colher (chá)', 'fermento em pó'),
(1, 'Cupcakes', '1/2 colher (chá)', 'bicarbonato de sódio'),
(1, 'Cupcakes', '1/2 colher (chá)', 'sal'),
(1, 'Cupcakes', '1/2 xícara (chá)', 'óleo vegetal'),
(1, 'Cupcakes', '1/2 xícara (chá)', 'leite'),
(1, 'Cupcakes', '1', 'ovo'),
(1, 'Cupcakes', '1 colher (chá)', 'extrato de baunilha'),
(1, 'Cupcakes', '1/2 xícara (chá)', 'água quente');

-- Ingredientes para a cobertura
INSERT INTO ingredientes (receita_id, tipo, quantidade, descricao)
VALUES
(1, 'Cobertura', '200g', 'chocolate meio amargo ou ao leite'),
(1, 'Cobertura', '1/2 xícara (chá)', 'creme de leite');

-- Modo de preparo para os cupcakes
INSERT INTO preparo (receita_id, tipo, ordem, instrucoes)
VALUES
(1, 'Cupcakes', 1, 'Pré-aqueça o forno a 180°C e coloque forminhas de papel em uma forma para cupcakes.'),
(1, 'Cupcakes', 2, 'Misture os ingredientes secos: Em uma tigela grande, peneire a farinha, o açúcar, o cacau em pó, o fermento, o bicarbonato e o sal.'),
(1, 'Cupcakes', 3, 'Adicione os ingredientes líquidos: Acrescente o óleo, o leite, o ovo e a baunilha aos ingredientes secos. Misture até ficar homogêneo.'),
(1, 'Cupcakes', 4, 'Adicione a água quente: Aos poucos, adicione a água quente à massa e misture até incorporar. A massa ficará bem líquida, mas é assim mesmo.'),
(1, 'Cupcakes', 5, 'Encha as forminhas: Distribua a massa nas forminhas, enchendo até 2/3 da capacidade.'),
(1, 'Cupcakes', 6, 'Asse: Leve ao forno por cerca de 18 a 22 minutos, ou até que um palito inserido no centro saia limpo.'),
(1, 'Cupcakes', 7, 'Resfrie: Retire os cupcakes do forno e deixe esfriar completamente antes de adicionar a cobertura.');

-- Modo de preparo para a cobertura
INSERT INTO preparo (receita_id, tipo, ordem, instrucoes)
VALUES
(1, 'Cobertura', 1, 'Derreta o chocolate: Pique o chocolate em pedaços pequenos e derreta em banho-maria ou no micro-ondas, mexendo a cada 30 segundos para evitar que queime.'),
(1, 'Cobertura', 2, 'Adicione o creme de leite: Misture o creme de leite ao chocolate derretido até obter uma ganache lisa e brilhante.'),
(1, 'Cobertura', 3, 'Cubra os cupcakes: Espere a ganache esfriar um pouco e, em seguida, espalhe sobre os cupcakes.');

INSERT INTO dicas (receita_id, dica)
VALUES
(1, 'Você pode rechear os cupcakes com creme de chocolate ou geleia antes de cobrir com a ganache.'),
(1, 'Se preferir uma cobertura mais doce, substitua o chocolate meio amargo pelo chocolate ao leite.');

INSERT INTO receitas (titulo, descricao)
VALUES ('Cupcakes de Baunilha', 'Deliciosos cupcakes de baunilha com cobertura de creme de baunilha.');

-- Adiciona a receita de Cupcake de Morango
INSERT INTO receitas (titulo, descricao)
VALUES ('Cupcakes de Morango', 'Deliciosos cupcakes de morango com cobertura de chantilly.');

-- Ingredientes para os cupcakes de morango
INSERT INTO ingredientes (receita_id, tipo, quantidade, descricao)
VALUES
(2, 'Cupcakes', '1 e 1/2 xícara (chá)', 'farinha de trigo'),
(2, 'Cupcakes', '1 xícara (chá)', 'açúcar'),
(2, 'Cupcakes', '1/2 xícara (chá)', 'manteiga derretida'),
(2, 'Cupcakes', '2', 'ovos'),
(2, 'Cupcakes', '1 colher (chá)', 'fermento em pó'),
(2, 'Cupcakes', '1/2 xícara (chá)', 'leite'),
(2, 'Cupcakes', '1 colher (chá)', 'extrato de baunilha'),
(2, 'Cupcakes', '1 xícara (chá)', 'purê de morango');

-- Ingredientes para a cobertura de chantilly
INSERT INTO ingredientes (receita_id, tipo, quantidade, descricao)
VALUES
(2, 'Cobertura', '1 xícara (chá)', 'creme de leite fresco'),
(2, 'Cobertura', '1/2 xícara (chá)', 'açúcar de confeiteiro'),
(2, 'Cobertura', '1 colher (chá)', 'extrato de baunilha');

-- Modo de preparo para os cupcakes de morango
INSERT INTO preparo (receita_id, tipo, ordem, instrucoes)
VALUES
(2, 'Cupcakes', 1, 'Pré-aqueça o forno a 180°C e prepare as forminhas de cupcakes.'),
(2, 'Cupcakes', 2, 'Misture a farinha, o fermento e o sal em uma tigela.'),
(2, 'Cupcakes', 3, 'Em outra tigela, bata os ovos com o açúcar e a manteiga derretida até ficar cremoso.'),
(2, 'Cupcakes', 4, 'Adicione o leite, o extrato de baunilha e o purê de morango e misture bem.'),
(2, 'Cupcakes', 5, 'Incorpore os ingredientes secos e mexa até formar uma massa homogênea.'),
(2, 'Cupcakes', 6, 'Distribua a massa nas forminhas e asse por 18-20 minutos.');

-- Modo de preparo para a cobertura de chantilly
INSERT INTO preparo (receita_id, tipo, ordem, instrucoes)
VALUES
(2, 'Cobertura', 1, 'Bata o creme de leite fresco com o açúcar de confeiteiro até formar picos firmes.'),
(2, 'Cobertura', 2, 'Adicione o extrato de baunilha e misture delicadamente.');

-- Dicas para os cupcakes de morango
INSERT INTO dicas (receita_id, dica)
VALUES
(2, 'Para um sabor mais intenso, adicione pedaços de morango fresco à massa antes de assar.'),
(2, 'Você pode substituir o purê de morango por geleia de morango para um sabor mais doce.');


-- Ingredientes para os cupcakes de baunilha
INSERT INTO ingredientes (receita_id, tipo, quantidade, descricao)
VALUES
(3, 'Cupcakes', '1 e 1/2 xícara (chá)', 'farinha de trigo'),
(3, 'Cupcakes', '1/2 xícara (chá)', 'açúcar'),
(3, 'Cupcakes', '1/2 xícara (chá)', 'manteiga derretida'),
(3, 'Cupcakes', '2', 'ovos'),
(3, 'Cupcakes', '1 colher (chá)', 'fermento em pó'),
(3, 'Cupcakes', '1/2 xícara (chá)', 'leite'),
(3, 'Cupcakes', '1 colher (chá)', 'extrato de baunilha');

-- Ingredientes para a cobertura de baunilha
INSERT INTO ingredientes (receita_id, tipo, quantidade, descricao)
VALUES
(3, 'Cobertura', '1 xícara (chá)', 'creme de leite fresco'),
(3, 'Cobertura', '1/2 xícara (chá)', 'açúcar de confeiteiro'),
(3, 'Cobertura', '1 colher (chá)', 'extrato de baunilha');

-- Modo de preparo dos cupcakes de baunilha
INSERT INTO preparo (receita_id, tipo, ordem, instrucoes)
VALUES
(3, 'Cupcakes', 1, 'Pré-aqueça o forno a 180°C e prepare as forminhas de cupcakes.'),
(3, 'Cupcakes', 2, 'Misture a farinha, o fermento e o sal em uma tigela.'),
(3, 'Cupcakes', 3, 'Em outra tigela, bata os ovos com o açúcar e a manteiga derretida até ficar cremoso.'),
(3, 'Cupcakes', 4, 'Adicione o leite e o extrato de baunilha e misture.'),
(3, 'Cupcakes', 5, 'Incorpore os ingredientes secos e mexa até formar uma massa homogênea.'),
(3, 'Cupcakes', 6, 'Distribua a massa nas forminhas e asse por 18-20 minutos.');

-- Modo de preparo da cobertura de baunilha
INSERT INTO preparo (receita_id, tipo, ordem, instrucoes)
VALUES
(3, 'Cobertura', 1, 'Bata o creme de leite fresco com o açúcar de confeiteiro até formar picos firmes.'),
(3, 'Cobertura', 2, 'Adicione o extrato de baunilha e misture delicadamente.');

-- Dicas para os cupcakes de baunilha
INSERT INTO dicas (receita_id, dica)
VALUES
(3, 'Adicione raspas de limão à massa para dar um toque cítrico.'),
(3, 'Cubra os cupcakes com frutas frescas para um acabamento especial.');

-- Adiciona a receita de Cupcake de Menta
INSERT INTO receitas (titulo, descricao)
VALUES ('Cupcakes de Menta', 'Cupcakes refrescantes com um toque de menta e cobertura de chocolate.');

-- Ingredientes para os cupcakes de menta
INSERT INTO ingredientes (receita_id, tipo, quantidade, descricao)
VALUES
(4, 'Cupcakes', '1 e 1/2 xícara (chá)', 'farinha de trigo'),
(4, 'Cupcakes', '1 xícara (chá)', 'açúcar'),
(4, 'Cupcakes', '1/2 xícara (chá)', 'manteiga derretida'),
(4, 'Cupcakes', '2', 'ovos'),
(4, 'Cupcakes', '1 colher (chá)', 'fermento em pó'),
(4, 'Cupcakes', '1/2 xícara (chá)', 'leite'),
(4, 'Cupcakes', '1 colher (chá)', 'extrato de baunilha'),
(4, 'Cupcakes', '2 colheres (chá)', 'essência de menta'),
(4, 'Cupcakes', '1/2 xícara (chá)', 'folhas de menta picadas (opcional)');

-- Ingredientes para a cobertura de chocolate
INSERT INTO ingredientes (receita_id, tipo, quantidade, descricao)
VALUES
(4, 'Cobertura', '200g', 'chocolate meio amargo'),
(4, 'Cobertura', '1/2 xícara (chá)', 'creme de leite');

-- Modo de preparo para os cupcakes de menta
INSERT INTO preparo (receita_id, tipo, ordem, instrucoes)
VALUES
(4, 'Cupcakes', 1, 'Pré-aqueça o forno a 180°C e prepare as forminhas de cupcakes.'),
(4, 'Cupcakes', 2, 'Misture a farinha, o fermento e o sal em uma tigela.'),
(4, 'Cupcakes', 3, 'Em outra tigela, bata os ovos com o açúcar e a manteiga derretida até obter um creme leve.'),
(4, 'Cupcakes', 4, 'Adicione o leite, o extrato de baunilha e a essência de menta à mistura e mexa bem.'),
(4, 'Cupcakes', 5, 'Incorpore os ingredientes secos e misture até ficar homogêneo. Se desejar, adicione as folhas de menta picadas.'),
(4, 'Cupcakes', 6, 'Distribua a massa nas forminhas e asse por 18-20 minutos.');

-- Modo de preparo para a cobertura de chocolate
INSERT INTO preparo (receita_id, tipo, ordem, instrucoes)
VALUES
(4, 'Cobertura', 1, 'Derreta o chocolate em banho-maria ou no micro-ondas, mexendo a cada 30 segundos.'),
(4, 'Cobertura', 2, 'Adicione o creme de leite ao chocolate derretido e misture até obter uma ganache lisa.');

-- Dicas para os cupcakes de menta
INSERT INTO dicas (receita_id, dica)
VALUES
(4, 'Para um toque extra de menta, adicione um pouco de essência de menta à ganache de chocolate.'),
(4, 'Decore com folhas de menta fresca para um visual mais atraente e um sabor extra.');

-- Adiciona a receita de Cupcake de Cenoura
INSERT INTO receitas (titulo, descricao)
VALUES ('Cupcakes de Cenoura', 'Cupcakes fofos de cenoura com cobertura de cream cheese.');

-- Ingredientes para os cupcakes de cenoura
INSERT INTO ingredientes (receita_id, tipo, quantidade, descricao)
VALUES
(5, 'Cupcakes', '1 e 1/2 xícara (chá)', 'farinha de trigo'),
(5, 'Cupcakes', '1 xícara (chá)', 'açúcar'),
(5, 'Cupcakes', '1/2 xícara (chá)', 'manteiga derretida'),
(5, 'Cupcakes', '2', 'ovos'),
(5, 'Cupcakes', '1 colher (chá)', 'fermento em pó'),
(5, 'Cupcakes', '1/2 colher (chá)', 'bicarbonato de sódio'),
(5, 'Cupcakes', '1 colher (chá)', 'canela em pó'),
(5, 'Cupcakes', '1/4 colher (chá)', 'sal'),
(5, 'Cupcakes', '1 e 1/2 xícara (chá)', 'cenoura ralada'),
(5, 'Cupcakes', '1/2 xícara (chá)', 'nozes picadas (opcional)'),
(5, 'Cupcakes', '1/2 xícara (chá)', 'óleo vegetal');

-- Ingredientes para a cobertura de cream cheese
INSERT INTO ingredientes (receita_id, tipo, quantidade, descricao)
VALUES
(5, 'Cobertura', '200g', 'cream cheese'),
(5, 'Cobertura', '1/4 xícara (chá)', 'manteiga'),
(5, 'Cobertura', '1 xícara (chá)', 'açúcar de confeiteiro'),
(5, 'Cobertura', '1 colher (chá)', 'extrato de baunilha');

-- Modo de preparo para os cupcakes de cenoura
INSERT INTO preparo (receita_id, tipo, ordem, instrucoes)
VALUES
(5, 'Cupcakes', 1, 'Pré-aqueça o forno a 180°C e prepare as forminhas de cupcakes.'),
(5, 'Cupcakes', 2, 'Em uma tigela, misture a farinha, o fermento, o bicarbonato, a canela e o sal.'),
(5, 'Cupcakes', 3, 'Em outra tigela, bata os ovos com o açúcar e a manteiga derretida até obter uma mistura cremosa.'),
(5, 'Cupcakes', 4, 'Adicione o óleo e misture bem.'),
(5, 'Cupcakes', 5, 'Incorpore a mistura seca aos ingredientes úmidos, mexendo até ficar homogêneo.'),
(5, 'Cupcakes', 6, 'Adicione a cenoura ralada e as nozes picadas, se estiver usando.'),
(5, 'Cupcakes', 7, 'Distribua a massa nas forminhas e asse por 20-25 minutos.');

-- Modo de preparo para a cobertura de cream cheese
INSERT INTO preparo (receita_id, tipo, ordem, instrucoes)
VALUES
(5, 'Cobertura', 1, 'Bata o cream cheese e a manteiga até obter uma mistura cremosa e homogênea.'),
(5, 'Cobertura', 2, 'Adicione o açúcar de confeiteiro e o extrato de baunilha e continue batendo até a cobertura ficar leve e fofa.');

-- Dicas para os cupcakes de cenoura
INSERT INTO dicas (receita_id, dica)
VALUES
(5, 'Adicione passas ou pedaços de maçã à massa para um toque extra de sabor.'),
(5, 'Para um visual mais atraente, decore com nozes picadas ou um pouco de canela em pó.');

-- Adiciona a receita de Cupcake de Limão
INSERT INTO receitas (titulo, descricao)
VALUES ('Cupcakes de Limão', 'Deliciosos cupcakes com sabor cítrico de limão e cobertura de glacê de limão.');

-- Ingredientes para os cupcakes de limão
INSERT INTO ingredientes (receita_id, tipo, quantidade, descricao)
VALUES
(6, 'Cupcakes', '1 e 1/2 xícara (chá)', 'farinha de trigo'),
(6, 'Cupcakes', '1 xícara (chá)', 'açúcar'),
(6, 'Cupcakes', '1/2 xícara (chá)', 'manteiga derretida'),
(6, 'Cupcakes', '2', 'ovos'),
(6, 'Cupcakes', '1 colher (chá)', 'fermento em pó'),
(6, 'Cupcakes', '1/2 colher (chá)', 'bicarbonato de sódio'),
(6, 'Cupcakes', '1/4 colher (chá)', 'sal'),
(6, 'Cupcakes', '1/2 xícara (chá)', 'leite'),
(6, 'Cupcakes', '1/4 xícara (chá)', 'suco de limão fresco'),
(6, 'Cupcakes', '1 colher (chá)', 'raspas de limão');

-- Ingredientes para a cobertura de glacê de limão
INSERT INTO ingredientes (receita_id, tipo, quantidade, descricao)
VALUES
(6, 'Cobertura', '1 xícara (chá)', 'açúcar de confeiteiro'),
(6, 'Cobertura', '2 colheres (sopa)', 'suco de limão'),
(6, 'Cobertura', '1 colher (sopa)', 'manteiga');

-- Modo de preparo para os cupcakes de limão
INSERT INTO preparo (receita_id, tipo, ordem, instrucoes)
VALUES
(6, 'Cupcakes', 1, 'Pré-aqueça o forno a 180°C e prepare as forminhas de cupcakes.'),
(6, 'Cupcakes', 2, 'Misture a farinha, o fermento, o bicarbonato e o sal em uma tigela.'),
(6, 'Cupcakes', 3, 'Em outra tigela, bata os ovos com o açúcar e a manteiga derretida até obter uma mistura cremosa.'),
(6, 'Cupcakes', 4, 'Adicione o leite, o suco de limão e as raspas de limão e misture bem.'),
(6, 'Cupcakes', 5, 'Incorpore os ingredientes secos à mistura úmida e mexa até ficar homogêneo.'),
(6, 'Cupcakes', 6, 'Distribua a massa nas forminhas e asse por 18-22 minutos.');

-- Modo de preparo para a cobertura de glacê de limão
INSERT INTO preparo (receita_id, tipo, ordem, instrucoes)
VALUES
(6, 'Cobertura', 1, 'Bata o açúcar de confeiteiro com o suco de limão e a manteiga até obter um glacê liso e cremoso.'),
(6, 'Cobertura', 2, 'Espalhe o glacê sobre os cupcakes resfriados.');

-- Dicas para os cupcakes de limão
INSERT INTO dicas (receita_id, dica)
VALUES
(6, 'Para um sabor extra, adicione um pouco de raspas de limão à massa dos cupcakes.'),
(6, 'Decore com uma fatia de limão ou um pouco de açúcar cristal para um acabamento especial.');

-- Adiciona a receita de Cupcake de Oreo
INSERT INTO receitas (titulo, descricao)
VALUES ('Cupcakes de Oreo', 'Cupcakes saborosos com pedaços de Oreo na massa e cobertura de cream cheese com Oreo.');

-- Ingredientes para os cupcakes de Oreo
INSERT INTO ingredientes (receita_id, tipo, quantidade, descricao)
VALUES
(7, 'Cupcakes', '1 e 1/2 xícara (chá)', 'farinha de trigo'),
(7, 'Cupcakes', '1 xícara (chá)', 'açúcar'),
(7, 'Cupcakes', '1/2 xícara (chá)', 'manteiga derretida'),
(7, 'Cupcakes', '2', 'ovos'),
(7, 'Cupcakes', '1 colher (chá)', 'fermento em pó'),
(7, 'Cupcakes', '1/2 colher (chá)', 'bicarbonato de sódio'),
(7, 'Cupcakes', '1/4 colher (chá)', 'sal'),
(7, 'Cupcakes', '1/2 xícara (chá)', 'leite'),
(7, 'Cupcakes', '1/2 xícara (chá)', 'cacau em pó'),
(7, 'Cupcakes', '1 xícara (chá)', 'pedaços de biscoito Oreo');

-- Ingredientes para a cobertura de cream cheese com Oreo
INSERT INTO ingredientes (receita_id, tipo, quantidade, descricao)
VALUES
(7, 'Cobertura', '200g', 'cream cheese'),
(7, 'Cobertura', '1/4 xícara (chá)', 'manteiga'),
(7, 'Cobertura', '1 xícara (chá)', 'açúcar de confeiteiro'),
(7, 'Cobertura', '1/2 xícara (chá)', 'pedaços de biscoito Oreo'),
(7, 'Cobertura', '1 colher (chá)', 'extrato de baunilha');

-- Modo de preparo para os cupcakes de Oreo
INSERT INTO preparo (receita_id, tipo, ordem, instrucoes)
VALUES
(7, 'Cupcakes', 1, 'Pré-aqueça o forno a 180°C e prepare as forminhas de cupcakes.'),
(7, 'Cupcakes', 2, 'Misture a farinha, o fermento, o bicarbonato, o sal e o cacau em uma tigela.'),
(7, 'Cupcakes', 3, 'Em outra tigela, bata os ovos com o açúcar e a manteiga derretida até obter uma mistura cremosa.'),
(7, 'Cupcakes', 4, 'Adicione o leite à mistura e mexa bem.'),
(7, 'Cupcakes', 5, 'Incorpore os ingredientes secos à mistura úmida e mexa até ficar homogêneo.'),
(7, 'Cupcakes', 6, 'Adicione os pedaços de Oreo à massa e misture delicadamente.'),
(7, 'Cupcakes', 7, 'Distribua a massa nas forminhas e asse por 18-22 minutos.');

-- Modo de preparo para a cobertura de cream cheese com Oreo
INSERT INTO preparo (receita_id, tipo, ordem, instrucoes)
VALUES
(7, 'Cobertura', 1, 'Bata o cream cheese e a manteiga até obter uma mistura cremosa e homogênea.'),
(7, 'Cobertura', 2, 'Adicione o açúcar de confeiteiro e o extrato de baunilha e continue batendo até a mistura ficar leve e fofa.'),
(7, 'Cobertura', 3, 'Incorpore os pedaços de Oreo à cobertura e misture bem.');

-- Dicas para os cupcakes de Oreo
INSERT INTO dicas (receita_id, dica)
VALUES
(7, 'Para um sabor extra, adicione um pedaço de Oreo na massa antes de assar.'),
(7, 'Decore os cupcakes com metades de Oreo para um visual mais atraente.');

-- Adiciona a receita de Cupcake de Nutella
INSERT INTO receitas (titulo, descricao)
VALUES ('Cupcakes de Nutella', 'Deliciosos cupcakes de chocolate com um recheio cremoso de Nutella e cobertura de Nutella.');

-- Ingredientes para os cupcakes de Nutella
INSERT INTO ingredientes (receita_id, tipo, quantidade, descricao)
VALUES
(8, 'Cupcakes', '1 e 1/2 xícara (chá)', 'farinha de trigo'),
(8, 'Cupcakes', '1 xícara (chá)', 'açúcar'),
(8, 'Cupcakes', '1/2 xícara (chá)', 'cacau em pó'),
(8, 'Cupcakes', '1/2 xícara (chá)', 'manteiga derretida'),
(8, 'Cupcakes', '2', 'ovos'),
(8, 'Cupcakes', '1 colher (chá)', 'fermento em pó'),
(8, 'Cupcakes', '1/2 colher (chá)', 'bicarbonato de sódio'),
(8, 'Cupcakes', '1/4 colher (chá)', 'sal'),
(8, 'Cupcakes', '1/2 xícara (chá)', 'leite'),
(8, 'Cupcakes', '1/2 xícara (chá)', 'Nutella (para recheio)');

-- Ingredientes para a cobertura de Nutella
INSERT INTO ingredientes (receita_id, tipo, quantidade, descricao)
VALUES
(8, 'Cobertura', '200g', 'Nutella'),
(8, 'Cobertura', '1/2 xícara (chá)', 'cream cheese'),
(8, 'Cobertura', '1/4 xícara (chá)', 'manteiga'),
(8, 'Cobertura', '1 xícara (chá)', 'açúcar de confeiteiro'),
(8, 'Cobertura', '1 colher (chá)', 'extrato de baunilha');

-- Modo de preparo para os cupcakes de Nutella
INSERT INTO preparo (receita_id, tipo, ordem, instrucoes)
VALUES
(8, 'Cupcakes', 1, 'Pré-aqueça o forno a 180°C e prepare as forminhas de cupcakes.'),
(8, 'Cupcakes', 2, 'Misture a farinha, o cacau, o fermento, o bicarbonato e o sal em uma tigela.'),
(8, 'Cupcakes', 3, 'Em outra tigela, bata os ovos com o açúcar e a manteiga derretida até obter uma mistura cremosa.'),
(8, 'Cupcakes', 4, 'Adicione o leite e continue batendo até a mistura ficar homogênea.'),
(8, 'Cupcakes', 5, 'Incorpore os ingredientes secos à mistura úmida e mexa bem.'),
(8, 'Cupcakes', 6, 'Distribua a massa nas forminhas e asse por 18-22 minutos.'),
(8, 'Cupcakes', 7, 'Depois de assar e esfriar, faça um buraco no centro de cada cupcake e coloque uma colher de Nutella como recheio.');

-- Modo de preparo para a cobertura de Nutella
INSERT INTO preparo (receita_id, tipo, ordem, instrucoes)
VALUES
(8, 'Cobertura', 1, 'Bata a Nutella com o cream cheese e a manteiga até ficar homogêneo.'),
(8, 'Cobertura', 2, 'Adicione o açúcar de confeiteiro e o extrato de baunilha e continue batendo até a mistura ficar cremosa.'),
(8, 'Cobertura', 3, 'Espalhe a cobertura sobre os cupcakes resfriados.');

-- Dicas para os cupcakes de Nutella
INSERT INTO dicas (receita_id, dica)
VALUES
(8, 'Para um sabor extra, adicione pedaços de chocolate à massa antes de assar.'),
(8, 'Se desejar, decore com avelãs picadas ou mais Nutella por cima.');

-- Adiciona a receita de Cupcake de Café
INSERT INTO receitas (titulo, descricao)
VALUES ('Cupcakes de Café', 'Cupcakes fofos com sabor de café, perfeitos para quem ama um toque de café em sobremesas.');

-- Ingredientes para os cupcakes de café
INSERT INTO ingredientes (receita_id, tipo, quantidade, descricao)
VALUES
(9, 'Cupcakes', '1 e 1/2 xícara (chá)', 'farinha de trigo'),
(9, 'Cupcakes', '1 xícara (chá)', 'açúcar'),
(9, 'Cupcakes', '1/2 xícara (chá)', 'manteiga derretida'),
(9, 'Cupcakes', '2', 'ovos'),
(9, 'Cupcakes', '1 colher (chá)', 'fermento em pó'),
(9, 'Cupcakes', '1/2 colher (chá)', 'bicarbonato de sódio'),
(9, 'Cupcakes', '1/4 colher (chá)', 'sal'),
(9, 'Cupcakes', '1/2 xícara (chá)', 'leite'),
(9, 'Cupcakes', '1/2 xícara (chá)', 'café expresso forte (frio)'),
(9, 'Cupcakes', '1 colher (chá)', 'extrato de baunilha');

-- Ingredientes para a cobertura de café
INSERT INTO ingredientes (receita_id, tipo, quantidade, descricao)
VALUES
(9, 'Cobertura', '200g', 'cream cheese'),
(9, 'Cobertura', '1/4 xícara (chá)', 'manteiga'),
(9, 'Cobertura', '1 xícara (chá)', 'açúcar de confeiteiro'),
(9, 'Cobertura', '2 colheres (sopa)', 'café expresso forte (frio)'),
(9, 'Cobertura', '1 colher (chá)', 'extrato de baunilha');

-- Modo de preparo para os cupcakes de café
INSERT INTO preparo (receita_id, tipo, ordem, instrucoes)
VALUES
(9, 'Cupcakes', 1, 'Pré-aqueça o forno a 180°C e prepare as forminhas de cupcakes.'),
(9, 'Cupcakes', 2, 'Misture a farinha, o fermento, o bicarbonato e o sal em uma tigela.'),
(9, 'Cupcakes', 3, 'Em outra tigela, bata os ovos com o açúcar e a manteiga derretida até obter uma mistura cremosa.'),
(9, 'Cupcakes', 4, 'Adicione o leite, o café expresso e o extrato de baunilha à mistura e mexa bem.'),
(9, 'Cupcakes', 5, 'Incorpore os ingredientes secos à mistura úmida e mexa até ficar homogêneo.'),
(9, 'Cupcakes', 6, 'Distribua a massa nas forminhas e asse por 18-22 minutos.'),
(9, 'Cupcakes', 7, 'Deixe esfriar antes de adicionar a cobertura.');

-- Modo de preparo para a cobertura de café
INSERT INTO preparo (receita_id, tipo, ordem, instrucoes)
VALUES
(9, 'Cobertura', 1, 'Bata o cream cheese e a manteiga até obter uma mistura cremosa e homogênea.'),
(9, 'Cobertura', 2, 'Adicione o açúcar de confeiteiro, o café expresso e o extrato de baunilha e continue batendo até ficar leve e cremosa.');

-- Dicas para os cupcakes de café
INSERT INTO dicas (receita_id, dica)
VALUES
(9, 'Adicione uma colher de café instantâneo à massa para intensificar o sabor do café.'),
(9, 'Decore com grãos de café cobertos de chocolate para um toque especial.');

-- Adiciona a receita de Cupcake de Abóbora
INSERT INTO receitas (titulo, descricao)
VALUES ('Cupcakes de Abóbora', 'Deliciosos cupcakes com purê de abóbora, especiarias e cobertura de cream cheese.');

-- Ingredientes para os cupcakes de abóbora
INSERT INTO ingredientes (receita_id, tipo, quantidade, descricao)
VALUES
(10, 'Cupcakes', '1 e 1/2 xícara (chá)', 'farinha de trigo'),
(10, 'Cupcakes', '1 xícara (chá)', 'açúcar'),
(10, 'Cupcakes', '1/2 xícara (chá)', 'purê de abóbora'),
(10, 'Cupcakes', '1/2 xícara (chá)', 'óleo vegetal'),
(10, 'Cupcakes', '2', 'ovos'),
(10, 'Cupcakes', '1 colher (chá)', 'fermento em pó'),
(10, 'Cupcakes', '1/2 colher (chá)', 'bicarbonato de sódio'),
(10, 'Cupcakes', '1 colher (chá)', 'canela em pó'),
(10, 'Cupcakes', '1/2 colher (chá)', 'cravo-da-índia em pó'),
(10, 'Cupcakes', '1/4 colher (chá)', 'sal'),
(10, 'Cupcakes', '1/2 xícara (chá)', 'nozes picadas (opcional)');

-- Ingredientes para a cobertura de cream cheese
INSERT INTO ingredientes (receita_id, tipo, quantidade, descricao)
VALUES
(10, 'Cobertura', '200g', 'cream cheese'),
(10, 'Cobertura', '1/4 xícara (chá)', 'manteiga'),
(10, 'Cobertura', '1 xícara (chá)', 'açúcar de confeiteiro'),
(10, 'Cobertura', '1 colher (chá)', 'extrato de baunilha');

-- Modo de preparo para os cupcakes de abóbora
INSERT INTO preparo (receita_id, tipo, ordem, instrucoes)
VALUES
(10, 'Cupcakes', 1, 'Pré-aqueça o forno a 180°C e prepare as forminhas de cupcakes.'),
(10, 'Cupcakes', 2, 'Misture a farinha, o fermento, o bicarbonato, a canela, o cravo e o sal em uma tigela.'),
(10, 'Cupcakes', 3, 'Em outra tigela, bata os ovos com o açúcar e o óleo até obter uma mistura homogênea.'),
(10, 'Cupcakes', 4, 'Adicione o purê de abóbora e misture bem.'),
(10, 'Cupcakes', 5, 'Incorpore os ingredientes secos à mistura úmida e mexa até ficar homogêneo.'),
(10, 'Cupcakes', 6, 'Adicione as nozes picadas, se estiver usando.'),
(10, 'Cupcakes', 7, 'Distribua a massa nas forminhas e asse por 18-22 minutos.');

-- Modo de preparo para a cobertura de cream cheese
INSERT INTO preparo (receita_id, tipo, ordem, instrucoes)
VALUES
(10, 'Cobertura', 1, 'Bata o cream cheese e a manteiga até obter uma mistura cremosa e homogênea.'),
(10, 'Cobertura', 2, 'Adicione o açúcar de confeiteiro e o extrato de baunilha e continue batendo até a cobertura ficar leve e cremosa.');

-- Dicas para os cupcakes de abóbora
INSERT INTO dicas (receita_id, dica)
VALUES
(10, 'Adicione uma pitada de noz-moscada à massa para um sabor extra de especiarias.'),
(10, 'Se desejar, coloque uma pequena quantidade de purê de abóbora em cada cupcake antes de assar para um efeito marmorizado.');

-- Adiciona a receita de Cupcake de Frutas
INSERT INTO receitas (titulo, descricao)
VALUES ('Cupcakes de Frutas', 'Cupcakes leves e saborosos, recheados com uma mistura de frutas frescas e cobertos com uma cobertura de cream cheese.');

-- Ingredientes para os cupcakes de frutas
INSERT INTO ingredientes (receita_id, tipo, quantidade, descricao)
VALUES
(11, 'Cupcakes', '1 e 1/2 xícara (chá)', 'farinha de trigo'),
(11, 'Cupcakes', '1 xícara (chá)', 'açúcar'),
(11, 'Cupcakes', '1/2 xícara (chá)', 'manteiga derretida'),
(11, 'Cupcakes', '2', 'ovos'),
(11, 'Cupcakes', '1 colher (chá)', 'fermento em pó'),
(11, 'Cupcakes', '1/2 colher (chá)', 'bicarbonato de sódio'),
(11, 'Cupcakes', '1/4 colher (chá)', 'sal'),
(11, 'Cupcakes', '1/2 xícara (chá)', 'leite'),
(11, 'Cupcakes', '1/2 xícara (chá)', 'manga picada'),
(11, 'Cupcakes', '1/2 xícara (chá)', 'morango picado'),
(11, 'Cupcakes', '1/2 xícara (chá)', 'blueberry'),

-- Ingredientes para a cobertura de cream cheese
INSERT INTO ingredientes (receita_id, tipo, quantidade, descricao)
VALUES
(11, 'Cobertura', '200g', 'cream cheese'),
(11, 'Cobertura', '1/4 xícara (chá)', 'manteiga'),
(11, 'Cobertura', '1 xícara (chá)', 'açúcar de confeiteiro'),
(11, 'Cobertura', '1 colher (chá)', 'extrato de baunilha');

-- Modo de preparo para os cupcakes de frutas
INSERT INTO preparo (receita_id, tipo, ordem, instrucoes)
VALUES
(11, 'Cupcakes', 1, 'Pré-aqueça o forno a 180°C e prepare as forminhas de cupcakes.'),
(11, 'Cupcakes', 2, 'Misture a farinha, o fermento, o bicarbonato e o sal em uma tigela.'),
(11, 'Cupcakes', 3, 'Em outra tigela, bata os ovos com o açúcar e a manteiga derretida até obter uma mistura homogênea.'),
(11, 'Cupcakes', 4, 'Adicione o leite e continue batendo até a mistura ficar homogênea.'),
(11, 'Cupcakes', 5, 'Incorpore os ingredientes secos à mistura úmida e mexa até ficar homogêneo.'),
(11, 'Cupcakes', 6, 'Adicione as frutas picadas e misture delicadamente.'),
(11, 'Cupcakes', 7, 'Distribua a massa nas forminhas e asse por 18-22 minutos.');

-- Modo de preparo para a cobertura de cream cheese
INSERT INTO preparo (receita_id, tipo, ordem, instrucoes)
VALUES
(11, 'Cobertura', 1, 'Bata o cream cheese e a manteiga até obter uma mistura cremosa e homogênea.'),
(11, 'Cobertura', 2, 'Adicione o açúcar de confeiteiro e o extrato de baunilha e continue batendo até a cobertura ficar leve e cremosa.');

-- Dicas para os cupcakes de frutas
INSERT INTO dicas (receita_id, dica)
VALUES
(11, 'Experimente diferentes combinações de frutas para variar o sabor dos cupcakes.'),
(11, 'Certifique-se de que as frutas estejam bem picadas para uma distribuição uniforme na massa.');



