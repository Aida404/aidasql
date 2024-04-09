DROP procedure IF exists get_clients_by_state;
DELIMITER $$
CREATE PROCEDURE get_clients_by_state(state char(2))
begin
	
	select*from clients c
	WHERE c.state=ifnull(state,c.state);
end $$
DELIMITER ;  