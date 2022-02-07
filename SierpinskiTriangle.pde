final static int BASE = 10;
int shapeSize = 200;
int posX = 0;
int posBY = 800;
int posTY = 0;

float r = 50;
float g = 50;
float b = 50;
float offset = 0;

public void setup() {
  noStroke();
  size(800, 800);
  background(0);
  frameRate(10);
}

public void draw() {
  background(0);
  fill(r, g, b);
  sqt(posX, posBY, shapeSize);
  fill(b, g, r);
  sqb(posX, posTY, shapeSize);
}

public void sqt(int x, int y, int len) {
  if (len < BASE) {
    rect(x, y, len, len);
  } else {
    sqt(x, y, len / 2);
    sqt(x + len / 2, y - len / 2, len / 2);
    sqt(x + len, y - len, len / 2);
    sqt(x + 3 * len / 2, y - len / 2, len / 2);
    sqt(x + 2 * len, y, len / 2);
  }
}

public void sqb(int x, int y, int len) {
  if (len < BASE) {
    rect(x, y, len, len);
  } else {
    sqb(x, y, len / 2);
    sqb(x + len / 2, y + len / 2, len / 2);
    sqb(x + len, y + len, len / 2);
    sqb(x + 3 * len / 2, y + len / 2, len / 2);
    sqb(x + 2 * len, y, len / 2);
  }
}

public void colorShift() {
  r = Math.max((float) (Math.sin(offset) * 200), 50);
  g = Math.max((float) (Math.sin(offset * 2) * 200), 50);
  b = Math.max((float) (Math.sin(offset * 3) * 200), 50);
}

public void mouseMoved() {
  shapeSize += 5;
  posX -= 10;
  posBY += 10;
  posTY -= 10;
  offset += 0.01;
  colorShift();
  if (posBY == 1180) {
    shapeSize = 200;
    posX = 0;
    posBY = 800;
    posTY = 0;
  }
}
