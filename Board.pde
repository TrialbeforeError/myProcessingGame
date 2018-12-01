class Board {
  int firstTileLeftUpperX;
  int firstTileLeftUpperY;
  int rows;
  int columns;
  int tileSide;
  Tile [][] tile; 

  Board(int bEdge, int bTileSide, int bNumberOfRows, int bNumberOfColumns)
  { 
    firstTileLeftUpperX = bEdge;
    firstTileLeftUpperY = bEdge;
    tileSide = bTileSide;
    rows = bNumberOfRows;
    columns = bNumberOfColumns;
    tile = new Tile[rows][columns];
  }

  void populateBoard() {
    for (int j = 0; j<rows; j++) {
      for (int i = 0; i<columns; i++) {
        tile[j][i] = new Tile((rows*columns - ((j*columns) +i))-1);
      }
    }
  }
  
  void display(){
  for (int j = 0; j<rows; j++) {
      for (int i = 0; i<columns; i++) {
        tile[j][i].display(i,j);
      }
    }
	}
    
    boolean swapTiles(int j,int i) {
	if (j = 0) { if tile[j+1][i].value = 0 }

	if (j>0 && j<rows-1)

	if (j=rows-1) 

    }
    
  PVector checkSwapTiles(int j, int i ){}
  
  
}
