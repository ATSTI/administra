object fTributosInfo: TfTributosInfo
  Left = 182
  Top = 106
  Width = 835
  Height = 563
  Caption = 'Tributos Informa'#231#227'o'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pcIcms: TPageControl
    Left = 0
    Top = 0
    Width = 827
    Height = 536
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'ICMS'
      object Memo1: TMemo
        Left = 0
        Top = 0
        Width = 819
        Height = 508
        Align = alClient
        Lines.Strings = (
          
            'ATEN'#199#195'O : A ATS n'#227'o se responsabiliza pelos valores informados a' +
            'qui, esta informa'#231#227'o e de responsabilidade de seu contador, a ta' +
            'bela'
          'abaixo '#233' apenas para auxiliar em sua configura'#231#227'o.'
          ''
          
            '    C'#243'digo de Situa'#231#227'o Tribut'#225'ria(CST) na Nota Fiscal Eletr'#244'nica' +
            ':'
          ''
          '    Tabela A - Origem da Mercadoria'
          #9'  '
          '    Tabela B - Tributa'#231#227'o pelo ICMS (Vigente desde 1-1-2001)'
          ''
          #9'  0. Nacional'
          #9'  1. Estrangeira - Importa'#231#227'o direta'
          #9'  2. Estrangeira - Adquirida no mercado interno'
          ''
          ''
          #9'  00. Tributada integralmente'
          
            #9'  10. Tributada e com cobran'#231'a do ICMS por substitui'#231#227'o tribut'#225 +
            'ria'
          #9'  20. Com redu'#231#227'o de base de c'#225'lculo'
          
            #9'  30. Isenta ou n'#227'o tributada e com cobran'#231'a do ICMS por substi' +
            'tui'#231#227'o tribut'#225'ria'
          #9'  40. Isenta'
          #9'  41. N'#227'o tributada'
          #9'  50. Suspens'#227'o'
          #9'  51. Diferimento'
          #9'  60. ICMS cobrado anteriormente por substitui'#231#227'o tribut'#225'ria'
          
            #9'  70. Com redu'#231#227'o da base de c'#225'lculo e cobran'#231'a do ICMS por sub' +
            'stitui'#231#227'o tribut'#225'ria '
          '                  90. Outras')
        TabOrder = 0
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'IPI'
      ImageIndex = 1
      object Memo4: TMemo
        Left = 0
        Top = 0
        Width = 819
        Height = 508
        Align = alClient
        Lines.Strings = (
          
            'ATEN'#199#195'O : A ATS n'#227'o se responsabiliza pelos valores informados a' +
            'qui, esta informa'#231#227'o e de responsabilidade de seu contador, a ta' +
            'bela'
          'abaixo '#233' apenas para auxiliar em sua configura'#231#227'o.'
          ''
          'TABELA I'
          
            'C'#211'DIGO DA SITUA'#199#195'O TRIBUT'#193'RIA REFERENTE AO IMPOSTO SOBRE PRODUTO' +
            'S INDUSTRIALIZADOS (CST-IPI):'
          ''
          '00 Entrada com Recupera'#231#227'o de Cr'#233'dito'
          '01 Entrada Tribut'#225'vel com Al'#237'quota Zero'
          '02 Entrada Isenta'
          '03 Entrada N'#227'o-Tributada'
          '04 Entrada Imune'
          '05 Entrada com Suspens'#227'o'
          '49 Outras Entradas'
          '50 Sa'#237'da Tributada'
          '51 Sa'#237'da Tribut'#225'vel com Al'#237'quota Zero'
          '52 Sa'#237'da Isenta'
          '53 Sa'#237'da N'#227'o-Tributada'
          '54 Sa'#237'da Imune'
          '55 Sa'#237'da com Suspens'#227'o'
          '99 Outras Sa'#237'das')
        TabOrder = 0
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'PIS/COFINS'
      ImageIndex = 2
      object Memo5: TMemo
        Left = 0
        Top = 0
        Width = 819
        Height = 508
        Align = alClient
        Lines.Strings = (
          
            'ATEN'#199#195'O : A ATS n'#227'o se responsabiliza pelos valores informados a' +
            'qui, esta informa'#231#227'o e de responsabilidade de seu contador, a ta' +
            'bela'
          'abaixo '#233' apenas para auxiliar em sua configura'#231#227'o.'
          ''
          'C'#211'DIGO DA SITUA'#199#195'O TRIBUT'#193'RIA REFERENTE AO PIS/PASEP (CST-PIS):'
          ''
          '    01 - Opera'#231#227'o Tribut'#225'vel com Al'#237'quota B'#225'sica'
          '    02 - Opera'#231#227'o Tribut'#225'vel com Al'#237'quota Diferenciada'
          
            '    03 - Opera'#231#227'o Tribut'#225'vel com Al'#237'quota por Unidade de Medida ' +
            'de Produto'
          
            '    04 - Opera'#231#227'o Tribut'#225'vel Monof'#225'sica - Revenda a Al'#237'quota Zer' +
            'o'
          '    05 - Opera'#231#227'o Tribut'#225'vel por Substitui'#231#227'o Tribut'#225'ria'
          '    06 - Opera'#231#227'o Tribut'#225'vel a Al'#237'quota Zero'
          '    07 - Opera'#231#227'o Isenta da Contribui'#231#227'o'
          '    08 - Opera'#231#227'o sem Incid'#234'ncia da Contribui'#231#227'o'
          '    09 - Opera'#231#227'o com Suspens'#227'o da Contribui'#231#227'o'
          '    49 - Outras Opera'#231#245'es de Sa'#237'da'
          
            '    50 - Opera'#231#227'o com Direito a Cr'#233'dito - Vinculada Exclusivamen' +
            'te a Receita Tributada no Mercado Interno'
          
            '    51 - Opera'#231#227'o com Direito a Cr'#233'dito - Vinculada Exclusivamen' +
            'te a Receita N'#227'o Tributada no Mercado Interno'
          
            '    52 - Opera'#231#227'o com Direito a Cr'#233'dito - Vinculada Exclusivamen' +
            'te a Receita de Exporta'#231#227'o'
          
            '    53 - Opera'#231#227'o com Direito a Cr'#233'dito - Vinculada a Receitas T' +
            'ributadas e N'#227'o-Tributadas no Mercado Interno'
          
            '    54 - Opera'#231#227'o com Direito a Cr'#233'dito - Vinculada a Receitas T' +
            'ributadas no Mercado Interno e de Exporta'#231#227'o'
          
            '    55 - Opera'#231#227'o com Direito a Cr'#233'dito - Vinculada a Receitas N' +
            #227'o-Tributadas no Mercado Interno e de Exporta'#231#227'o'
          
            '    56 - Opera'#231#227'o com Direito a Cr'#233'dito - Vinculada a Receitas T' +
            'ributadas e N'#227'o-Tributadas no Mercado Interno, e de Exporta'#231#227'o'
          
            '    60 - Cr'#233'dito Presumido - Opera'#231#227'o de Aquisi'#231#227'o Vinculada Exc' +
            'lusivamente a Receita Tributada no Mercado Interno'
          
            '    61 - Cr'#233'dito Presumido - Opera'#231#227'o de Aquisi'#231#227'o Vinculada Exc' +
            'lusivamente a Receita N'#227'o-Tributada no Mercado Interno'
          
            '    62 - Cr'#233'dito Presumido - Opera'#231#227'o de Aquisi'#231#227'o Vinculada Exc' +
            'lusivamente a Receita de Exporta'#231#227'o'
          
            '    63 - Cr'#233'dito Presumido - Opera'#231#227'o de Aquisi'#231#227'o Vinculada a R' +
            'eceitas Tributadas e N'#227'o-Tributadas no Mercado Interno'
          
            '    64 - Cr'#233'dito Presumido - Opera'#231#227'o de Aquisi'#231#227'o Vinculada a R' +
            'eceitas Tributadas no Mercado Interno e de Exporta'#231#227'o'
          
            '    65 - Cr'#233'dito Presumido - Opera'#231#227'o de Aquisi'#231#227'o Vinculada a R' +
            'eceitas N'#227'o-Tributadas no Mercado Interno e de Exporta'#231#227'o'
          
            '    66 - Cr'#233'dito Presumido - Opera'#231#227'o de Aquisi'#231#227'o Vinculada a R' +
            'eceitas Tributadas e N'#227'o-Tributadas no Mercado Interno, e de Exp' +
            'orta'#231#227'o'
          '    67 - Cr'#233'dito Presumido - Outras Opera'#231#245'es'
          '    70 - Opera'#231#227'o de Aquisi'#231#227'o sem Direito a Cr'#233'dito'
          '    71 - Opera'#231#227'o de Aquisi'#231#227'o com Isen'#231#227'o'
          '    72 - Opera'#231#227'o de Aquisi'#231#227'o com Suspens'#227'o'
          '    73 - Opera'#231#227'o de Aquisi'#231#227'o a Al'#237'quota Zero'
          '    74 - Opera'#231#227'o de Aquisi'#231#227'o sem Incid'#234'ncia da Contribui'#231#227'o'
          '    75 - Opera'#231#227'o de Aquisi'#231#227'o por Substitui'#231#227'o Tribut'#225'ria'
          '    98 - Outras Opera'#231#245'es de Entrada'
          '    99 - Outras Opera'#231#245'es')
        TabOrder = 0
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'CUPOM FISCAL'
      ImageIndex = 4
      object Memo2: TMemo
        Left = 0
        Top = 0
        Width = 819
        Height = 508
        Align = alClient
        Lines.Strings = (
          
            'NaturezaOpera'#231#227'o :  cadastrar Natureza 7:    7    Cupom    0    ' +
            '0    7    [null]    [null]    [null]    [null];'
          ''
          ''
          'Cadastrar o Parametro CFOP :    5102'
          ''
          ''
          ''
          
            'Preencher o campo CST, com as condi'#231'oes deste para o cupom, exem' +
            'plo:'
          ''
          '    CST = 060 -> No Cupom sair'#225' FF (Substitui'#231#227'o Tribut'#225'ria);'
          ''
          
            '    CST = 000 -> No Cupom sair'#225' a Aliquota do ICMS Informado no ' +
            'campo ICMS;'
          ''
          '    CST = 040 -> No Cupom sair'#225' II (Produto Isento);'
          ''
          '    CST = 041 -> No Cupom sair'#225' NN (N'#227'o Incidencia de ICMS);'
          ''
          ''
          ''
          '6.13. O que '#233' Leitura "X" e Redu'#231#227'o "Z"?'
          ''
          
            'IMPORTANTE : Ap'#243's realizar a Redu'#231#227'o Z a impressora s'#243' poder'#225' se' +
            'r utilizada no dia Seguinte;'
          ''
          
            'A Leitura "X" '#233' o documento fiscal emitido pelo ECF que indica o' +
            's valores acumulados nos contadores e totalizadores, '
          '   sem que sejam zerados ou diminu'#237'dos esses valores.'
          ''
          ''
          
            'A Redu'#231#227'o "Z" '#233', tamb'#233'm, um documento fiscal emitido pelo ECF co' +
            'm informa'#231#245'es id'#234'nticas '#224's da Leitura "X", '
          
            'mas que importa, exclusivamente, em zerar os totalizadores parci' +
            'ais. A redu'#231#227'o Z deve ser emitida '
          'no encerramento di'#225'rio das atividades do estabelecimento. '
          ''
          ''
          '6.15. Quando e como deve ser feita a leitura da Mem'#243'ria Fiscal?'
          ''
          
            'Deve ser feita no final de cada per'#237'odo de apura'#231#227'o, que '#233' mensa' +
            'l, contendo, no m'#237'nimo, os dados previstos no'
          'artigo 23 da Portaria CAT-55/98.'
          ''
          ''
          
            'A leitura emitida deve ficar anexa ao Mapa Resumo ECF do dia em ' +
            'que foi feita a apura'#231#227'o, quando da ado'#231#227'o do Mapa Resumo '
          
            'e ser mantida '#224' disposi'#231#227'o do Fisco pelo prazo previsto no artig' +
            'o 202 do RICMS/2000.'
          ''
          'Fundamento: artigo 23 da Portaria CAT-55/98.'
          ''
          ''
          ''
          
            'Empresas enquadradas no SIMPLES NACIONAL que utilizam ECF devem ' +
            'mencionar quais aliquotas de icms no documento fiscal ?'
          ''
          'Resposta:'
          
            'Os totalizadores parciais tribut'#225'rios dever'#227'o ser programados co' +
            'm as al'#237'quotas normais dos produtos comercializados pelo estabel' +
            'ecimento'
          
            ' (7, 12, 18 ou 25%). Ser'#225' desconsiderado o imposto calculado no ' +
            'pr'#243'prio ECF. '
          
            'Somente no momento da apura'#231#227'o , fora do ECF, nos livros fiscais' +
            ' '#233' que ser'#227'o utilizados os percentuais da Lei do Simples Naciona' +
            'l.'
          ''
          '(...)'
          ''
          
            'Artigo 15-A - Tratando-se de contribuinte sujeito '#224's normas do R' +
            'egime Especial Unificado de Arrecada'#231#227'o de Tributos e Contribui'#231 +
            #245'es '
          
            'devidos pelas Microempresas e Empresas de Pequeno Porte - "Simpl' +
            'es Nacional", o Cupom Fiscal por ele emitido dever'#225' conter a al'#237 +
            'quota'
          
            ' incidente na opera'#231#227'o ou presta'#231#227'o, conforme previsto nos artig' +
            'os 52 a 55 do Regulamento do ICMS, aprovado pelo Decreto 45.490,' +
            ' de 30 '
          
            'de novembro de 2000, sem preju'#237'zo do disposto no artigo 15. (Art' +
            'igo acrescentado pela Portaria CAT-51/08, de 11-04-2008; DOE 12-' +
            '04-2008)'
          ''
          '(...)'
          ''
          'Portaria CAT - 55 de 14-7-98'
          ''
          '(DOE 15-07-1998; Retifica'#231#227'o DOE 08-08-1998) ')
        ScrollBars = ssBoth
        TabOrder = 0
      end
    end
    object TabSheet6: TTabSheet
      Caption = 'CSOSN'
      ImageIndex = 5
      object Memo3: TMemo
        Left = 0
        Top = 0
        Width = 819
        Height = 508
        Align = alClient
        Lines.Strings = (
          
            'TEN'#199#195'O : A ATS n'#227'o se responsabiliza pelos valores informados aq' +
            'ui, esta informa'#231#227'o e de responsabilidade de seu contador, a tab' +
            'ela'
          'abaixo '#233' apenas para auxiliar em sua configura'#231#227'o.'
          '  '
          
            'A partir da vers'#227'o 2.00 do leiaute da NF-e, o contribuinte emiss' +
            'or do SIMPLES NACIONAL deve informar um dos seguintes'
          
            'C'#243'digo de Situa'#231#227'o da Opera'#231#227'o - SIMPLES NACIONAL (CSOSN) em sub' +
            'stitui'#231#227'o ao CST :'
          ''
          '101 - Tributada pelo Simples Nacional com permiss'#227'o de cr'#233'dito;'
          '102 - Tributada pelo Simples Nacional sem permiss'#227'o de cr'#233'dito;'
          
            '103 - Isen'#231#227'o do ICMS no Simples Nacional para faixa de receita ' +
            'bruta;'
          
            '201 - Tributada pelo Simples Nacional com permiss'#227'o de cr'#233'dito e' +
            ' com cobran'#231'a do ICMS por substitui'#231#227'o tribut'#225'ria;'
          
            '202 - Tributada pelo Simples Nacional sem permiss'#227'o de cr'#233'dito e' +
            ' com cobran'#231'a do ICMS por substitui'#231#227'o tribut'#225'ria;'
          
            '203 - Isen'#231#227'o do ICMS no Simples Nacional para faixa de receita ' +
            'bruta e com cobran'#231'a do ICMS por substitui'#231#227'o tribut'#225'ria;'
          '300 - Imune;'
          '400 - N'#227'o tributada pelo Simples Nacional;'
          
            '500 - ICMS cobrado anteriormente por substitui'#231#227'o tribut'#225'ria (su' +
            'bstitu'#237'do) ou por antecipa'#231#227'o;'
          '900 - Outros.')
        TabOrder = 0
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'SUFRAMA'
      ImageIndex = 5
      object Memo6: TMemo
        Left = 0
        Top = 0
        Width = 819
        Height = 508
        Align = alClient
        Lines.Strings = (
          'No Cadastro do Cliente Informe o C'#243'digo SUFRAMA.'
          ''
          
            'Cadastre o Parametro SUFRAMA informando no Campo D1 o percentual' +
            ' de Desconto '
          'concedido.'
          ''
          
            'O Sistema ir'#225' dar este desconto quando no Pedido de Venda utiliz' +
            'ar o CFOP 6.109')
        TabOrder = 0
      end
    end
  end
end
