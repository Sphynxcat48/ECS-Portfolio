class Tree {
  int x1, y1;
  PImage tree;
  int tsize;
  boolean Jumping;
  float speed;
  float gravity;


  Tree(int x1, int y1) {
    this.x1=x1;
    this.y1=y1;
    tsize = 100;
    tree=loadImage("Tree.png");
    Jumping = false;
    speed = 0;
    gravity = 0.23;
  }

  void jump() {
    if (!Jumping) {
      Jumping =  true;
      speed = -7;
    }
  }
  void update() {
    speed += gravity;
    y1 += speed;
    if (y1 > height - tsize) {
      y1 = height - tsize;
      speed = 0;
      Jumping = false;
    }
  }
  void drawtree() {
    image(tree, x1, y1, tsize, tsize);
    update();
  }
}
