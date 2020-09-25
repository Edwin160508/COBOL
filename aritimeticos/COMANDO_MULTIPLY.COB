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
       77 WRK-VALOR        PIC 9(10) VALUE 51.
       77 WRK-RESTO        PIC 9(10) VALUE ZEROS.



      *
      *================================================================*
       PROCEDURE                                     DIVISION.
      *================================================================*
      *     WRK-VALOR = WRK-VALOR * 2
      *     MULTIPLICADOR    MULTIPLICADO
      *     MULTIPLY 2    BY  WRK-VALOR

      *     WRK-RESULTADO = WRK-VALOR * 2
      *    GIVING esta sendo usado como opcao, caso nao tenha o resultado
      *seria armazenado na propria variavel WRK-VALOR no comentario mais acima
      *     MULTIPLY 2    BY  WRK-VALOR GIVING WRK-RESULTADO

      *     Essa ultima forma obriga uso do GIVING pelo fato do COBOL nao
      *saber onde vai armazenar resultado do calculo
            MULTIPLY WRK-VALOR    BY  2 GIVING WRK-RESULTADO
           DISPLAY WRK-VALOR' Resultado da multiplicacao 'WRK-RESULTADO
           STOP RUN.
