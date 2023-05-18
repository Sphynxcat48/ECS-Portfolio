class Bg {
  int x, y, a, b, c, d, e, f, g, h;
  PImage bg;

  Bg() {
    x=0;
    a=193;
    b=193*2;
    c=193*3;
    d=193*4;
    e=193*5;
    f=193*6;
    g=193*7;
    h=193*8;
    y=294;
    bg=loadImage("Bg.png");
  }

  void displayGround() {
        bg.resize(300, 300);
    image(bg, x, y);
    image(bg, (a), y);
    image(bg, (b), y);
    image(bg, (c), y);
    image(bg, (d), y);
    image(bg, (e), y);
    image(bg, (f), y);
    image(bg, (g), y);
    image(bg, (h), y);
    if (x<-196) {
      x=996;
    } else {
      x-=10;
    }
    if (a<-196) {
      a=996;
    } else {
      a-=10;
    }
    if (b<-196) {
      b=996;
    } else {
      b-=10;
    }
    if (c<-196) {
      c=996;
    } else {
      c-=10;
    }
    if (d<-196) {
      d=996;
    } else {
      d-=10;
    }
    if (e<-196) {
      e=996;
    } else {
      e-=10;
    }
    if (f<-196) {
      f=996;
    } else {
      f-=10;
    }
    if (g<-196) {
      g=996;
    } else {
      g-=10;
    }
    if (h<-196) {
      h=996;
    } else {
      h-=10;
    }
  }
}
