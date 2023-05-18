//Martin Ellison | April 25th | Collision Game
boolean play;
int score;
PImage Boss;
int x2;
float sheepdist, doublesheepdist, bossdist;
Tree f1;
Sheep l1;
Bg f2;
void setup() {
  size(800, 396);
  l1=new Sheep();
  f1 = new Tree(200, height-50);
  f2 = new Bg();
  play=false;
  score=0;
}

void draw() {
  sheepdist=dist(f1.x1, f1.y1, l1.x, l1.y);
  println(sheepdist);
  if (!play) {
    startScreen();
  } else {
    background(135, 206, 235);
    infoPanel();
    f2.displayGround();
    f1.update();
    f1.drawtree();
    l1.display();
    if (play) {
      score=score+frameCount/60;
    }
    if (sheepdist<50) {
      gameOver();
    }
  }
}

void keyPressed() {
  if (key==' ') {
    f1.jump();
  } else if (key=='q') {
    play=true;
  }
}



void startScreen() {
  background(0);
  fill(255);
  textSize(28);
  textAlign(CENTER);
  text("Sheepish Dilemma", width/2, 100);
  textSize(15);
  text("Martin Ellison and James Olsen", width/2, 150);
  text("Press q start", width/2, 200);
  text("Use the spacebar to play", width/2, 220);
}

void gameOver() {
  background(0);
  fill(255);
  textSize(28);
  textAlign(CENTER);
  text("Game Over", width/2, 100);
  textSize(15);
  text("Score: " + score, width/2, 350);
  noLoop();
}

void infoPanel() {
  fill(255, 0);
  fill(0);
  text("Score: " + score, 50, 40);
}
