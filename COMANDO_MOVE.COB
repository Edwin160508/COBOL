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
       77 WRK-VALOR      PIC 9(10) VALUE 10.
       77 WRK-VALOR2     PIC 9(10) VALUE ZEROS.

       77 WRK-VALOR3     PIC 9(10) VALUE ZEROS.
       77 WRK-VALOR4     PIC 9(10) VALUE ZEROS.
      *Item de Grupo
       01 WRK-TOT.
           05 WRK-TOTAL PIC 9(5) VALUE 19.
      *Item de Grupo
       01 WRK-TOT2.
           05 WRK-TOTAL PIC 9(5) VALUE ZEROS.
      *
      *================================================================*
       PROCEDURE                                     DIVISION.
      *================================================================*
      *    WRK-VALOR foi inicializado com valor 10
           DISPLAY WRK-VALOR.
      *    Comando move e serve para atribuicao
      *    WRK-VALOR2 = 20
           MOVE 20 TO WRK-VALOR2
      *    Atirbuindo 70 as valor3 e valor4
           MOVE 70 TO WRK-VALOR3 WRK-VALOR4.
      *    Atribuindo valor 19 na variavel WRK-VALOR antes inicializado com 10
           MOVE WRK-TOTAL OF WRK-TOT TO WRK-VALOR.

           DISPLAY 'VALOR 3 ' WRK-VALOR3.
           DISPLAY 'VALOR 4 ' WRK-VALOR4.
           DISPLAY WRK-VALOR.
           STOP RUN.
