use doli_db;

select pr.nome as produto, sum(i.quantidade) as total_vendido
from item_pedido i
join produto pr on i.id_produto = pr.id_produto
group by pr.nome
order by total_vendido desc;
