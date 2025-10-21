#include <p33FJ32MC202.h>
#include "config.h"

// -----------------------------------------------------------------------------

int main(void) {
    inicializarReloj();
    
    AD1PCFGL = 0xFFFF;
    
    TRISB = 0x0BFF;
    // TRISB = 0x0FFF;
    // TRISB &= ~(1<<10);
    // 1. PORTB = 0xDFFF;
    PORTB = 0x9FFF;
    
    int pulsador;
    int pulsador_ant;  // Variable para detectar cambios
    
    while(1){
        pulsador_ant = pulsador;
        pulsador = (PORTB >> 2) & 0x1;
        if (pulsador < pulsador_ant) {
            PORTB ^= (1 << 10);  
        }
    }

    return 0;
}