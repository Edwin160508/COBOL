      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. YOUR-PROGRAM-NAME.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.

       01  VARIAVEIS-AUXILIARES.
           05 SABERQUANT      PIC 9(05) VALUE ZEROS.
           05 CONT            PIC 9(05) VALUE ZEROS.


       01 DATA-ATUAL.
           05 PG-ANO PIC X(04).
           05 PG-MES PIC X(02).
           05 PG-DIA PIC X(02).

       01  DATA-FORMT.
           05 DIA    PIC X(02).
           05 BARRA1 PIC X(01) VALUE '/'.
           05 MES    PIC X(02).
           05 BARRA2 PIC X(01) VALUE '/'.
           05 ANO    PIC X(04).


       PROCEDURE DIVISION.

       INICIALIZAR.

       PROCESSAR .

       FINALIZAR.


       INICIALIZAR.

          ACCEPT  DATA-ATUAL FROM DATE YYYYMMDD

           DISPLAY "VOU PARA ATE QUANTO ? "
           ACCEPT SABERQUANT

           MOVE PG-ANO   TO ANO
           MOVE PG-MES   TO MES
           MOVE PG-DIA   TO DIA

           DISPLAY "PAGRAMA INICIADO " DATA-FORMT.

       PROCESSAR.

           PERFORM VARYING CONT FROM 1 BY 1 UNTIL
               CONT >=SABERQUANT
           DISPLAY CONT
           END-PERFORM.

       FINALIZAR.
           STOP RUN.
