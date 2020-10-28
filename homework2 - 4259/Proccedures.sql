SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE zadaca1
	@var1 as int
AS
BEGIN

	SET NOCOUNT ON;

	SELECT naslov, opis, gal_id_galerija
	FROM galerija_opis
	WHERE @var1 = jazik_id_jazikg
END
GO


CREATE PROCEDURE zadaca2
	@var2 as nvarchar(50)
AS
BEGIN

	SET NOCOUNT ON;

	SELECT ime, jazik
	FROM kadministrator AS KA
	INNER JOIN
	knovost as KN
	ON KA.id_admin = KN.adm_id_adminn
	INNER JOIN
	jazik AS J
	ON J.id_jazik = KN.jazik_id_jazikn
	WHERE @var2 = KN.naslov
END
GO

CREATE PROCEDURE vezba3
	@var3 as nvarchar(50)
AS
BEGIN

	SELECT ime, COUNT(Email_Id_Grupa) as GroupNum
	FROM Email AS E
    INNER JOIN
    Mailing AS M
    on M.Email_Id_Posetitel = E.id_posetitel 
	GROUP BY ime
	ORDER BY GroupNum
END
GO

CREATE PROCEDURE zadaca4
	@var4 as nvarchar(50)
AS
BEGIN

	SET NOCOUNT ON;

	SELECT naslov, tekst
	FROM email_poraka AS EP
	INNER JOIN
	email_grupa AS EG
	ON EP.grupa_id_grupa = EG.id_grupa
	WHERE EG.aktivna = 1 
END
GO