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

int boardWidth = 100;
int edge = 5;
int tileWidth = 80;
int tileHeight = 80;
int numberOfRows = 8;
int numberOfColumns = 8;

public void settings() {
size((numberOfColumns*tileWidth)+(2*edge),(numberOfRows*tileHeight)+(2*edge));
	
}



public void draw() {
	
}
class Board {


Board()
{}




}
class Tile{



int x; 	
int y;
int hor;
int ver;
boolean isWith;
int WITH = color(255);
int BLACK = color(0);

Tile(int posX, int posY, boolean isWith ) {
	x = posX;
	y = posY;
	hor = 30;
	ver = 30;
}

public void display() {
if (isWith) {
	fill(WITH);}
	else 
		{fill(BLACK);}

	rect(x, y, hor, ver);
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
