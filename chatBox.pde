class chatBox {
  float x;
  float y;
  int g;
  float floatingValue =0.0;
  float r;
  chatBox(float x0, float y0, int grey, float r0) {
    x=x0;
    y=y0;
    g=grey;
    r=r0;
  }

  void display() {
    noStroke();
    fill(g);
    ellipse(x, y, r, r);
  }

  void up() {
    if (y>=1+10) {  
      y=y-1;
    }
  }
  void floating() {

    if (y>=1+10) {
      x=noise(floatingValue)*width;
      floatingValue+=0.01;
    }
  }
}
