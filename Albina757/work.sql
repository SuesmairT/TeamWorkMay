select
	sum(txs.amount) as total_amount,
	currency
from txs

join accounts on txs.sender_account_id = accounts.id

group by accounts.currency

order by total_amount desc 
limit 1
