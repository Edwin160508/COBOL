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
       77 WRK-ACUMULADOR    PIC 9(2) VALUE 90.
       77 WRK-ACUMULADOR2    PIC 9(3) VALUE 200.



      *
      *================================================================*
       PROCEDURE                                     DIVISION.
      *================================================================*
      *Compute suporta operacoes Soma, Subtracao, Multiplicacao, Divisao,
      *Exponenciacao,Atribuicao e () que seria dar preferencia no calculo

      *Atribuindo WRK-ACUMULADOR2 ao resultado da divisao.
      *subistituindo o valor inicial. resultado vai ser 145 numero de 3 digitos e bytes
           COMPUTE WRK-ACUMULADOR EQUAL (WRK-ACUMULADOR +
                                     WRK-ACUMULADOR2)  / 2
      *Excessao levantanda quando numero de bytes for maior que 2 nesse caso.
           ON SIZE ERROR
               DISPLAY 'ERRO NO CALCULO DEVIDO TAMANHO DE BYTES.'
           END-COMPUTE

           DISPLAY WRK-ACUMULADOR

           STOP RUN.
