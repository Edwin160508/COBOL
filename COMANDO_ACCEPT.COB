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
      *>              ATRAVES DO USO DO COMANDO ACCEPT.               <*
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
       77 WRK-NOME    PIC X(20) VALUE SPACES.
       77 WRK-DATA    PIC 9(06) VALUE ZEROS.
      *Variavel referente a contagem de dias passados ate hoje da Era de Julho Cesar.
       77 WRK-DATA-JULIANA  PIC 9(05) VALUE ZEROS.
      *Variavel referente a dia da semana.
      *1 = segunda, 2 = terca, 3 = quarta, 4 = quinta, 5 = sexta, 6 = sabado e 7 = domingo
       77 WRK-DIA-SEMANA PIC 9(1) VALUES ZERO.
      *Variavel referente a Hora
       77 WRK-HORA    PIC 9(08) VALUES ZEROS.
      *
      *================================================================*
       PROCEDURE                                     DIVISION.
      *================================================================*
      *    Comandos de excução só pode ser posto na coluna 12 até 72
      *    LIMITE DE 72 bites
      *    Recebe valor digitado pelo usuario no console.
           ACCEPT WRK-NOME.
      *    Recebe valor diretamente do sistema DATE ja retorna Data Atual
      *    Formato da data esta "aa mm dd"
           ACCEPT WRK-DATA FROM DATE.
      *    Recebe valor diretamente do sistema quantidade de dias passados.
           ACCEPT WRK-DATA-JULIANA FROM DAY.
      *    Recebe valor diretamente do sistema o numero do dia da semana.
           ACCEPT WRK-DIA-SEMANA FROM DAY-OF-WEEK.
      *    Recebe valor diretamente do sistema a hora
      *    Formato hora minuto segundo e centesimo "hh mm ss ce"
           ACCEPT WRK-HORA FROM TIME

      *    Exibindo valores de todas as variaveis.
           DISPLAY "OLA! "WRK-NOME.
           DISPLAY WRK-DATA.
           DISPLAY WRK-DATA-JULIANA.
           DISPLAY WRK-DIA-SEMANA.
           DISPLAY WRK-HORA.
           STOP RUN.
