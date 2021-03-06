/****** Object:  Procedure [dbo].[CL_AUSTRALIA]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE PROCEDURE CL_AUSTRALIA
AS
BEGIN

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
END;