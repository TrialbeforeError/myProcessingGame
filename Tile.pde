class Tile{



int value; 	
color WITH = color(255);
color BLACK = color(0);

Tile(int value ) {
	this.value = value;
}

void display(int x, int y , int len) {
//if (this.value) {
//	fill(WITH);}
//	else 
//		{fill(BLACK);}
	rect(x, y, len, len);
}


void display(int i, int j, int side , int edgeX, int edgeY) {
  rectMode(CENTER);
  if (this.value != 0) {
  fill(100);} else {fill(50);};
  rect((i+0.5)*side+edgeX, (j+0.5)*side+edgeY,side, side);
  
  textSize(side/2);
  textAlign(CENTER);
  fill(200);
  if (this.value != 0) {
  text(this.value, (i+0.5)*side+edgeX, (j+0.65)*side+edgeY );}
  
}



}
