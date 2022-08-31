#include<LiquidCrystal.h>
float temp;
int tempPin = A0;
int tempMin = 20;
int tempMax = 30;
int fan = 13;
int fanSpeed = 0;
LiquidCrystal lcd(12,11,5,4,3,2);

void setup() {
  lcd.begin(16,2);
  pinMode(fan,OUTPUT);
  pinMode(tempMin,INPUT);
  Serial.begin(9600);
}

void loop() {
  temp = analogRead(tempPin);
  temp = (temp *5.0*100.0)/1024.0;
  Serial.println(temp);
  delay(1000);
  if(temp<=tempMin) {
    fanSpeed = 0;
    digitalWrite(fan,LOW);
    lcd.setCursor(0,0);
    lcd.print("KIPAS MATI");
  }
  if(temp>=tempMax) {
    fanSpeed = 0;
    digitalWrite(fan,HIGH);
    lcd.setCursor(0,0);
    lcd.print("KIPAS MENYALA");
  }
}
