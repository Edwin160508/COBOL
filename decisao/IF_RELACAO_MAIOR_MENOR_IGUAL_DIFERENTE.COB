      *================================================================*
       IDENTIFICATION                                DIVISION.
      *================================================================*
       PROGRAM-ID. PROGRA001.
       AUTHOR.     EDWIN PEREIRA OLIVEIRA LIMA.
      *================================================================*
      ***********************DOCUMENTACAO*******************************
      ******************************************************************
      *>                                              NOME DA EMPRESA <*
      *> DATA.: 22/09/2020                                            <*
      *> ANALISTA.: EDWIN PEREIRA OLIVEIRA LIMA                       <*
      *> OBJETIVO.:                                                   <*
      *>              ESSE PROGRAMA RECEBE VALOR E IMPRIME NO CONSOLE <*
      *>                                                              <*
      *>                                                              <*
      *>                                                              <*
      ******************************************************************
      *********************FIN DOCUMENTACAO*****************************
      *================================================================*
       ENVIRONMENT                                   DIVISION.
      *================================================================*
      *----------------------------------------------------------------*
       CONFIGURATION                         SECTION.
      *----------------------------------------------------------------*

       SPECIAL-NAMES.
      *----------------------------------------------------------------*
       INPUT-OUTPUT                          SECTION.
      *----------------------------------------------------------------*
       FILE-CONTROL.

      *================================================================*
       DATA                                          DIVISION.
      *================================================================*

      *----------------------------------------------------------------*
       FILE                                  SECTION.
      *----------------------------------------------------------------*
      *----------------------------------------------------------------*
       WORKING-STORAGE                       SECTION.
      *----------------------------------------------------------------*

       77 WRK-VALOR         PIC S9(2) VALUE 20.
       77 WRK-NUMERO        PIC 9(2) VALUE 20.
       77 WRK-NUMERO2        PIC 9(2) VALUE 30.
       77 WRK-NUMERO3        PIC 9(2) VALUE 40.
       77 WRK-NUMERO4        PIC 9(2) VALUE 10.
       77 WRK-NUMERO5        PIC S9(2) VALUE 10.



      *
      *================================================================*
       PROCEDURE                                     DIVISION.
      *================================================================*
      * Teste de condicao de RELACAO das valriaveis sao iguais ou diferentes
      *    Sinal de = dentro do IF no COBOL e comparacao e nao atribuicao.
      *    IF WRK-VALOR = WRK-NUMERO
           IF WRK-VALOR EQUAL WRK-NUMERO
               DISPLAY 'SAO IGUAIS'
               DISPLAY 'VALOR = 'WRK-VALOR ' NUMERO = ' WRK-NUMERO
           ELSE
               DISPLAY 'SAO DIFERENTES'
               DISPLAY 'VALOR = 'WRK-VALOR ' NUMERO = ' WRK-NUMERO
           END-IF.

      *    IF WRK-NUMERO2 < WRK-NUMERO3
      *    IF WRK-NUMERO2 NOT GREATER WRK-NUMERO3
           IF WRK-NUMERO2 LESS WRK-NUMERO3
               DISPLAY 'WRK-NUMERO2 E MENOR QUE WRK-NUMERO3'
               DISPLAY WRK-NUMERO2 ' < ' WRK-NUMERO3
           ELSE
               DISPLAY 'WRK-NUMERO2 E MAIOR QUE WRK-NUMERO3'
               DISPLAY WRK-NUMERO2 ' > ' WRK-NUMERO3
           END-IF.

      *    IF WRK-NUMERO3 > WRK-NUMERO2
      *    IF WRK-NUMERO2 NOT LESS WRK-NUMERO3
           IF WRK-NUMERO3 GREATER WRK-NUMERO2
               DISPLAY 'WRK-NUMERO3 E MAIOR QUE WRK-NUMERO2'
               DISPLAY WRK-NUMERO3 ' > ' WRK-NUMERO2
           ELSE
               DISPLAY 'WRK-NUMERO3 E MENOR QUE WRK-NUMERO2'
               DISPLAY WRK-NUMERO3 ' < ' WRK-NUMERO2
           END-IF.

      *    IF WRK-NUMERO4 NOT= WRK-NUMERO5
           IF WRK-NUMERO4 NOT EQUAL WRK-NUMERO5
               DISPLAY 'SAO IGUAIS'
               DISPLAY 'VALOR = 'WRK-NUMERO4 ' NUMERO = ' WRK-NUMERO5
           ELSE
               DISPLAY 'SAO DIFERENTES'
               DISPLAY 'VALOR = 'WRK-NUMERO4 ' NUMERO = ' WRK-NUMERO5
           END-IF.

           STOP RUN.
