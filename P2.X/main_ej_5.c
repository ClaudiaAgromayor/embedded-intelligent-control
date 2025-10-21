#include <p33FJ32MC202.h>
#include "config.h"

int main(void) {
    inicializarReloj();
    
    AD1PCFGL = 0xFFFF; 
    
    // Configurar puertos
    TRISA = 0xFFFF;
    TRISB = 0x0BFF;
    
    PORTB = 0xFFFF;
    
    int pulsador_externo;
    int pulsador_integrado;
    
    while(1){
        pulsador_externo = PORTA & 0x1;
        pulsador_integrado = (PORTB >> 2) & 0x1;
        
        if (pulsador_externo == 1) {
            PORTB &= ~(1 << 10);    // Enciende LED RB10
        }
        
        // Pulsador integrado (RB2) - pull-up: 0 = presionado  
        if (pulsador_integrado == 0) {
            PORTB |= (1 << 10);     // Apaga LED RB10
        }
    }
    return 0;
}