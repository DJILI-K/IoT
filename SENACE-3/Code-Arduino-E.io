#include <MKRWAN.h>
#include "arduino_secrets.h"

LoRaModem modem;
String appEui = SECRET_APP_EUI;
String appKey = SECRET_APP_KEY;

void setup() {
  Serial.begin(9600);
  while (!Serial);
  if (!modem.begin(EU868)) { while (1); }
  Serial.println(/* BLANC 1 : afficher DevEUI */);
  if (!modem.joinOTAA(/* BLANC 2 */, /* BLANC 3 */)) { while (1); }
  modem.setADR(/* BLANC 4 */);
  modem.dataRate(/* BLANC 5 : DR3 = SF9 */);
  modem.setTxPower(14);
}

void loop() {
  int valeur_brute = analogRead(A0);
  float ntu = /* BLANC 6 : modele regression */;
  int ntu_int = (int)(ntu * 10);
  modem.beginPacket();
  modem.write(/* BLANC 7 : octet poids fort */);
  modem.write(/* BLANC 8 : octet poids faible */);
  int err = modem.endPacket(false);
  delay(30000);
}
