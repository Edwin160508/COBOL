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
      *PIC / PICTURE É UMA CLAUSULA QUE DEFINE O TIPO E O TAMANHO DO CAMPO
      *TIPOS: NUMERICOS, ALFABETICOS E ALPHANUMERICOS
      *NUMERICOS TEM NO MAXIMO 18 DIGITOS

      *COMPOSIÇÃO DA VARIAVEL
      *<nivel><nome-da-variavel><tipo(tamanho)>
      *Regras de variaveis no COBOL
      *1-<nome-da-variavel> deve conter no máximo 30 caracteres.
      *2-<nome-da-variavel> não pode ter espaço em branco.
      *3-<nome-da-variavel> não pode ter letras numeros e hifen ao mesmo tempo.
      *4-<nome-da-variavel> não pode ser palavra reservada do COBOL.
      *5-<nome-da-variavel> só pode conter letras e hifen.
      *6-<nome-da-variavel> pode ter no mínimo 1 caracter.

      *Variaveis também ja podem ser inicializadas
      *<nivel><nome-da-variavel><tipo(tamanho)><valor-inicial>
      *Variaveis composta
      *Registro Cliente Ou Item de Grupo CLIENTE
      *Variaveis de grupo podem ter niveis de 02 a 49
       01 CLIENTE.
           02 NOME          PIC X(50) VALUE "EDWIN PEREIRA OLIVEIRA LIMA
      -"".
           02 RG            PIC X(11) VALUE "1111111".
           02 CPF           PIC X(11) VALUE "22222222222".
           02 ENDERECO      PIC X(40) VALUE "RUA ALMIRANTE BARROSO".
           02 DATANASC.
              03 DIA       PIC XX VALUE "16".
              03 MES       PIC XX VALUE "05".
              03 ANO       PIC X(04) VALUE "1988".

      *================================================================*
       PROCEDURE                                     DIVISION.
      *================================================================*
      *    Comandos de excução só pode ser posto na coluna 12 até 72

           DISPLAY CLIENTE
           STOP RUN.
