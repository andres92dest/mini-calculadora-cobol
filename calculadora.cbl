      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. CALCULADORA.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 NUMERO PIC 99.
       01 MULTIPLICADOR PIC 999.
       01 RESULTADO PIC 9999.
       01 SALIDA PIC XXXXX.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

           INICIO.
               DISPLAY "Para salir introduce 'salir' en la consola.".
               DISPLAY "para multiplicar pulsa 'INTRO'.".
               ACCEPT SALIDA.

               IF SALIDA = "salir"
                   GO TO FINALIZAR
               ELSE
                   PERFORM REINICIA-PROGRAMA.
                   PERFORM INTRODUCE-NUMERO.
                   PERFORM MOSTRAR-TABLA.

           FINALIZAR.
               STOP RUN.

           REINICIA-PROGRAMA.
                MOVE 0 TO MULTIPLICADOR.

           INTRODUCE-NUMERO.
               DISPLAY "Introduce numero: ".
               ACCEPT NUMERO.

           MOSTRAR-TABLA.
               DISPLAY "la tabla del numero " NUMERO " es: ".
               PERFORM CALCULOS.



           CALCULOS.
               ADD 1 TO MULTIPLICADOR.
               COMPUTE RESULTADO = NUMERO * MULTIPLICADOR.
               DISPLAY NUMERO " * " MULTIPLICADOR  " = " RESULTADO.
               IF MULTIPLICADOR <10
                   GO TO CALCULOS.
           PERFORM INICIO.

       END PROGRAM CALCULADORA.
