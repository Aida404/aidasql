
--creat trigger for As soon as any change occurs in payment,
-- it automatically updates the Invoices table.
delimiter $$

drop trigger if exists psymentd_after_delete; 

create trigger pyments_after_delete
	after delete on payments
	for each row
begin
	update invoices
    set payment_total=payment_total-old.amount
    where invoice_id= old.invoice_id;
end $$
delimiter ;