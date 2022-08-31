#include <DHT.h> //Library DHT
#include <LiquidCrystal_I2C.h>
LiquidCrystal_I2C lcd (0x27, 16, 2);
DHT dht(2, DHT11); //Pin, Jenis DHT
#define fan 3
 
void setup(){
 Serial.begin(9600);
 pinMode(fan,OUTPUT);
 digitalWrite(fan,1);
 Wire.begin();
 //lcd.begin();
 lcd.init();
 dht.begin();
}
 
void loop(){
  //foat dapat di ganti dengan byte jika tidak ingin ada tambahan .00
 byte kelembaban = dht.readHumidity();
 byte suhu = dht.readTemperature();
 
 Serial.print("suhu: ");
 Serial.println(suhu);
 Serial.print(" ");
 Serial.print("kelembaban: ");
 Serial.print(kelembaban);

 lcd.setCursor (0,0);
 lcd.print("Suhu : ");
 lcd.print(suhu); 
 lcd.print((char)223);
 lcd.print("C");

 if (suhu >= 28;;){
  digitalWrite(fan,0);
  ngeprint();
  
 }else{
  digitalWrite(fan,1);
 }
 
}

void ngeprint(){
  lcd.setCursor (0,1);
  lcd.print("Hareudang");
  delay(1000);
  lcd.setCursor (0,1);
  lcd.print("            ");
  delay(400);
  lcd.setCursor (0,1);
  lcd.print("Hareudang");
  delay(1000);
  lcd.setCursor (0,1);
  lcd.print("            ");
  delay(400);
  lcd.setCursor (0,1);
  lcd.print("Hareudang");
  delay(1000);
  lcd.setCursor (0,1);
  lcd.print("            ");
  delay(200);
  lcd.setCursor (0,1);
  lcd.print("Panas");
  delay(450);
  lcd.setCursor (0,1);
  lcd.print("            ");
  delay(400);
  lcd.setCursor (0,1);
  lcd.print("Panas");
  delay(450);
  lcd.setCursor (0,1);
  lcd.print("            ");
  delay(400);
  lcd.setCursor (0,1);
  lcd.print("Panas");
  delay(2700);
  lcd.setCursor (0,1);
  lcd.print("            ");
  delay(400);
  lcd.setCursor (0,1);
  
}
