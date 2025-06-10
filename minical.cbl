      ******************************************************************
      * Author: Andres David Mejia Zarza
      * Date: 10-Jun-202
      * Purpose: Mini calculadora con menú numérico
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. CALCULADORA.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.

       01 NUMERO         PIC 99.
       01 NUMERO2        PIC 99.
       01 MULTIPLICADOR  PIC 99.
       01 RESULTADO      PIC 9999.
       01 OPCION         PIC 9.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

       INICIO.
           DISPLAY "===================================".
           DISPLAY "      MINI CALCULADORA EN COBOL".
           DISPLAY "===================================".
           DISPLAY "1. Ver tabla de multiplicar".
           DISPLAY "2. Sumar dos numeros".
           DISPLAY "3. Restar dos numeros".
           DISPLAY "0. Salir".
           DISPLAY "Elige una opcion (0-3): ".
           ACCEPT OPCION.

           EVALUATE OPCION
               WHEN 1
                   PERFORM REINICIA-PROGRAMA
                   PERFORM INTRODUCE-NUMERO
                   PERFORM MOSTRAR-TABLA
                   GO TO INICIO

               WHEN 2
                   PERFORM OPERACION-SUMA
                   GO TO INICIO

               WHEN 3
                   PERFORM OPERACION-RESTA
                   GO TO INICIO

               WHEN 0
                   GO TO FINALIZAR

               WHEN OTHER
                   DISPLAY "Opcion invalida, intenta de nuevo."
                   GO TO INICIO
           END-EVALUATE.

       FINALIZAR.
           DISPLAY "¡Gracias por usar la calculadora!".
           STOP RUN.

       REINICIA-PROGRAMA.
           MOVE 0 TO MULTIPLICADOR.

       INTRODUCE-NUMERO.
           DISPLAY "Introduce un numero: ".
           ACCEPT NUMERO.

       MOSTRAR-TABLA.
           DISPLAY "La tabla del numero " NUMERO " es:".
           PERFORM CALCULOS 10 TIMES.

       CALCULOS.
           ADD 1 TO MULTIPLICADOR.
           COMPUTE RESULTADO = NUMERO * MULTIPLICADOR.
           DISPLAY NUMERO " * " MULTIPLICADOR " = " RESULTADO.



       OPERACION-SUMA.
           DISPLAY "Introduce el primer numero: ".
           ACCEPT NUMERO.
           DISPLAY "Introduce el segundo numero: ".
           ACCEPT NUMERO2.
           COMPUTE RESULTADO = NUMERO + NUMERO2.
           DISPLAY "Resultado de la suma: " RESULTADO.

       OPERACION-RESTA.
           DISPLAY "Introduce el primer numero: ".
           ACCEPT NUMERO.
           DISPLAY "Introduce el segundo numero: ".
           ACCEPT NUMERO2.
           COMPUTE RESULTADO = NUMERO - NUMERO2.
           DISPLAY "Resultado de la resta: " RESULTADO.

       END PROGRAM CALCULADORA.
