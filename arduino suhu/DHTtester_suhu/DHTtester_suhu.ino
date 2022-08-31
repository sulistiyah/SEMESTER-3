/* Program Indikator Suhu DHT11 dengan LED  */
#include "DHT.h"            //Library DHT
#define DHTPIN 2            //Inisialisasi DHT pada pin D5
#define DHTTYPE DHT11       //Inisialisasi tipe DHT

DHT dht (DHTPIN,DHTTYPE);   //Mengenalkan pin dan tipe DHT

float t;  //Variabel penampung nilai suhu
int LEDM = 11;   //LED merah pada pin D11
int LEDK = 12;   //LED kuning pada pin D12
int LEDH = 13;   //LED hijau pada pin D13

void setup() {
  Serial.begin(9600);     //Mulai komunikasi serial
  dht.begin();            //Mulai DHT
  pinMode(LEDM, OUTPUT);  //Setting LED sebagai output
  pinMode(LEDK, OUTPUT);
  pinMode(LEDH, OUTPUT);
}

void loop() {
    digitalWrite(LEDM, LOW);
    digitalWrite(LEDK, LOW);   //LED kuning menyala
    digitalWrite(LEDH, LOW);
    t = dht.readTemperature();    //Baca suhu
    Serial.print("Suhu : ");
    
    Serial.print(t);              //Tampilkan suhu
    Serial.println(" *C");

  if (t <= 27 && t<30 ){       //Jika suhu <= 35*C, maka
    //digitalWrite(LEDM, LOW);
    digitalWrite(LEDK, HIGH);   //LED kuning menyala
    //digitalWrite(LEDH, LOW);
    
    }
    else  if (t >= 30){        //Jika suhu <= 30*C, maka
      //digitalWrite(LEDM, LOW);
      //digitalWrite(LEDK, LOW);
      digitalWrite(LEDH, HIGH);  //LED hijau menyala
  
    }
    
    else  {             //Jika suhu >= 30*C, maka
      digitalWrite(LEDM, HIGH);   //LED merah menyala
     // digitalWrite(LEDK, LOW);
      //digitalWrite(LEDH, LOW);
    }
    delay(2000);                  //Jeda pembacaan 2000ms
  }
