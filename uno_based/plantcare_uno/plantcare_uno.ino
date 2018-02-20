int ledPinOut = 13;
int ledPinIn = 14;

void setup()
{
  pinMode(ledPinOut, OUTPUT);
  pinMode(ledPinIn, INPUT);
} 


void loop()
{
  // if Moisture is less than threshold
  if(ledPinIn == 1)
  {
    digitalWrite(ledPinOut, HIGH);
  }
  else
  {
    digitalWrite(ledPinOut, LOW);
  }

} 
