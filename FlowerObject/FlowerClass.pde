class Flower{
  
//Variables
  float r;          //radius of flower petal
  int numPetals;    //number of petals
  float x;          //x coordinat of center of flower
  float y;          //y coordinat of center of flower
  int petalColor;   //hexadecimal number of color of petals
  float speedx;     //speed in horizontal direction
  float speedy;     //speed in vertical direction
  
  //defining a flower
Flower(float temp_r, int temp_numPetals, float temp_x, float temp_y, int temp_petalColor, float temp_speedx, float temp_speedy){
 r = temp_r;
 numPetals = temp_numPetals;
 x = temp_x;
 y = temp_y;
 petalColor = temp_petalColor;
 speedx = temp_speedx;
 speedy = temp_speedy;
}

  //making flower change direction(bounce) when reaching the edges of the screen
void bounce(){ 
  if(x >= width - r || x <= 0 + r){
    speedx = -speedx;
  }
  if(y >= height - r || y <= 0 + r){
    speedy = -speedy;
  }
}

  //making x and y move in a given speed
void move(){ 
x += speedx;
y += speedy;
}

  //is basicly the old flower function, describing the flower structure
void display(){ 
  float ballX;
  float ballY;
  
  fill(petalColor); //color of petals
  for (float i=0;i<PI*2;i+=2*PI/numPetals) { // looping the petals (defining i ; limiting i ; number of petals)
  ballX = x + r*cos(i);     //petals?????
  ballY = y + r*sin(i);     //petals?????
  ellipse(ballX,ballY,r,r); //petals
  }
  
  fill(200,0,0);             //color of middle
  ellipse(x,y,r*1.2,r*1.2);  //middle
}
}
