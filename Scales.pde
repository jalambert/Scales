void setup() {
  size(800, 800);
  noLoop();
}


int diam = 0;
float r = 255;
float b = 0;
float n = 0;

void draw() {
  for (int y = 0; y < 900; y +=15) {
    for (int x = 0; x < 875; x += 50) {
      if (n/((int)(n/2)) == 2) {
        scale2(x-25, y);

        b = 0;
        r = 255;

      } else {
        scale(x, y);

        b = 255;
        r = 0;

      }
      diam = 0;
    }
    n = n+1;
  }
  System.out.println(mouseX + " " + mouseY);
}

void scale(int x, int y) {
  while (diam <= 50) {
    noFill();
    stroke(0, b, r);
    ellipse(x, y, diam, diam);

    b -= 255/50;
    r += 255/50;
    diam++;
  }
  stroke(255, 255, 0);
  fill(0, 255, 0);
  triangle(x-5, y+5, x+5, y+5, x, y-7);
}

void scale2(int x, int y) {
  while (diam <= 50) {
    noFill();
    stroke(255, b, 0);
    ellipse(x, y, diam, diam);

    b += 255/50;
    r -= 255/50;
    diam++;
  }
  stroke(0, 0, 255);
  fill(255, 0, 0);
  triangle(x-5, y+5, x+5, y+5, x, y-7);
}
