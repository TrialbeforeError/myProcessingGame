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


void display(int i, int j) {

  text(this.value, i*50+50, j*50+50 );
}



}
