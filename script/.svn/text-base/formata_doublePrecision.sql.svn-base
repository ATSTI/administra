CREATE OR ALTER PROCEDURE FU_FORMATAR(
   WVLR DECIMAL(15,4),
   WMOD VARCHAR(32))
RETURNS (
   R_FORMATAR VARCHAR(32))
AS
  declare variable vls varchar(44);
  declare variable dcm SmallInt;
  declare variable vir SmallInt;
  declare variable win SmallInt;
  declare variable tam SmallInt;
  declare variable npo smallint;
  declare variable trb varchar(2);
begin
  WVLR = UDF_ROUNDDEC(:WVLR, 2);
  /*
   Recebe um decimal e um modelo de máscara e devolve
   uma forma adequada p/ impressão.
   Ex: 1234,56 e "###.##0,00" devolve "  1.234,56" ou ainda
   -1234,56 e "###.##0,00" devolve " -1.234,56" ou ainda
   -1234,56 e "A##.##0,00" devolve "  1.234,56" ou ainda (valor absoluto) ou ainda
   1234,56 e '***.**0,00" devolve "**1.234,56"
   */
   if ((substring(:wmod from 1 for 1) = 'A') and (:wvlr < 0)) then begin  -- Se for valor absoluto
     wvlr = UDF_ABS(:wvlr);
     npo = udf_pos('*', :wmod);

     if (:npo > 0) then
       wmod = '*' || substring(:wmod from 2);
     else begin
       npo = UDF_POS('$', :wmod);
 
       if (:npo > 0) then
         wmod = '$' || substring(:wmod from 2);
       else
         wmod = '#' || substring(:wmod from 2);
     end
   end

   vls = cast(:wvlr as varchar(32));                    -- Valor como String
   tam = udf_len(:vls);               -- Tamanho do Valor como String
   win = udf_len(:wmod);              -- Tamanho da Máscara
   dcm = udf_pos(',', :wmod);
   dcm = :win - :dcm;
   vls = UDF_REPLACE(:vls, '.', ',');
   tam = udf_len(:vls);               -- Tamanho do Valor como String
   vir = udf_pos(',', :vls);
   vir = :tam - :vir;

   while (:vir > :dcm) do begin
     tam = :tam - 1;
     vls = udf_copy(:vls, 1, :tam);
     vir = :vir - 1;
   end

   if (:dcm > 4) then begin
     while (:vir < :dcm) do begin
       vls = :vls || '0';
       vir = :vir + 1;
     end
   end

   tam = udf_Len(:vls);               -- Tamanho do Valor como String
   r_formatar = '';

   while ((:win > 0) or (:tam > 0))  do begin
     if ((:win = 0) and (:tam > 0)) then
     begin
       trb = udf_copy(:vls, :tam, 1);
       r_formatar = :trb || :r_formatar;
       tam = :tam - 1;
     end
     else begin
       trb = udf_right(:wmod, 1);
       wmod = udf_copy(:wmod, 1, (:win -1));

       if (:tam = 0) then
       begin
         if (:trb in ('#', 'A', '.')) then
            r_formatar = ' ' || :r_formatar;
         else
            r_formatar = :trb || :r_formatar;
       end
       else begin
         if (:trb = '.') then
            r_formatar = '.' || r_formatar;
         else begin
            trb = udf_copy(:vls, :tam, 1);
            r_formatar = :trb || :r_formatar;
            tam = :tam - 1;
            vls = udf_copy(:vls, 1, :tam);
         end
       end

       win = :win - 1;
     end
   end

   dcm = udf_pos('-.', :r_formatar);

   if (:dcm > 0) then
     r_formatar = udf_replace(' -', :r_formatar, :dcm);
   else if (substring(:r_formatar from 1 for 1) = '.') then
     r_formatar = udf_replace(' ', :r_formatar, 1);
   else begin
     dcm = udf_pos(' .', :r_formatar);

   if (:dcm > 0) then
      r_formatar = udf_replace('  ', :r_formatar, :dcm);
   end

   suspend;
end