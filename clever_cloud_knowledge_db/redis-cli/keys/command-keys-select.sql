SELECT 
	rc.id, rc.name, rc.usage, rc.definition, rc.description, dt.name AS return_type, rc.return_description
FROM redis_cli_command AS rc
INNER JOIN data_type AS dt
ON rc.return_type = dt.id
WHERE rc.redis_cli_command_group_id = 7
ORDER BY rc.order