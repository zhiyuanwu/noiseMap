class chatBox {
  float x;
  float y;
  int g;
  float r;
  float floatingValue;
  float xo;
  chatBox(float x0, float y0, int grey, float r0, float fV) {
    x=x0;
    y=y0;
    g=grey;
    r=r0;
    floatingValue= fV;
    xo=x0;
  }

  void display() {
    stroke(255);
    noFill();
    ellipse(x, y, r, r);
  }

  void up() {
    if (y>=1+r/2) {  
      y=y-y*0.015;
    }
//x=noise(x);
//println(x);
//x=x+noise(floatingValue);
//floatingValue+=1;
  }
}
