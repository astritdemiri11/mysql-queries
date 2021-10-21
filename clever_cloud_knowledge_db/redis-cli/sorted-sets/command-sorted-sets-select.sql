SELECT 
	rc.id, rc.usage, rc.name, rc.definition, rc.description, dt.name AS return_type, rc.return_description 
FROM redis_cli_command AS rc
INNER JOIN data_type AS dt
ON rc.return_type = dt.id
WHERE rc.redis_cli_command_group_id = 13
ORDER BY rc.order