SELECT
    dc2.usage AS Copy_Usage,
	dc.usage AS Original_Usage,
    dc2.definition AS Copy_Def,
    dc.definition AS Original_Def
FROM bu4pqjh6uxuwvwpfqvwf.docker_cli_command AS dc
INNER JOIN bu4pqjh6uxuwvwpfqvwf.docker_cli_command AS dc2
WHERE dc2.copy_id = dc.id
ORDER BY dc2.parent_id, dc.order