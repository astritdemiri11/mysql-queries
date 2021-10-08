SELECT
    dc.usage AS DC_Usage, 
    dcp.required AS DCP_Required,
    dcp.order AS DCP_Order,
    dp.name AS DCP_Name,
    dt.name AS DT_Name,
    dc.definition as DC_Definition
FROM docker_cli_parameter AS dp
INNER JOIN docker_cli_command as dc
INNER JOIN docker_cli_command_parameter as dcp
INNER JOIN data_type as dt
WHERE 
	dcp.docker_cli_command_id = dc.id AND
    dcp.docker_cli_parameter_id = dp.id AND
    dp.data_type_id = dt.id
ORDER BY dc.order, dcp.order