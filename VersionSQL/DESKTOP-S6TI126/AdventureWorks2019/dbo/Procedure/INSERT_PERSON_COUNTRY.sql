/****** Object:  Procedure [dbo].[INSERT_PERSON_COUNTRY]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE PROCEDURE INSERT_PERSON_COUNTRY 

@COUNTRYCODE NVARCHAR(3),
@NAME NVARCHAR(50)

AS
PRINT @COUNTRYCODE +' '+@NAME;
BEGIN

INSERT INTO 
	PERSON.COUNTRYREGION (COUNTRYREGIONCODE, NAME)
VALUES
	(@COUNTRYCODE, @NAME)

END;