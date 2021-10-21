SELECT
    rc.usage AS RC_Usage, 
    rcp.required AS RCP_Required,
    rcp.order AS RCP_Order,
    rp.name AS RCP_Name,
    rt.name AS RT_Name,
    rc.definition as RC_Definition
FROM redis_cli_parameter AS rp
INNER JOIN redis_cli_command as rc
INNER JOIN redis_cli_command_parameter as rcp
INNER JOIN data_type as rt
ON 
	rcp.redis_cli_command_id = rc.id AND
    rcp.redis_cli_parameter_id = rp.id AND
    rp.data_type_id = rt.id
WHERE rc.redis_cli_command_group_id = 4
ORDER BY rc.order, rcp.order