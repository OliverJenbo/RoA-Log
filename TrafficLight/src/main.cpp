#include <Arduino.h>

const int ledPinD0 = D0;
const int ledPinD1 = D1;
const int ledPinD2 = D2;

enum LedState {
    STATE_RED,
    STATE_REDYELLOW,
    STATE_YELLOW,
    STATE_GREEN
};

LedState currentState = STATE_RED;

unsigned long previousMillis = 0;
const long blinkInterval = 500;

void setup() {
    pinMode(ledPinD0, OUTPUT);
    pinMode(ledPinD1, OUTPUT);
    pinMode(ledPinD2, OUTPUT);
}

void loop() {
    unsigned long currentMillis = millis();

    switch (currentState) {
        case STATE_RED:
            digitalWrite(ledPinD0, HIGH);
            digitalWrite(ledPinD1, LOW);
            digitalWrite(ledPinD2, LOW);
            break;

        case STATE_REDYELLOW:
            digitalWrite(ledPinD0, HIGH);
            digitalWrite(ledPinD1, HIGH);
            digitalWrite(ledPinD2, LOW);
            break;

        case STATE_GREEN:
            digitalWrite(ledPinD0, LOW);
            digitalWrite(ledPinD1, LOW);
            digitalWrite(ledPinD2, HIGH);
            break;

        case STATE_YELLOW:
            digitalWrite(ledPinD0, LOW);
            digitalWrite(ledPinD1, HIGH);
            digitalWrite(ledPinD2, LOW);
            break;
    }

    // State transition logic
    if (currentMillis % 12000 >= 9000) 
    {
         currentState = STATE_YELLOW;
    }
    else if (currentMillis % 12000 >= 6000) 
    {
        currentState = STATE_GREEN;
    } 
    else if (currentMillis % 12000 >= 3000) 
    {
        currentState = STATE_REDYELLOW;
    } 
    else 
    {
        currentState = STATE_RED;
    }
}





