/****** Object:  View [dbo].[CLIENTES_AUSTRALIA]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE VIEW 
	CLIENTES_AUSTRALIA 
AS
	SELECT 
		CUSTOMERID, 
		ACCOUNTNUMBER
	FROM 
		SALES.CUSTOMER 
	WHERE TERRITORYID IN(
		SELECT TERRITORYID
		FROM SALES.SALESTERRITORY
		WHERE NAME = 'AUSTRALIA'
	)