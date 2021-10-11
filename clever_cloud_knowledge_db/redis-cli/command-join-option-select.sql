SELECT
    rc.usage AS RC_Usage, 
    rco.name AS RCO_Name,
    rco.value AS RCO_VALUE,
    rt.name AS RT_Name,
    rco.definition as RC_Definition
FROM redis_cli_command_option AS rco
INNER JOIN redis_cli_command as rc
INNER JOIN data_type as rt
ON 
	rco.redis_cli_command_id = rc.id AND
    rco.data_type_id = rt.id
ORDER BY rc.order, rco.name