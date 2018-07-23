import processing.serial.*;

PImage bubble;

int numberOfBoxes =10;
Serial myPort;  // Create object from Serial class
String val;     // Data received from the serial port
float intval;
chatBox[] chatBoxes =new chatBox[numberOfBoxes];

float floatingValue =0.0;
int cCount;

int debouncer =1;

void setup() {
 imageMode(CENTER);
  size(200, 500);
  background(0);
  for (int i=0; i<chatBoxes.length; i++) {
    //chatBoxes[0]= new chatBox(random(50,150), height, 255, 50,0.0);
    chatBoxes[i]= new chatBox(random(50, 150), height, 0, random(20, 60), 0.0);
  }
  cCount =0;

  // I know that the first port in the serial list on my mac
  // is Serial.list()[0].
  // On Windows machines, this generally opens COM1.
  // Open whatever port is the one you're using.
  String portName = Serial.list()[3]; //change the 0 to a 1 or 2 etc. to match your port
  println(portName);
  myPort = new Serial(this, portName, 9600);
  
  bubble = loadImage("iconmonstr-speech-bubble-10-240.png");
}
void draw() {
  background(255); 
  for (int i=0; i<cCount; i++) {
    chatBoxes[i].display();    
    chatBoxes[i].up();
  }
  // chatBoxes[0].x=chatBoxes[0].x+random(-0.5,0.5);
  //chatBoxes[1].x=chatBoxes[1].x+random(-0.5,0.5);

  if ( myPort.available() > 0) 
  {  // If data is available,
    val = myPort.readStringUntil('\n');         // read it and store it in val
  } 
  println(val); //print it out in the console
  if (val!=null) {
    intval =float(val);
  }
  receiver();
}

/*void mouseClicked() {
 if (cCount<numberOfBoxes) {
 cCount=cCount+1;
 }
 }*/

void receiver() {//need to debounce
  if (cCount<numberOfBoxes) {
    if (intval>700&&debouncer==0) {
      cCount=cCount+1;
      debouncer =1;
    } else if (intval<500) {
      debouncer =0;
    }
  }
}

void keyPressed() {

  if (key == 'c'||key=='C') {
    cCount = 0;
    for (int i=0; i<numberOfBoxes; i++) {
      chatBoxes[i].y=height;
    }
  }
}
