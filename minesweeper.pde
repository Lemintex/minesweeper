boolean click;
int cellCountX = 10;
int cellCountY = 10;
Death death;
Cell[][] cells;
Generate generator;
CellLogic logic;
void setup() 
{
  size(1000, 1000);
setupGame();
}

void setupGame(){
  background(50);
  cells = new Cell[cellCountX][cellCountY];
  generator = new Generate();
  logic = new CellLogic();
  death = new Death();
  declare();
  generateMines();
  generateCells();
}
void declare() {
  for (int x = 0; x<cellCountX; x++) {
    for (int y = 0; y<cellCountY; y++) {
      cells[x][y] = new Cell(x, y);
    }
  }  
}
void generateCells() {
  for (int x = 0; x<cellCountX; x++) {
    for (int y = 0; y<cellCountY; y++) {
      cells[x][y].displayInitial(x, y);
    }
  }
}
void generateMines() {
  generator.randomCells();
}

///------------------------------------------------------------------------------------------------------------------

void draw() {
  checkClick();
}
//------------------------------------------------------------
//check clicks
void checkClick() {

  if (!mousePressed && !death.dead) {
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
