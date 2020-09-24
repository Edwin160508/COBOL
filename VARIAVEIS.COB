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
      *>              ESSE PROGRAMA APENAS IMPRIME VALOR NO CONSOLE   <*
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
      *PIC / PICTURE � UMA CLAUSULA QUE DEFINE O TIPO E O TAMANHO DO CAMPO
      *TIPOS: NUMERICOS, ALFABETICOS E ALPHANUMERICOS
      *NUMERICOS TEM NO MAXIMO 18 DIGITOS

      *COMPOSI��O DA VARIAVEL
      *<nivel><nome-da-variavel><tipo(tamanho)>
      *Regras de variaveis no COBOL
      *1-<nome-da-variavel> deve conter no m�ximo 30 caracteres.
      *2-<nome-da-variavel> n�o pode ter espa�o em branco.
      *3-<nome-da-variavel> n�o pode ter letras numeros e hifen ao mesmo tempo.
      *4-<nome-da-variavel> n�o pode ser palavra reservada do COBOL.
      *5-<nome-da-variavel> s� pode conter letras e hifen.
      *6-<nome-da-variavel> pode ter no m�nimo 1 caracter.

      *Variaveis tamb�m ja podem ser inicializadas
      *<nivel><nome-da-variavel><tipo(tamanho)><valor-inicial>

       77  NUMEROX                           PIC 9(18).
      *Representando n�meros com sinais Ex -10
       77  NUMEROX-SINAL                     PIC S9(02).
      *Repersentando n�meros inteiro e casas decimais Ex 10,50
       77  NUMEROX-DECIMAL-SINAL                   PIC S9(02)V9(02).
      *Representando n�meros com 3 digitos e 2 decimais Ex 960,54
       77  NUMEROX-DECIMAL2                  PIC S999V99.

      *Representa valores apenas letras
       77  NOMEX                             PIC A(50).
      *Representa valores letras e n�meros
       77  NOMENUMERO                        PIC X(50).
      *================================================================*
       PROCEDURE                                     DIVISION.
      *================================================================*
      *    Comandos de excu��o s� pode ser posto na coluna 12 at� 72
           DISPLAY 'OLA MUNDO'.
           DISPLAY 'N�mero Inteiro: ' NUMEROX.
           DISPLAY 'N�mero com sinal: ' NUMEROX-SINAL.
           DISPLAY 'N�mero C/ decimais e sinal: ' NUMEROX-DECIMAL-SINAL.
           STOP RUN.
