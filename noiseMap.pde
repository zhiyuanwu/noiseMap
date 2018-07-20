chatBox c1;
chatBox c2;
void setup() {

  size(200, 200);
  background(0);
  c1= new chatBox(20, height, 255,20);
  c2= new chatBox(60, height, 100,50);
}

void draw() {
  background(0); 
  c2.display();
  c1.display(); 
  c1.up();
  c2.up();
  c1.floating();
  c2.floating();
}
