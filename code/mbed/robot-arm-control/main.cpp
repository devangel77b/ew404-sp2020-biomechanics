// Robot Arm
// Jacob Kang
// 15APR20

#include "mbed.h"
#include "Servo.h"
#include "math.h"

Servo myservo1(p21);
Servo myservo2(p22);
Servo myservo3(p23);
Serial pc(USBTX,USBRX);

int i = 0;
float p1;
float p2;
float p3;
float s1old;
float s2old;
float s3old;
float s1new;
float s2new;
float s3new;

int main()
{
    s1old = 0.5;
    s2old = 0.5;
    s3old = 0.5;
    myservo1 = s1old;
    myservo2 = s2old;
    myservo3 = s3old;
    pc.baud(9600);                       // increase baud rate
    pc.format(8,SerialBase::None,1);     // set serial comms

    while(1) {



        pc.printf("Enter two Servo Levels");

        pc.scanf("%f,%f,%f", &s1new,&s2new,&s3new);
        s1new = 0.0;
        s2new = 0.0;
        s3new = 0.0;

        if (s1new > s1old) {
            for(p1=s1old; p1<s1new; p1 += 0.01) {
                myservo1 = p1;
                wait(0.03);
            }
        } else {
            for(p1=s1old; p1>s1new; p1 -= 0.01) {
                myservo1 = p1;
                wait(0.03);

            }
        }
        if (s2new > s2old) {
            for(p2=s2old; p2<s2new; p2 += 0.01) {
                myservo2 = p2;
                wait(0.03);

            }
        } else {
            for(p2=s2old; p2>s2new; p2 -= 0.01) {
                myservo2 = p2;
                wait(0.03);
            }
        }
        if (s3new > s3old) {
            for(p3=s3old; p3<s3new; p3 += 0.01) {
                myservo3 = p3;
                wait(0.03);

            }
        } else {
            for(p3=s3old; p3>s3new; p3 -= 0.01) {
                myservo3 = p3;
                wait(0.03);
            }
        }
        pc.printf("Servo 1: %f, Servo 2: %f, Servo 3; %f", s1new, s2new, s3new);
        s1old = s1new;
        s2old = s2new;

    }
}