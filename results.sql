--Search any products, limited to 5;

SELECT * FROM produtos LIMIT 5;

--Search for any customers in the store, limited to 3;

SELECT * FROM clientes LIMIT 3;

--Look for the product named Televisão 43";

SELECT * FROM produtos WHERE nome = 'Televisão 43"';

--Add a new product called Macbook Pro 13" priced at BRL 17,000.00;

INSERT INTO produtos (nome, preco) VALUES ('Macbook Pro 13"', 1700000); 

--Remove Orlando Pequeno Jesus from the client list;

DELETE FROM clientes WHERE nome = 'Orlando Pequeno Jesus';

--The price of the Pelúcia Strange Planet com Gatinho product is now R$ 80.00. Update in the bank;

UPDATE produtos SET preco = '8000' WHERE nome = 'Pelúcia Strange Planet com Gatinho';

--The price of the Violão Lava ME 2 product is now R$ 9800,00. Update in the bank;

UPDATE produtos SET preco = '980000' WHERE nome = 'Violão Lava ME 2';

--Modify the CPF of Lucca Santarém Branco to the correct value: 04652651298;

UPDATE clientes SET cpf = '04652651298' WHERE nome = 'Lucca Santarém Branco';

--Chico Buarque de Holanda purchased the product Violão Lava ME 2. Add this purchase record to the compras table;

INSERT INTO compras (id_cliente, id_produto) VALUES ((SELECT id FROM clientes WHERE nome = 'Chico Buarque de Holanda'), (SELECT id FROM produtos WHERE nome = 'Violão Lava ME 2')); 

-- Olga Cascais Fortunato bought two Celular Topo de Linha. Add the purchase records in the compras table;

INSERT INTO compras (id_cliente, id_produto) VALUES ((SELECT id FROM clientes WHERE nome = 'Olga Cascais Fortunato'), (SELECT id FROM produtos WHERE nome = 'Celular Topo de Linha'));
INSERT INTO compras (id_cliente, id_produto) VALUES ((SELECT id FROM clientes WHERE nome = 'Olga Cascais Fortunato'), (SELECT id FROM produtos WHERE nome = 'Celular Topo de Linha'));

-- Martinha Lima Zambujal returned the Fone Topo de Linha product. Remove this record from the compras table;
DELETE FROM compras WHERE id_cliente=(SELECT id FROM clientes WHERE nome = 'Martinha Lima Zambujal') AND id_produto=(SELECT id FROM produtos WHERE nome = 'Fone Topo de Linha');

--Browse all products sorted by price in ascending order.

SELECT * FROM produtos ORDER BY preco;

--Look for the 3 cheapest products;

SELECT * FROM produtos ORDER BY preco LIMIT 3;

--Look for the product with the highest price;

SELECT * FROM produtos ORDER BY preco DESC LIMIT 1;

--Look for the product with the second lowest price.

SELECT * FROM produtos ORDER BY preco LIMIT 1 OFFSET 1;