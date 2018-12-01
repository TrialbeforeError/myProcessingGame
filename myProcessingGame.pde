int edge = 5;
int tileSide = 80;
int numberOfRows = 5;
int numberOfColumns = 5;
Board board;

void settings() {
size((numberOfColumns*tileSide)+(2*edge),(numberOfRows*tileSide)+(2*edge));
board = new Board(edge, tileSide, numberOfRows, numberOfColumns);	
board.populateBoard();
}



void draw() {
  board.display(); 
	
}
