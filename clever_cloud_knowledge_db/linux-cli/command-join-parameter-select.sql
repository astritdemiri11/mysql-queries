SELECT
    lc.usage AS LC_Usage, 
    lcp.required AS LCP_Required,
    lcp.order AS LCP_Order,
    lp.name AS LCP_Name,
    lt.name AS LT_Name,
    lc.definition as LC_Definition
FROM linux_cli_parameter AS lp
INNER JOIN linux_cli_command as lc
INNER JOIN linux_cli_command_parameter as lcp
INNER JOIN data_type as lt
ON 
	lcp.linux_cli_command_id = lc.id AND
    lcp.linux_cli_parameter_id = lp.id AND
    lp.data_type_id = lt.id
ORDER BY lc.order, lcp.order