#include <p33FJ32MC202.h>
#include "config.h"
#include "pwm.h"

static int periodo;
static int factor;
static int ticks = 0;



void inicializarPWM(void){
    inicializarReloj();
    
    //Configuración del Timer 2
    
    
    T2CON = 0x0000; // Timer en OFF, preescalado 1:1
    PR2= (FCY/10000); //Tiempo de 0,1 ms
    TMR2 = 0; //Inicializar la cuenta
    IFS0bits.T2IF = 0; //Borrar la bandera
    IEC0bits.T2IE = 1; //Habilitar interrupciones
    IPC1bits.T2IP = 4; //Prioridad de interrupciones
    T2CON |= 1<<15; //Timer en ON

    return;

}

void periodoPWM(unsigned int dms){
    
    periodo = dms;
    
    return;
}

void dcPWM (unsigned int dms){
    
    factor = dms;
    
    return;
}

void __attribute__((interrupt, no_auto_psv)) _T2Interrupt(void){
    IFS0bits.T2IF = 0;                  // Borrar la bandera
    ticks ++;

    if (ticks >= periodo){
        ticks=0;
    }
    
    if(ticks <= factor){
        PORTB |=  (1<<14);
    } else {
        PORTB &=  ~(1<<14);
    }  

}
