SELECT
    dc.usage AS DC_Usage, 
    dco.name AS DCO_Name,
    dco.value AS DCO_VALUE,
    dt.name AS DT_Name,
    dco.definition as DC_Definition
FROM docker_cli_command_option AS dco
INNER JOIN docker_cli_command as dc
INNER JOIN data_type as dt
ON 
	dco.docker_cli_command_id = dc.id AND
    dco.data_type_id = dt.id
ORDER BY dc.order, dco.name