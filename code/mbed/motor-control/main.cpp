// Jacob Kang 02DEC19
// Send a PWM Signal to a Motor when Prompted

#include "mbed.h"
#include "Motor.h"

Motor mymotor(p21);
float pwm;
int x=0;

int main(){
  while (x==0) {
    pwm=0.0;
    mymotor = pwm;

    if (prompted by user to start) {
      x = 1;
      while (x==1){
	pwm=0.5;
	mymotor=pwm;

	if (prompted by user to stop){
	  x=0;
	}
      }
    }
  }
}
