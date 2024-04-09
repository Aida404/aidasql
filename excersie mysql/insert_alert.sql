--payment after insert alert in payment_audit

delimiter $$

drop trigger if exists pyments_after_insert; 

create trigger pyments_after_insert
	after insert on payments
	for each row
begin
	update invoices
    set payment_total=payment_total+new.amount
    where invoice_id= new.invoice_id;
    
    insert into payments_audit
    values(new.client_id, new.date,new.amount,'insert',now());
end $$
delimiter ;



--payments after delete
delimiter $$

drop trigger if exists pyments_after_delete; 

create trigger pyments_after_delete
	after delete on payments
	for each row
begin
	update invoices
    set payment_total=payment_total-old.amount
    where invoice_id= old.invoice_id;
    
    insert into payments_audit
    values(old.client_id, old.date,old.amount,'Delete',now());
end $$
delimiter ;