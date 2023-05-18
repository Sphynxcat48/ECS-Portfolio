class Sheep {
  int x, y;
  PImage sheep;
  int x2;

  Sheep() {
    x+=1000;
  }
  void display() {
    if (key==' ') {
      if (x<0) {
        x=int(random(800, 2000));
      }
      y=320;
      x-=10;
    } else
      sheep=loadImage("New Piskel (1).png");
    imageMode(CENTER);
    image(sheep, x, y);
    sheep.resize(150, 150);
  }
}
