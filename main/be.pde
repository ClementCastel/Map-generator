class be {
  int x;
  int y;
  int level;
  int corner = int(random(1, 5));

  be(int i, int j) {
    x = 10+i*100;
    y = 10+j*100;
    level = int(random(1, 4));
  }

  void display () {
    fill(255, 0, 0);
    rect(x, y, 80, 80);
    rectMode(CORNER);
    if (corner == 1) { 
      fill(0); 
      rect(x+5, y+5, 35, 35);
    }
    if (corner == 2) {
      fill(0); 
      rect(x+5, y+40, 35, 35);
    }
    if (corner == 3) { 
      fill(0); 
      rect(x+40, y+5, 35, 35);
    }
    if (corner == 4) {
      fill(0); 
      rect(x+40, y+40, 35, 35);
    }
  }
}