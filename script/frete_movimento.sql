CREATE OR ALTER TRIGGER FRETE_MOVIMENTO FOR MOVIMENTO ACTIVE
AFTER INSERT OR UPDATE POSITION 0
AS 
declare variable codm INTEGER;
declare variable coddet INTEGER;
declare variable det1 INTEGER;
declare variable det INTEGER;
declare variable x INTEGER;
declare variable FRETE double precision;
declare variable DESCONTO double precision;
declare variable OUTRAS double precision;
declare variable SEGURO double precision;
declare variable FRETE_UNIT double precision;
declare variable DESCONTO_UNIT double precision;
declare variable OUTRAS_UNIT double precision;
declare variable SEGURO_UNIT double precision;
declare variable FRETE_TOTAL double precision;
declare variable DESCONTO_TOTAL double precision;
declare variable OUTRAS_TOTAL double precision;
declare variable SEGURO_TOTAL double precision;
declare variable valtot double precision;
declare variable vp double precision;
declare variable levaDesc char(1);
declare variable log_sis varchar(260);
BEGIN
  --insert into LOG_ACESSO (ID_LOG, LOGIN, USUARIO) VALUES (GEN_ID(GEN_AVISOS, 1), 'NF', 
  --'IDCOMPLEMENTA ' || :log_sis);
  if (new.VALOR_FRETE > 0) then 
  begin   
    vp = new.TOTALMOVIMENTO; 
    FRETE = new.VALOR_FRETE;

    if (frete is null) then
      frete = 0;
    
    if (vp is null) then 
      vp = 0; 
    -- insert into LOG_ACESSO (ID_LOG, LOGIN, USUARIO) VALUES (GEN_ID(GEN_AVISOS, 1), '00', 'INICIOU');   	  

     
    if (vp = 0) then 
    begin
      select sum(md.VALTOTAL) from MOVIMENTODETALHE md
        where md.CODMOVIMENTO = new.CODMOVIMENTO
      into :vp;
    end 
    --insert into LOG_ACESSO (ID_LOG, LOGIN, USUARIO) VALUES (GEN_ID(GEN_AVISOS, 1), '01', 'vp '
    --  || CAST(:vp as VARCHAR(6)) || 
    --  ' VALTOT ' || CAST(:FRETE as VARCHAR(6)));   	  

    if ( vp > 0) then
    begin
      Frete_UNIT = new.VALOR_FRETE / vp;
      DESCONTO_UNIT = 0; -- new.VALOR_DESCONTO / vp;
      OUTRAS_UNIT = 0; --new.OUTRAS_DESP / vp;
      SEGURO_UNIT = 0; --new.VALOR_SEGURO / vp;
    end
    --insert into LOG_ACESSO (ID_LOG, LOGIN, USUARIO) VALUES (GEN_ID(GEN_AVISOS, 1), '02', 'vp '
    --  || CAST(:vp as VARCHAR(6)) || 
    --  ' VALTOT ' || CAST(:Frete_UNIT as VARCHAR(6)));   	  
   
    Frete_TOTAL = new.VALOR_FRETE;
    --insert into LOG_ACESSO (ID_LOG, LOGIN, USUARIO) VALUES (GEN_ID(GEN_AVISOS, 1), '02a', 'vp ' || CAST(:vp as VARCHAR(6)) || 
    --  ' Frete Total ' || CAST(:Frete_Total as VARCHAR(6)));   	  
    
    DESCONTO_TOTAL = 0; --new.VALOR_DESCONTO;
    OUTRAS_TOTAL = 0; -- new.OUTRAS_DESP;
    SEGURO_TOTAL = 0; -- new.VALOR_SEGURO;
    
    --insert into LOG_ACESSO (ID_LOG, LOGIN, USUARIO) VALUES (GEN_ID(GEN_AVISOS, 1), 'NF', 'FRETE ' || :FRETE_TOTAL || ' VP ' || :vp);
   
    select count(md.CODDETALHE) from MOVIMENTODETALHE md
    where md.CODMOVIMENTO = new.CODMOVIMENTO
    into :det;
    det1 = 1;
    
    for select md.CODDETALHE, COALESCE(md.VALTOTAL, 0) from MOVIMENTODETALHE md
    where md.CODMOVIMENTO = new.CODMOVIMENTO
    into :coddet, :valtot
    do begin
	    if (valtot = 0) then
		    valtot = 1;
	    if (inserting) then
	    begin
        update MOVIMENTODETALHE set FRETE = ROUND((:Frete_UNIT * :valtot), 2) where CODDETALHE = :coddet;
        --insert into LOG_ACESSO (ID_LOG, LOGIN, USUARIO) VALUES (GEN_ID(GEN_AVISOS, 1), '03', 'Frete ' 
        --  || CAST(:Frete_unit as VARCHAR(6)) || 
        --  ' VALTOT ' || CAST(:valtot as VARCHAR(6)));   	  
	      if ( det = det1) then
	      begin
          --insert into LOG_ACESSO (ID_LOG, LOGIN, USUARIO) VALUES (GEN_ID(GEN_AVISOS, 1), '04', 'Frete '
          --  || CAST(:Frete_unit as VARCHAR(6)) || 
          --  ' VALTOT ' || CAST(:valtot as VARCHAR(6)));
  	      update MOVIMENTODETALHE set FRETE = :Frete_TOTAL where CODDETALHE = :coddet;
  	    end 
      end
	    else begin 
        if((old.VALOR_FRETE <> new.VALOR_FRETE)) then -- or (old.VALOR_DESCONTO <> new.VALOR_DESCONTO) or (old.VALOR_SEGURO <> new.VALOR_SEGURO) or (old.OUTRAS_DESP <> new.OUTRAS_DESP)) then
        begin
          update MOVIMENTODETALHE set FRETE = ROUND((:Frete_UNIT * :valtot), 2)
            where CODDETALHE = :coddet;
          --  insert into LOG_ACESSO (ID_LOG, LOGIN, USUARIO) VALUES (GEN_ID(GEN_AVISOS, 1), '05', 'Frete ' 
          --    || CAST(:Frete_unit as VARCHAR(6)) || 
          --    ' VALTOT ' || CAST(:valtot as VARCHAR(6)));
          if ( det = det1) then
          begin
            --insert into LOG_ACESSO (ID_LOG, LOGIN, USUARIO) VALUES (GEN_ID(GEN_AVISOS, 1), '06', 'Frete ' 
            --    || CAST(:Frete_Total as VARCHAR(6)) || 
            --    ' VALTOT ' || CAST(:valtot as VARCHAR(6)));
            update MOVIMENTODETALHE set FRETE = :Frete_TOTAL where CODDETALHE = :coddet;
          end
        end
      end  
      det1 = det1 + 1;
      Frete_TOTAL   = Frete_TOTAL - ROUND((:Frete_UNIT * :valtot), 2);
    end
  end
END
