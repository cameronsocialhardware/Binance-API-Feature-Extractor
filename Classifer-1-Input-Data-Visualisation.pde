import oscP5.*;
import netP5.*;

OscP5 oscP5;
NetAddress dest;

float currentMessage;

int one = 1;
int two = 2;
int three = 3;
int four = 4;
int five = 5;

void setup() {
 size(770, 770); // Create 800 x 800 px canvas
 background(0);
 rectMode(CENTER);
 
 //Initialize OSC communication
 oscP5 = new OscP5(this,12000); //listen for OSC messages on port 12000 (Wekinator default)
 dest = new NetAddress("127.0.0.1",6448); //send messages back to Wekinator on port 6448, localhost (this machine) (default)
 
}

void draw() { 
// Class 1
  if (currentMessage == one) {
    float r = random(256);
    float g = 0;
    float b = 0;

    int i = 0;
    while ( i < 10) {
    i += 1;
    
    int j = 0;
    while (j < 10) {
    j +=1;
    int posX = i * 70;
    int posY = j * 70;
    float size = random(66);
    
    circle(posX, posY, size);
    fill(0, 0, 0);
    stroke(r, g, b);
    strokeWeight(4);
    
    }
   }
  }
 // Class 2 
  if (currentMessage == two) {
    
    float r = random(256);
    float g = 0;
    float b = random(256);

    int i = 0;
    while ( i < 10) {
    i += 1;
    
    int j = 0;
    while (j < 10) {
    j +=1;
    int posX = i * 70;
    int posY = j * 70;
    float size = random(66);
    
    circle(posX, posY, size);
    fill(0, 0, 0);
    stroke(r, g, b);
    strokeWeight(4);
    
    }
   }
  }
 // Class 3
  if (currentMessage == three) {
    
    float r = 0;
    float g = 0;
    float b = random(256);

    int i = 0;
    while ( i < 10) {
    i += 1;
    
    int j = 0;
    while (j < 10) {
    j +=1;
    int posX = i * 70;
    int posY = j * 70;
    float size = random(66);
    
    circle(posX, posY, size);
    fill(0, 0, 0);
    stroke(r, g, b);
    strokeWeight(4);
    }
   }
  }
// Class 4
  if (currentMessage == four) {
    float r = 0;
    float g = random(256);
    float b = random(256);

    int i = 0;
    while ( i < 10) {
    i += 1;
    
    int j = 0;
    while (j < 10) {
    j +=1;
    int posX = i * 70;
    int posY = j * 70;
    float size = random(66);
    
    circle(posX, posY, size);
    fill(0, 0, 0);
    stroke(r, g, b);
    strokeWeight(4);
    }
   }
  }
// Class 5
  if (currentMessage == five) {
   float r = 0;
   float g = random(256);
   float b = 0;

   int i = 0;
   while ( i < 10) {
   i += 1;
    
   int j = 0;
   while (j < 10) {
   j +=1;
   int posX = i * 70;
   int posY = j * 70;
   float size = random(66);
    
   circle(posX, posY, size);
   fill(0, 0, 0);
   stroke(r, g, b);
   strokeWeight(4);
   }
  }
 }
}

//This is called automatically when OSC message is received
void oscEvent(OscMessage theOscMessage) {
  
  if (theOscMessage.checkAddrPattern("/wek/outputs") == true) {
     
  if(theOscMessage.checkTypetag("f")) {
    currentMessage = theOscMessage.get(0).floatValue();
    /* print the OSC message */
    println("The Wekinar class is " + theOscMessage.get(0).floatValue());
    theOscMessage.print();
    } else {
    println("Error: unexpected OSC message received by Processing.");
    }
}
}
