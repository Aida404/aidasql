-- zamani k chand karbar hamzaman daran dade vared mikonn in mabhas transaction mohem mishe,
-- dar sorat emkan taghir nadim behtRE
-- age kheili mohem bod taghir midim k hasasiyatesh bere bala vali hamzaman performance o soratesh miad paien 

show variables like 'transaction_isolation'


--baraye transaction badi k bekhad ejra beshe anjam mishe
set transaction isolation level serializable;

-- age bekhaym transaction
-- baraye tamam session (manzor hamin connection) haye in transaction islation anjam beshe
set session transaction isolation level serializable;

-- age bekhaym transaction baraye tamam session hayie k dar ayande in transaction islation anjam beshe
--pishnahad nmishe dar kol
set global transaction isolation level serializable;

