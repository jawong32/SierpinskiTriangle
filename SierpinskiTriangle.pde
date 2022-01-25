public void setup() {
  size(800, 800);
}
  
public void draw() {
  sierpinski(100, 100, 100);
}

public void sierpinski(int x, int y, int len) {
  if (len < 20)
    triangle(x, y, x + len, y, x + len / 2, y + len);
  else
    sierpinski(x, y, len / 2);
}
