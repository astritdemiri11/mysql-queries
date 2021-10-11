SELECT
    lc.usage AS DC_Usage, 
    lco.name AS DCO_Name,
    lco.value AS DCO_VALUE,
    lt.name AS DT_Name,
    lco.definition as DC_Definition
FROM linux_cli_command_option AS lco
INNER JOIN linux_cli_command as lc
INNER JOIN data_type as lt
ON 
	lco.linux_cli_command_id = lc.id AND
    lco.data_type_id = lt.id
ORDER BY lc.order, lco.name