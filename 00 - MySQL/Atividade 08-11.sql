Select mesa.*, pessoa.* from mesa 
inner join pessoa on mesa.atendenteId = PESSOA.ID;

Select mesa.*, pessoa.* from mesa 
left join pessoa on mesa.atendenteId = PESSOA.ID;

Select mesa.*, pessoa.* from mesa 
right join pessoa on mesa.atendenteId = PESSOA.ID;

select * from ravin.MESA;

select * from mesa
left outer join pessoa on mesa.atendenteId = pessoa.id
union
select * from mesa
right outer join pessoa on mesa.atendenteId = pessoa.id;

select mesa.*, pessoa.* from mesa cross join pessoa;

--

-- atividade1 Listar o código das mesas juntamente com o nome dos atendentes responsáveis por cada mesa (apenas as mesas que contém atendente);
select mesa.codigo, pessoa.nome from mesa
inner join pessoa on mesa.atendenteId = pessoa.id;

-- atividade2 Listar as comandas com seus produtos mostrando o código da comanda e o nome do produto;
select comanda.codigo, produto.nome from comanda
inner join comandaproduto on comandaproduto.comandaid = comanda.id
inner join produto on comandaproduto.produtoid = produto.Id;

-- atividade3 Listar as comandas mostrando o valor total de cada comanda;
select comanda.codigo, sum(comandaProduto.valorTotal) from comanda
join comandaproduto on comandaproduto.comandaId = comanda.id group by comanda.codigo;

-- atividade4 Buscar a comanda que teve a maior valor, mostrando o código da comanda, o valor da comanda e o nome do atendente responsável por aquela comanda
select comanda.codigo as 'CODIGO COMANDA', pessoa.nome as 'Atendente', mesa.nome 'MESA', 
max(comanda.valor) as 'VALOR'
from comanda
join comandaProduto on comandaProduto.comandaId = comanda.id
join mesa on comanda.mesaId = mesa.id
join pessoa on mesa.atendenteid = pessoa.id