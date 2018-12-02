int edge = 5;
int tileSide = 80;
int numberOfRows = 5;
int numberOfColumns = 5;
Board board;

//void setup() {
void settings() {
size((numberOfColumns*tileSide)+(2*edge),(numberOfRows*tileSide)+(2*edge));
board = new Board(edge, tileSide, numberOfRows, numberOfColumns);	
board.populateBoard();
}



void draw() {
  background(0);
  board.display(); 

}

void mousePressed(){
  board.tryToSwapTiles(mouseY,mouseX);
  println (mouseX,  mouseY);

}
