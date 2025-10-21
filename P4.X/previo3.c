#include <p33FJ32MC202.h>
#include "config.h"
#include "timer.h"


static int ticks = 0;                   // Equivalen a 2 ms
static int ciclos = 0;                  // Equivalen a 10 ms 
static int estados = 0;                 // Equivalen a 1 s


int main(void) {
    inicializarReloj();                 // Oscilador a ~40 MHz
    
    //Iinicializar Puertos
    TRISB &= ~(1<<15);                  // RB15 (pin 26) - salida
    PORTB &=  ~(1<<15);                 // LED encendido
      
    // Inicializar Timer 1
    inicializarTimer1 (20);                          
    
    while(1) {
        
        if(ticks < estados){         
            PORTB &= ~(1<<15);          // Encender led
        } else {
            PORTB |= (1<<15);           // Apagar led
        }    
    }
    return 0;
}


// Función de tratamiento de interrupciones
void __attribute__((interrupt, no_auto_psv)) _T1Interrupt(void){
    IFS0bits.T1IF = 0;                  // Borrar la bandera
    ticks ++;                         
    
    if (ticks == 5){                    // Si tiempo llega a 10 ms
        ticks = 0;                      
        ciclos++;
    }
    if (ciclos == 100){                 // Si tiempo llega a 1 s
        estados ++;
    }
    if (estados > 5){                   // Si supera 5 segundos
        estados = 0;
    }
}


