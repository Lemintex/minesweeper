class Generate {
  int numberOfMines;  
  Generate() {
    numberOfMines = 25;
  }
  void randomCells() {

    int minesPlaced = 0;
    while (minesPlaced<numberOfMines) {
      int x = (int)random(0, cellCountX); 
      int y = (int)random(0, cellCountY);
      if(!cells[x][y].hasMine){
      cells[x][y].hasMine = true;
      minesPlaced++;
      }
    }
  }
}
