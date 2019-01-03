class fred{
  
  //variables
  float x;    //x value of fred
  float y;    //y value of fred
  float wh;   //width and height of fred
  int baseC;      //color of fred
  float speedx;   //x speed of fred
  float speedy;   //y speed of fred
  
  fred(float temp_x , float temp_y , float temp_wh , int temp_baseC , float temp_speedx, float temp_speedy){
    x = temp_x;
    y = temp_y;
    wh = temp_wh;
    baseC = temp_baseC;
    speedx = temp_speedx;
    speedy = temp_speedy;
  }
  
  //the difinition of the ball fred
  void display(){
     noStroke();  
     ellipse(x,y,wh,wh);//the ball
  }
  
  //making fred move
  void move(){
     x+=speedx;//the speed in X direction
     y+=speedy;//the speed in Y direction
  }
  
  //making fred change direction if he hits the sides or the bar
  void bounce(){
     int startover = 50; //where fred will startover on the y axis
    
    //Movement of the ball (fred)
     if(x>width-wh/2){//when the ball is reaching the right edge with its side (width minus the radius of the ball)..
          speedx=-speedx;//.. then the direction will turn.
      }
      
     if(x<0+wh/2){//when the ball reaches the left edge with its side (0 plus the radius of the ball)..
          speedx=-speedx;//.. then the direction will turn.
      }
  
     if(y<0+wh/2){//when the ball reaches the top with its side (0 plus the radius of the ball)..
          speedy=-speedy;//.. then the direction will turn.
      }  
  
     if(y>height+wh/10){//when the ball is beneath the bottom + 1 (to allow the count to minus a point)..
        y=startover;//.. then it will start over
      }
  }

  void bouncebar(){
     //when ball reaches the bar
     if(((y + wh/2) < (rY + rH*2)) && ((y + wh/2) > rY) && (x < mouseX + rW) && (x > mouseX)){//defines the area within the bar, and where on the ball it should collide with the bar
        speedy=-speedy; //when reaching the bar it will turn its direction
     }
  }
  
  void score(){
   int minus= -1;
     if(((y + wh/2) < (rY + rH*2)) && ((y + wh/2) > rY) && (x < mouseX + rW) && (x > mouseX)){//when hitting the bar..
       score+=point;//you will get a point
     }
       else if(y>height){//if the ball reaches beneath the bottom line..
          score+=minus;//.. then the score will take a point.
       }
  }
}
