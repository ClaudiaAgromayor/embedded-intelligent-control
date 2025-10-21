#include <p33FJ32MC202.h>
#include "config.h"
#include "pwm.h"

static int periodo = 10000;
static int factor = 2500;


int main(void) {
    inicializarReloj();
    inicializarPWM();
    periodoPWM(periodo);
    dcPWM(factor);
    
    TRISB &= ~(1<<14);    
    PORTB |=  (1<<14);
    
    
    while(1);

    return 0;
}
