class Generate{
  int numberOfBombs;  
  int[][] location;
  Generate(){
  numberOfBombs = 15;
  location = new int[numberOfBombs][2];
}
  void randomCells(){
    
    for(int x = 0; x < numberOfBombs; x++){
      location[x][0] = (int)random(0, cellCountX+1); 
      location[x][1] = (int)random(0, cellCountY+1);
    }
  }
  
  void placeBombs(){
    for(int x = 0; x < numberOfBombs; x++){
    }
  }
  
  
  
}
