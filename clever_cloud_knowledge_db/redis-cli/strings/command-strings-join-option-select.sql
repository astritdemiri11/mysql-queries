SELECT
    rc.usage AS RC_Usage, 
    rco.name AS RCO_Name,
    rco.value AS RCO_Value,
    rco.order AS RCO_Order,
    rt.name AS RT_Name,
    rco.definition as RC_Definition
FROM redis_cli_command_option AS rco
INNER JOIN redis_cli_command as rc
INNER JOIN data_type as rt
ON 
	rco.redis_cli_command_id = rc.id AND
    rco.data_type_id = rt.id
WHERE rc.redis_cli_command_group_id = 15
ORDER BY rc.order, rco.order, rco.name