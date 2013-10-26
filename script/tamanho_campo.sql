select f.rdb$field_length, f.*
       from rdb$relation_fields rf join 
       rdb$fields f join 
       rdb$types t on t.rdb$field_name = 'RDB$FIELD_TYPE'
       and 
       f.rdb$field_type = t.rdb$type 
       on rf.rdb$field_source = f.rdb$field_name 
       where (rf.rdb$field_name = 'CORPONF1' 
       and   rf.rdb$relation_name = 'NOTAFISCAL') 
      -- and   f.rdb$field_length  <> 200)