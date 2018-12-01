import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class myProcessingGame extends PApplet {

int edge = 5;
int tileSide = 80;
int numberOfRows = 5;
int numberOfColumns = 5;
Board board;

public void settings() {
size((numberOfColumns*tileSide)+(2*edge),(numberOfRows*tileSide)+(2*edge));
board = new Board(edge, tileSide, numberOfRows, numberOfColumns);	
board.populateBoard();
}



public void draw() {
  board.display(); 
	
}
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

  public void populateBoard() {
    for (int j = 0; j<rows; j++) {
      for (int i = 0; i<columns; i++) {
        tile[j][i] = new Tile((rows*columns - ((j*columns) +i))-1);
      }
    }
  }
  
  public void display(){
  for (int j = 0; j<rows; j++) {
      for (int i = 0; i<columns; i++) {
        tile[j][i].display(i,j);
      }
    }
    
    
  }
  
  
}
class Tile{



int value; 	
int WITH = color(255);
int BLACK = color(0);

Tile(int value ) {
	this.value = value;
}

public void display(int x, int y , int len) {
//if (this.value) {
//	fill(WITH);}
//	else 
//		{fill(BLACK);}
	rect(x, y, len, len);
}


public void display(int i, int j) {

  text(this.value, i*50+50, j*50+50 );
}



}
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "myProcessingGame" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
