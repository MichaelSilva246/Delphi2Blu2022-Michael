-- Lista de Exercícios de SQL:

-- 1 Qual o produto com o maior preço de custo;
select * from produto
where precoCusto = (select max(precoCusto) from produto); 

-- 2 Qual o produto com o maior preço de venda;
select * from produto
where precovenda = (select max(precovenda) from produto); 

-- 3 Qual produto com o menor preço de custo;
select * from produto
where precoCusto = (select min(precoCusto) from produto);

-- 4 Qual produto com o menor preço de venda;
select * from produto
where precoVenda = (select min(precovenda) from produto);

-- 5 A comanda mais recente;
select * from comanda
where criadoEm = (Select max(criadoEm) from comanda);

-- 6 A comanda mais velha;
select * from comanda
where criadoEm = (select min(criadoem) from comanda);

-- 7 A comanda com maior valor (baseado no valor da comanda);
select * from comanda
where valor = (select max(valor) from comanda);

-- 8 As 3 comandas com maior valor ordenadas em ordem crescente;
select * from comanda
order by valor desc
limit 3;

-- 9 Busque os clientes que são aniversariantes do mês; (NAO ACHEI A COLUNA DATANASCIMENTO, FIZ COM A DATA DE CRIACAO)
select * from pessoa
where month(criadoEm) = 11
order by criadoEm asc;

-- 10 Mesas sem atendente;
select * from mesa
where atendenteId = null;

-- 11 Quantos atendentes;
select count(tipoPessoa) as Atendente from pessoa 
where tipoPessoa = 'F';

-- 12 Quantidade de comandas dos dois últimos anos;
select count(criadoEm) from comanda
where criadoEm >= '2020-11-18';

-- 13 O maior valor de comanda (considerando apenas o valor da comanda) dia a dia do mês atual;
select max(valor), criadoEm from comanda
where criadoEm like '2022-01%' group by criadoEm order by criadoEm;

-- 15 O valor que cada cliente já gastou no restaurante;
select pessoa.id, pessoa.nome, sum(comanda.valor) from comanda
join pessoa on comanda.clienteid = pessoa.id
where pessoa.tipopessoa = 'c'
group by pessoa.id; 

-- 16 Listar o código das mesas juntamente com o nome dos atendentes responsáveis por cada mesa (apenas as mesas que contém atendente);
SELECT mesa.codigo, pessoa.nome FROM MESA
inner join pessoa on mesa.atendenteid = pessoa.id;

-- 17 Listar as comandas com seus produtos mostrando o código da comanda e o nome do produto;
select comanda.codigo, produto.nome from comanda
inner join comandaproduto on comandaproduto.comandaid = comanda.id
inner join produto on comandaproduto.produtoid = produto.Id;

-- 18 Listar as comandas mostrando o valor total de cada comanda;
select comanda.codigo, sum(comandaProduto.valorTotal) from comanda
join comandaproduto on comandaproduto.comandaId = comanda.id group by comanda.codigo;

-- 19 Buscar a comanda que teve a maior valor, mostrando o código da comanda, o valor da comanda e o nome do atendente responsável por aquela comanda;
select comanda.codigo as 'CODIGO COMANDA', pessoa.nome as 'Atendente', mesa.nome 'MESA', 
max(comanda.valor) as 'VALOR'
from comanda
join comandaProduto on comandaProduto.comandaId = comanda.id
join mesa on comanda.mesaId = mesa.id
join pessoa on mesa.atendenteid = pessoa.id;

-- 23 A comanda com menor valor (valor da Comanda) e que já está paga
select comanda.id 'Comanda', comanda.valor 'Maior Valor', statuscomanda.nome 'Situação' from comanda 
join statuscomanda on statuscomanda.id = comanda.statuscomandaid
where statuscomanda.nome = 'paga' 
order by comanda.Valor desc
limit 1;

-- 24 Quantos clientes tem comandas em aberto
select count(comanda.clienteid) as 'ClientesEmAberto', statuscomanda.nome as 'Situação' from comanda
join statuscomanda on statuscomanda.id = comanda.statuscomandaid
where statuscomanda.nome = 'em aberto';

-- 25 Quanto cada mesa já arrecadou
select mesaid as 'mesa', sum(valor) as 'valor' from comanda
group by mesa;

-- 26 Quantidade de clientes que nunca consumiram no restaurante
select pessoa.nome as 'PessoaNuncaConsumiram' from pessoa
left join comanda on comanda.clienteId = pessoa.id
where pessoa.tipoPessoa = 'c'
group by pessoa.nome
order by pessoa.nome;

-- 27 Os cliente que nunca consumiram no restaurante
select pessoa.nome as 'PessoaNuncaConsumirar' from pessoa
left join comanda on comanda.clienteId = pessoa.id
where pessoa.tipoPessoa = 'c'
group by pessoa.nome
order by pessoa.nome;

-- 28 As comandas que estão em mesas ocupadas (juntamente com seu valor);
select mesa.id, statusmesa.nome, comanda.valor from mesa
inner join statusmesa on mesa.statusMesaId = statusmesa.id
join comanda on comanda.mesaId = mesa.id
where mesa.statusmesaid = '3';

-- 29 Os 10 produtos mais vendidos (ultimo mês) 
select produto.nome, comandaproduto.quantidade, comandaproduto.criadoEm from produto
inner join comandaproduto on comandaproduto.produtoid = produto.id
where month(comandaproduto.criadoEm) = 10
order by comandaproduto.quantidade desc
limit 10;

-- corrigidos em aulas
-- 14 O valor de cada comanda (baseado nos itens) juntamente com o item mais caro da comanda; (NFIZ)
select comanda.id, max(comandaproduto.valortotal),
max(comandaproduto.valortotal) from comanda
join comandaproduto on comandaproduto.comandaid = comanda.id
group by comandaproduto.comandaid order by comandaproduto.valortotal desc;

/* 
-- 20 Quantidade de clientes em cada dia; (NFIZ)
  
-- 21 O funcionário mais velho que já fez algum atendimento (NFIZ)
-- 22 A comanda com maior valor (valor da Comanda) e que não está paga (N TRAS CORRETO)