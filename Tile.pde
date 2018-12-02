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

  text(this.value, i*side+edgeX, j*side+edgeY );
}



}
