#include <p33FJ32MC202.h>
#include "config.h"

// -----------------------------------------------------------------------------

int main(void) {
    inicializarReloj();
    
    AD1PCFGL = 0xFFFF;
    
    TRISB = 0x0FFF;
    // 1. PORTB = 0xDFFF;
    PORTB = 0x9FFF;
    
    int pulsador;
    
    while(1){
        pulsador = (PORTB >> 2) & 0x1;
        if (pulsador == 0){
            PORTB &= ~(1<<12);
        }
        else{
            PORTB |= 1<<12;
        }
    }

    return 0;
}

