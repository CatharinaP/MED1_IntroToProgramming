fred[] Fred = new fred[2];

//Score feature
int score=0;
int point=1;
    
//the bar
int rX=400; //x-coordinat of the bar
int rY=550; //y-coordinat of the bar
int rW=100; //width of bar
int rH=10;  //height of bar

void setup(){
  size(800,600);
  
  float x = 0;
  float y = 0;
  float wh = 60;
  int baseC = (255);
  float speedx = 5;
  float speedy = 5;
  
  for(int i = 0; i < Fred.length; i++){ //
    Fred[i] = new fred(x+random(10,width-10),y+random(10,height-10),wh+random(10,30),baseC,speedx+random(-3,3),speedy+random(-3,3));
  }

}

void draw(){
  frameRate(60);
  background(#678E88); 
  
  for(int i = 0; i < Fred.length; i++){
   Fred[i].display();
   Fred[i].move();
   Fred[i].bounce();
   Fred[i].bouncebar();
   Fred[i].score();
  }
  
      //Box moves with the mouse
  fill(255,255,255);//white box through the whole game
  rect(mouseX,rY,rW,rH); 
  
     //Score display
  textSize(25);
  text(score, width/2, height/8);//the score is shown in the top middle of the screen
  
  }
