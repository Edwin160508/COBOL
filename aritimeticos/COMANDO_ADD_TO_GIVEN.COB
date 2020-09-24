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
       77 WRK-ACUMULADOR    PIC 9(2) VALUE ZEROS.
       77 WRK-ACUMULADOR2    PIC 9(2) VALUE ZEROS.

       77 WRK-ACUMULADOR3    PIC 9(2) VALUE 10.
      *
      *================================================================*
       PROCEDURE                                     DIVISION.
      *================================================================*
           DISPLAY 'Acumulador = ' WRK-ACUMULADOR
      *    Comando ADD se trata de uma soma ex 1+1 retorna 2
           ADD 1 1 TO WRK-ACUMULADOR
      *    Comando ADD Acumulador = 6 e Acumulador2 = 4
           ADD 1 3 TO WRK-ACUMULADOR WRK-ACUMULADOR2
      *    GIVING clausula de aribuicao Acumulador3=1 ante iniciado com 10
           ADD 1 GIVING WRK-ACUMULADOR3


           DISPLAY 'Acumulador = ' WRK-ACUMULADOR ' Acumulador2 = '
      -     WRK-ACUMULADOR2 ' Acumulador3 = ' WRK-ACUMULADOR3
           STOP RUN.
