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
       77 WRK-SALDO        PIC 9(10) VALUE ZEROS.
       77 WRK-RESULTADO    PIC 9(10) VALUE ZEROS.
       77 WRK-VALOR        PIC 9(10) VALUE ZEROS.



      *
      *================================================================*
       PROCEDURE                                     DIVISION.
      *================================================================*
      *Atribuindo 100 a variavel saldo
           MOVE 100    TO WRK-SALDO

      *Atribuindo 30 a variavel Valor
           MOVE 30     TO WRK-VALOR

           DISPLAY 'ANTES DA SUBITRACAO SALDO = ' WRK-SALDO
      *Aplivando operacao subitrair com comando SUBTRACT
      *    WRK-RESULTADO = WRK-SALDO - WRK-VALOR
           SUBTRACT WRK-VALOR FROM WRK-SALDO GIVING WRK-RESULTADO

           DISPLAY 'VARIAVEL RESULTADO = ' WRK-RESULTADO
           STOP RUN.
