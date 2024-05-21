SELECT currency,
sum(txs.amount) as total_sum

FROM txs
join accounts on txs.sender_account_id = accounts.id
group by accounts.currency
order by total_sum DESC
limit 1