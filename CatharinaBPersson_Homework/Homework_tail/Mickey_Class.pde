class Mickey{
  
  PImage mickey; //naming the image
  int x;         //x position of image
  int y;         //y position of image
  int i;         //i is to control the width and height of the picture according to the fading tail
  
  Mickey(){
    mickey = loadImage("Mickey_Mouse_head.png");  //loading the image
  }
 
  void display(int i, int x, int y) {    //show the image with parameters (see description in main code)
  image(mickey,x,y,i,i);                 //(the image, x position, y position, width, height)
  }
  
  
  
  
  
  
  
  
  
}
