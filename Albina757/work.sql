select Sum(amount) as total_amount, currency
from txs 
join accounts on txs.sender_account_id = accounts.author_id
group by currency 
order by amount desc 
limit 1
