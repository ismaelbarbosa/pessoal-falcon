/* -------------------------------------------------------------------
  Trigger: trg_IncluirNovoPessoal_NN
  Autor: Ismael Barbosa
  Objetivo: Incluir um registro na tabela de tbNotificaNupro quando 
  ocorrer uma Inclusão (Insert) de um registro na tabela tbPessoal
  Log de atualização

  Descrição 				Data			Alterada por
  Criação da trigger		13/10/2021		Ismael Barbosa

*/ -------------------------------------------------------------------

DROP TRIGGER trg_IncluirNovoPessoal_NN
GO

CREATE TRIGGER trg_IncluirNovoPessoal_NN ON tbPessoal
FOR INSERT
AS
BEGIN
	INSERT INTO tbNotificaNupro
	(
		data,
		idPessoal,
		evento,
		idOperador
	)	
	SELECT
		GETDATE(),
		pes.idPessoal,
		'Inclusão de novo registro',
		ser.idUsuario
	FROM tbPessoal pes 
	INNER JOIN tbServidor ser on ser.idPessoal = pes.idpessoal
	INNER JOIN INSERTED itd on itd.idPessoal = pes.idPessoal		
	--WHERE itd.idPessoal = pes.idPessoal
		
END



-- select top 10 * from tbPessoal pes INNER JOIN tbServidor ser on ser.idPessoal = pes.idpessoal
	
