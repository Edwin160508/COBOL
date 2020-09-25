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

       77 WRK-VALOR1        PIC S9(10) VALUE ZEROS.
       77 WRK-VALOR2        PIC 9(10) VALUE 1.
       77 WRK-VALOR3        PIC S9(10) VALUE -1.



      *
      *================================================================*
       PROCEDURE                                     DIVISION.
      *================================================================*
      * Teste de condicao de SINAIS das valriaveis + ou -
      * Condicao FALSE pelo VALOR ser  0
           IF WRK-VALOR1 IS POSITIVE
               DISPLAY 'WRK-VALOR1 E POSITIVO 'WRK-VALOR1

           END-IF.
      * Condicao TRUE pelo VALOR ser 0
           IF WRK-VALOR1 IS ZERO
              DISPLAY 'WRK-VALOR1 E NEUTRO ' WRK-VALOR1
           END-IF.

      * Condicao TRUE pelo VALOR ser 1
           IF WRK-VALOR2 IS POSITIVE
               DISPLAY 'WRK-VALOR2 E POSITIVO ' WRK-VALOR2

           END-IF.
      * Condicao TRUE pelo VALOR ser -1
           IF WRK-VALOR3 IS NEGATIVE
               DISPLAY 'WRK-VALOR3 E NEGATIVO ' WRK-VALOR3
           END-IF.

           STOP RUN.
