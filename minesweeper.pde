boolean click;
int cellCountX = 30;
int cellCountY = 20;

Cell[][] cells;
Generate generator;
void setup() 
{
  size(1000, 1000);
  background(50);
  cells = new Cell[cellCountX][cellCountY];
  generator = new Generate();
    generateBombs();
  for (int x = 0; x<cellCountX; x++) {
    for (int y = 0; y<cellCountY; y++) {
      declare(x, y);
      generateCells(x, y);
    }
  }

}
void declare(int i, int j) {
  cells[i][j] = new Cell(i, j);
}

void generateCells(int x, int y) {
  cells[x][y].displayInitial(x, y);
}
void generateBombs(){
  generator.randomCells();
}

///------------------------------------------------------------------------------------------------------------------

void draw() {
  checkClick();
}
//------------------------------------------------------------
//check clicks
void checkClick() {

  if (!mousePressed) {
    click = true;
  }
  for (int i = 0; i<cellCountX; i++) {
    for (int j = 0; j<cellCountY; j++) {
      if (click) {
        click(i, j);
      }
    }
  }
}

void click(int x, int y) {
  if (mousePressed) {
    cells[x][y].isClicked();
  }
}
