-- consultas

-- Selecionar o nome, dia do mês e valor da parcela para clientes que estão inadimplentes.
select pe.nome, day(pa.dt_pagamento) as dia_mes, co.valor_parcela from pessoas pe 
	join pagamentos pa on (pa.id_pessoa = pe.id) 
	join contratos co on (co.id = pe.contrato_id) 
	where pe.inadinplente is true;

-- Selecionar o nome e valor total pago de clientes com pagamento completo.
select pe.nome, (co.valor_parcela * co.parcelas) as valor_total from pessoas pe 
	join contratos co on (co.id = pe.contrato_id)  
	where pe.inadinplente is false;
