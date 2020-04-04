class CellLogic{
  int numberOfCell;
  CellLogic(){
  }
  
  int cellValue(int posX, int posY){
        numberOfCell=0;
    for(int x = posX-1; x<=posX+1;x++){
      if(x>=cellCountX || x<0){
        x++;
        if(x==posX+2){
          break;
        }
      }
     for(int y = posY-1;y<=posY+1;y++){
       if(y>=cellCountY || y<0){
         y++;
         if(y==posY+2){
           break;
         }
       }
       if(cells[x][y].hasMine){
         numberOfCell++;
       }
     }
    }
    return numberOfCell;
  }
}
