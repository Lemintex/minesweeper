

int cellCountX = 30;
int cellCountY = 20;
Cell[][] cells;
void setup() 
{
  size(1000, 1000);
  background(50);
  declare();
  generateCells();
}

void draw() {
  if (!mousePressed){
    click = true;
  }
for (int i = 0; i<cellCountX; i++) {
     for (int j = 0; j<cellCountY; j++) {
      if(click){
       click(i, j);
      }
   }
}  
}

void declare() {
  cells = new Cell[cellCountX][cellCountY];
  for (int i = 0; i<cellCountX; i++) {
     for (int j = 0; j<cellCountY; j++) {
      cells[i][j] = new Cell(i,j);
     }
  }
}

void generateCells() {
  for (int x = 0; x<cellCountX; x++) {
     for (int y = 0; y<cellCountY; y++) {
      cells[x][y].display(x,y); 
     }
  }
}
  boolean click;
  void click(int x, int y){
    if (mousePressed){
    cells[x][y].isClicked();
    }
  }

