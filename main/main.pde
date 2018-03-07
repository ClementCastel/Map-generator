int[][] map = new int[8][8];
be[][] BE = new be[8][8];
ild[][] ILD = new ild[8][8];

void setup () {
  size(800, 800);
  for (int i = 0; i <= 7; i++) {
    for (int j = 0; j <= 7; j++) {
      //println(i + " - " + j);
      map[i][j] = int(random(-1, 3));
      if (map[i][j] == 1) { 
        //println("bateau : "+ i*100 +" - " + j*100);
        BE[i][j] = new be(i, j);
      }
      if (map[i][j] == 2) {
        //println("ile : "+ i*100 +" - " + j*100);
        ILD[i][j] = new ild(i, j);
      }
    }
  }
}

void draw () {
  for (int i = 0; i <= 7; i++) {
    for (int j = 0; j <= 7; j++) {
      if (BE[i][j] != null) {
        BE[i][j].display();
        //if (dist(mouseX, mouseY, BE[i][j].x+40, BE[i][j].y+40) <= 60) println("COLLISION AVEC UN BATEAU ENNEMI !");
      }
      if (ILD[i][j] != null) { 
        ILD[i][j].display();
        //if (dist(mouseX, mouseY, ILD[i][j].x+40, ILD[i][j].y+40) <= 60) println("COLLISION AVEC UNE ILE !");
      }
    }
  }
}

void mousePressed () {
  for (int i = 0; i <= 7; i++) {
    for (int j = 0; j <= 7; j++) {
      if (BE[i][j] != null) {
        BE[i][j].display();
        if (dist(mouseX, mouseY, BE[i][j].x+40, BE[i][j].y+40) <= 60 && mousePressed == true) println("COLLISION AVEC LE BATEAU ENNEMI n°: " + i + "," + j + " de niveau :" + BE[i][j].level);
      }
      if (ILD[i][j] != null) { 
        ILD[i][j].display();
        if (dist(mouseX, mouseY, ILD[i][j].x+40, ILD[i][j].y+40) <= 60 && mousePressed == true) println("COLLISION AVEC L'ILE n°: " + i + "," + j + " de niveau :" + ILD[i][j].level);
      }
    }
  }
}