class Cell {
  int x;
  int y;
  int positionX;
  int positionY;
  boolean hasMine;
  Cell(int posX, int posY) {
    x = posX*size;
    y = posY*size;
positionX = posX;
positionY = posY;
}
    
  
  //--------------------------------------------------
  //displayInitial

  void displayInitial(int x, int y) {
    x*=size;
    y*=size;
    fill(127);
    rect(x, y, size, size);
    lines(x, y, size);
  }

  //----------------------------------------------------
  //draw initial

  void lines(int x, int y, int size) {  
    fill(155, 0, 200);
    line(x, y, x+size, y);
    line(x, y, x, y+size);
    line(x+size, y, x+size, y+size);
    line(x, y+size, x+size, y+size);
  }

  //-------------------------------------------------
  //Cljck

  void isClicked() {
    if (mouseX >= x && mouseX < x+size && mouseY >= y && mouseY < y + size) {
      fill(200);
      rect(x, y, size, size);
       click = false;
      fill(255, 0, 0);
      showNumber();
      isMine();
    }
  }

  //--------------------------------------------------------------------
  //number write
  void showNumber() {
    int num = logic.cellValue(positionX, positionY);
    switch(num) {
    case 1:
      fill(52, 147, 252);
      break;
    case 2:
      fill(27, 124, 18);
      break;
    case 3:
      fill(255, 0, 0);
      break;
    case 4:
      fill(0, 0, 255);
      break;
    case 5:
      fill(94, 63, 55);
      break;
    case 6:
      fill(18, 124, 82);
      break;
    case 7:
      fill(0);
      break;
    case 8:
      fill (120);
      break;
    }
    text(num, x+7, y+15);
  }

  //----------------------------------------------------------------
  //bomb
  void isMine() {
    if (hasMine) {
      fill(0);
      rect(x, y, size, size);
      death.onDeath();
    }
  }

  //-------------------------------------------------------------------
  //determineNumber

  //int determineNumber() {
  //  int number = 0;
  //  for (int i = -1; i<2; i++) {
  //    for (int j = -1; j < 2; i++) {
  //    }
  //  }
  //}
}
