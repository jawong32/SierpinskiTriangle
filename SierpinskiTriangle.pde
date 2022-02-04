int base = 6;
int size = 200;
int posX = 0;
int posY = 800;

public void setup() {
  noStroke();
  size(800, 800);
  frameRate(10);
}

public int randRGB() {
  return (int) (Math.random() * 256);
}


public void draw() {
  background(0);
  sqt(posX, posY, size);
  //sqt(pos, 400, size);
  //sqb(pos, 400, size);
  size += 5;
  posX -= 10;
  posY += 10;
  if (posY == 1180) {
    size = 200;
    posX = 0;
    posY = 800;
  }
}


public void sierpinski(int x, int y, int len) {
  if (len < 20) {
    triangle(x, y, x + len / 2, y - len / 2, x + len, y);
  } else {
    sierpinski(x, y, len / 2);
    sierpinski(x + len / 2, y, len / 2);
    sierpinski(x + len / 4, y - len / 2, len / 2);
  }
}

public void sqt(int x, int y, int len) {
  if (len < base) {
    square(x, y, len);
  } else {
    //fill(randRGB(), randRGB(), randRGB());
    sqt(x, y, len / 2);
    sqt(x + len / 2, y - len / 2, len / 2);
    sqt(x + len, y - len, len / 2);
    sqt(x + 3 * len / 2, y - len / 2, len / 2);
    sqt(x + 2 * len, y, len / 2);
  }
}

public void sqb(int x, int y, int len) {
  if (len < base) {
    square(x, y, len);
  } else {
    //fill(randRGB(), randRGB(), randRGB());
    sqb(x, y, len / 2);
    sqb(x + len / 2, y + len / 2, len / 2);
    sqb(x + len, y + len, len / 2);
    sqb(x + 3 * len / 2, y + len / 2, len / 2);
    sqb(x + 2 * len, y, len / 2);
  }
}

public void mousePressed() {
  System.out.println(size);
  System.out.println(posY);
}
