#include <p33FJ32MC202.h>
#include "timer.h"
#include "config.h"  

void inicializarTimer1(unsigned int dms) {    // Entrada de función en décimas de ms
    unsigned int preescalado;       // Inverso del Factor de preescalado
    unsigned long pr1_calc;         // Valor final de la cuenta

    if (dms <= 17) {                // Si t <= 1,7 ms
        preescalado = 1;
        T1CON = 0x0000;             // OFF, preescalado 1:1
    } else if (dms <= 132) {        // Si t <= 13,2 ms
        preescalado = 8;
        T1CON = 0x0010;             // OFF, preescalado 1:8
    } else if (dms <= 1059) {       // Si t <= 105,9 ms
        preescalado = 64;
        T1CON = 0x0020;             // OFF, preescalado 1:64
    } else {                        // Si t >= 105,9 ms
        preescalado = 256;
        T1CON = 0x0030;             // OFF, preescalado 1:256
    }

    // Cálculo PR1
    pr1_calc = FCY / preescalado /10000* dms; 

    // Verificar que PR1 no exceda el limite de 16 bits
    if (pr1_calc > 65535) {
        pr1_calc = 65535;
    }
    
    PR1 = (unsigned int) pr1_calc;  // Asignación de PR1 al valor calculado
    TMR1 = 0;                       // Inizializar la cuenta
    IFS0bits.T1IF = 0;              // Borrar la bandera
    IEC0bits.T1IE = 1;              // Habilitar interrupciones
    IPC0bits.T1IP = 3;              // Prioridad interrupciones
    T1CON |= (1 << 15);               // ON
}
