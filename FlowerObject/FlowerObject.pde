Flower flower1; //giving the specific object (flower) a name
Flower flower2;
Flower flower3;

void setup(){
  size(800,600);
  background(#43AF76);
  
  //defining the variables needed to create wanted the flower
  float r1 = 60;
  int petals = 5;
  float x = width/2;
  float y = height/2;
  int petalColor = #FFA000;
  float speedx = 5;
  float speedy = 5;
  
  flower1 = new Flower(r1, petals, x, y, petalColor, speedx, speedy);
  flower2 = new Flower(r1-20, petals+3, x+random(-200,200), y+random(-200,200), petalColor*2, speedx, speedy);
  flower3 = new Flower(r1+10, petals-2, x+random(-200,200), y+random(-200,200), petalColor/2, speedx, speedy);
  
}

void draw(){
  background(#43AF76);
  
  //flower 1 (orange)
  flower1.display();
  flower1.move();
  flower1.bounce();
  
  //flower 2 (red)
  flower2.display();
  flower2.move();
  flower2.bounce();
  
  //flower 3 (yellow)
  flower3.display();
  flower3.move();
  flower3.bounce();
  
  //noLoop();
}
