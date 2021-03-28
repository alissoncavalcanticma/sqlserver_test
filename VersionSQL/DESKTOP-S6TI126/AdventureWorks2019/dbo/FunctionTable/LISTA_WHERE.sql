/****** Object:  Function [dbo].[LISTA_WHERE]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE FUNCTION LISTA_WHERE (@WHERE AS NVARCHAR(20))
RETURNS TABLE 
AS RETURN (SELECT * FROM PERSON.COUNTRYREGION WHERE NAME LIKE '%(@WHERE)%');