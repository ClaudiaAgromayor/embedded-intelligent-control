#include <p33FJ32MC202.h>
#include "config.h"


static int cont12 = 0;                  // Equivalen a 0,25 s
static int cont13 = 0;
static int i = 0;                       // Variable para controlar nº de pulsación 


int main(void) {
    inicializarReloj();                 // Oscilador a ~40 MHz
    
    //Iinicializar Puertos
    AD1PCFGL = 0xFFFF;                  // Pines 2 a 7 - digitales
    TRISB &= ~((1 << 12)|(1<<13));      // RB12 (pin 23) y RB13 (pin 24) - salida
    TRISB |= (1 << 2);                  // RB2 (pin 6) - entrada
    PORTB &=  ~((1 << 12)|(1<<13));     // LEDs encendidos
    
    
    // Inicializar Timer 1
    T1CON = 0x0030;                     // OFF, preescalado 1:256
    PR1 = 39062;                        // Tiempo = 0,25 ms
    TMR1 = 0;                           // Inicializar la cuenta
    IFS0bits.T1IF = 0;                  // Borrar la bandera
    IEC0bits.T1IE = 1;                  // Habilitar interrupciones
    IPC0bits.T1IP = 4;                  // Prioridad interrupciones
    T1CON |= (1 << 15);                 // ON
    
    // Variables para uso del pulsador
    int pulsador = 1;           // Variables para detector de flanco
    int pulsador_ant;
    
    while(1) {
        
        pulsador_ant = pulsador;        
        pulsador = (PORTB>>2) & 0x1;    // Lectura de pulsador
        
        if(pulsador<pulsador_ant){      // Detector de flanco
            i++;                        // Aumenta el recuento de nº de pulsaciones
            cont12 = 0;                 // Se reinician contadores de slots de tiempo 
            cont13 = 0;
            PORTB &=  ~((1 << 12)|(1<<13)); // LEDs encendidos al inicio de cada ciclo
        }
        

    }
    return 0;
}


// Función de tratamiento de interrupciones
void __attribute__((interrupt, no_auto_psv)) _T1Interrupt(void){
    IFS0bits.T1IF = 0;                  // Borrar la bandera
    cont12 ++;                      // Actualizar contadores de slots de tiempo
    cont13 ++;
    
            // Funcionamiento LED RB12
        if ((i % 2) == 0){              // Si nº de pulsaciones es par
            if (cont12 == 2){           // Si tiempo = 0,5 s
                PORTB ^= (1 << 12);     // Cambiar estado LED RB12
                cont12 = 0;             // Reiniciar contador de slots de 12
            }            
        } else {                        // Si nº de pulsaciones es impar
            if (cont12 == 10){          // Si tiempo = 2,5 s
                PORTB ^= (1 << 12);     // Cambiar estado LED RB12
                cont12 = 0;             // Reiniciar contador de slots de 12
            }
        }

        // Funcionamiento LED RB13
        if (cont13 <= 5){               // Si tiempo <= 1,25 s
            PORTB &= ~(1 << 13);        // Encender LED RB13
        }
        if (cont13 > 5){                // Si tiempo > 1,25 s
            PORTB |= (1 << 13);         // Apagar LED RB13
        }
        if (cont13 == 20){              // Si tiempo llega a 5 s
            cont13 = 0;                 // Reiniciar ciclo de RB13
        }
}

