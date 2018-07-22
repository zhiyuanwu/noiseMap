chatBox[] chatBoxes =new chatBox[10];

float floatingValue =0.0;

void setup() {

  size(200, 500);
  background(0);
  for (int i=0; i<chatBoxes.length; i++) {
    //chatBoxes[0]= new chatBox(random(50,150), height, 255, 50,0.0);
    chatBoxes[i]= new chatBox(random(50, 150), height, 0, random(20,50), 0.0);
  }
}
void draw() {
  background(0); 
  for (int i=0; i<chatBoxes.length; i++) {
    chatBoxes[i].display();    
    chatBoxes[i].up();
  }
  // chatBoxes[0].x=chatBoxes[0].x+random(-0.5,0.5);
  //chatBoxes[1].x=chatBoxes[1].x+random(-0.5,0.5);
}
