class Tile{



int value; 	
color WITH = color(255);
color BLACK = color(0);

Tile(int value ) {
	this.value = value;
}


void display(int i, int j, int side , int edgeX, int edgeY) {
  rectMode(CENTER);
  if (this.value == 0) {fill(50);} else if (this.value%2 == 0) {fill(200,100,0);} else
  {fill(200,0,0);};
  rect((i+0.5)*side+edgeX, (j+0.5)*side+edgeY,side, side);
  
  textSize(side/2);
  textAlign(CENTER);
  fill(255);
  if (this.value != 0) {
  text(this.value, (i+0.5)*side+edgeX, (j+0.65)*side+edgeY );}
  
}



}
