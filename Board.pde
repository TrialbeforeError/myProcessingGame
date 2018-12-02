class Board {
  int firstTileLeftUpperX;
  int firstTileLeftUpperY;
  int rows;
  int columns;
  int tileSide;
  PVector tileClicked;
  PVector tileToSwap;
  int helperValue;
  int helperX;
  int helperY;
  Tile [][] tile; 

  Board(int bEdge, int bTileSide, int bNumberOfRows, int bNumberOfColumns)
  { 
    firstTileLeftUpperX = bEdge;
    firstTileLeftUpperY = bEdge;
    tileSide = bTileSide;
    rows = bNumberOfRows;
    columns = bNumberOfColumns;
    tile = new Tile[rows][columns];
    tileToSwap = new PVector(bNumberOfColumns-1, bNumberOfRows-1);
  }

  void populateBoard() {
    for (int j = 0; j<rows; j++) {
      for (int i = 0; i<columns; i++) {
        tile[j][i] = new Tile((rows*columns - ((j*columns) +i))-1);
      }
    }
  }

  void display() {
    for (int j = 0; j<rows; j++) {
      for (int i = 0; i<columns; i++) {
        tile[j][i].display(i, j,tileSide,firstTileLeftUpperX, firstTileLeftUpperY);
      }
    }
  }

  boolean tryToSwapTiles(int _mouseY, int _mouseX) {
    println("tryToSwapTiles");
    //get row/column for clicked tile where PVector.x = column, PVector.y = row 
    //,row and column starting at 0
    tileClicked(_mouseY, _mouseX);
    if (checkIfSwapTiles()) {
      helperValue=tile[int(tileClicked.y)][int(tileClicked.x)].value ;
      helperX=int(tileClicked.x);
      helperY=int(tileClicked.y);
      
      tile[int(tileClicked.y)][int(tileClicked.x)].value = tile[int(tileToSwap.y)][int(tileToSwap.x)].value;
      tileClicked.y=tileToSwap.y;
      tileClicked.x=tileToSwap.x;
      
      tile[int(tileToSwap.y)][int(tileToSwap.x)].value =helperValue;
      tileToSwap.y = helperY;
      tileToSwap.x = helperX;
    }


    return true;
  }

  boolean checkIfSwapTiles() {

    //als rij gelijk en abs verschil van de abs waarde is 1 
    if (tileClicked.y == tileToSwap.y && abs(abs(tileClicked.x) - abs(tileToSwap.x)) ==1) { 
      return true;
    }
    if (tileClicked.x == tileToSwap.x && abs(abs(tileClicked.y) - abs(tileToSwap.y)) ==1) { 
      return true;
    }
    return false;
  }

  void tileClicked(int __mouseY, int __mouseX) {
    int arrayrow;  //from 0 to ... row -1
    int arraycolumn; //from 0 to ... column -1
    tileClicked = new PVector();  

    //calculate row
    __mouseY=__mouseY-firstTileLeftUpperY;
    arrayrow=__mouseY/tileSide;
    if (__mouseY%tileSide == 0) {
      arrayrow-=1;
    }
    tileClicked.y = arrayrow;
    println("tileClicked.y: ", tileClicked.y);

    //calculate column
    __mouseX=__mouseX-firstTileLeftUpperX;
    arraycolumn=__mouseX/tileSide;
    if (__mouseX%tileSide == 0) {
      arraycolumn-=1;
    }
    tileClicked.x = arraycolumn;
    println("tileClicked.x: ", tileClicked.x);
  }


}
