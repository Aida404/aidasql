delimiter$$
create event yearly_delete_stale_audit_rows
on schedule
	--at '2022-08-01'  
    --every 2 day
    --every 1 year
    --every 1 year starts '2022-08-01' ends '2030-01-01'

--natayej ghabl az 365 roz b ghabl ra pak mikone(persian)
--automatically delet befor 1 year data

do begin
	delete from payment_audit
	where action_date<now()-interval 1 year;
end$$
delimiter;  