public void setup() {
  size(800, 800);
}

public void draw() {
  //sierpinski(100, 100, 100);
  squarepinski(0, 400, 200);
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

public void squarepinski(int x, int y, int len) {
  if (len < 3) {
    square(x, y, len);
  } else {
    stroke(randRGB(), randRGB(), randRGB());
    squarepinski(x, y, len / 2);
    squarepinski(x + len / 2, y - len / 2, len / 2);
    squarepinski(x + len, y - len, len / 2);
    squarepinski(x + 3 * len / 2, y - len / 2, len / 2);
    squarepinski(x + 2 * len, y, len / 2);
    squarepinski(x + len / 2, y + len / 2, len / 2);
    squarepinski(x + len, y + len, len / 2);
    squarepinski(x + 3 * len / 2, y + len / 2, len / 2);
  }
}

public int randRGB() {
  return (int) (Math.random() * 256);
}
