CREATE OR ALTER PROCEDURE ATUALIZACLASFISCAL
as
declare variable idproduto integer;
declare variable familia varchar(90);
declare variable vicms double precision;
declare variable vst double precision;
begin
  /* Procedure Text */
  for select CODPRODUTO, familia from produtos
  into :idproduto, :familia do
  begin
     vIcms = 0;
     vST = 0;
     if ((familia = 'RAÇÃO P/ AVES') or (familia = 'RAÇÃO P/ BOVINOS') or (familia = 'RAÇÃO P/ EQUINOS') or (familia = 'RAÇÃO P/ FELINOS')
        )  then
         vIcms = 0;
     if ((familia = 'ACESSÓRIOS P/ AVES') or (familia = 'ACESSÓRIOS P/ CANINOS') or (familia = 'ACESSÓRIOS P/ EQUINOS') or (familia = 'AQUARISMO')
          or (familia = 'MATERIAIS P/ PESCA') or (familia = 'CALÇADOS'))  then
         vIcms = 18;
      /* Subs. Tributaria */
     if ((familia = 'RAÇÃO P/ FELINOS') or (familia = 'RAÇÃO P/ CANINOS') or (familia = 'FERRAMENTAS E FERRAGENS') or (familia = 'MATERIAIS P/ JARDINAGEM'))  then
         vST = 7;

     insert into CLASSIFICACAOFISCALPRODUTO (COD_PROD, CFOP, UF, ICMS_SUBST, ICMS_SUBST_IC, ICMS_SUBST_IND, ICMS, ICMS_BASE)
             values(:idproduto, '5102', 'SP', :vST, 0, 0, :vIcms, 0);
  end
  --suspend;
end

