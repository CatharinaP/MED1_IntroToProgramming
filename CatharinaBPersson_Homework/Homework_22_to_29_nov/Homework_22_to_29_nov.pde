float theta = 0;
float r = 0;
float radius = 10;
float t = 0; //value for noise function
float R = 10;
float G = 40;
float B = 60; //value of Blue color

void setup(){
size(800,800);

}

void draw(){ //variables inside draw (local variables) will be reset when running again.
  
//Making a spiral, creating 60 circles per second.
  float x = r * cos(theta);
  float y = r * sin(theta);
  float Be = noise(t); //the 
  float Ge = noise(t);
  
  noStroke();
  fill(R,G,B);  
  ellipse(x+width/2, y+height/2, noise(r)*20, noise(r)*20); //the radius of the circles are defined by the noise function * the number that decides the size of the circles.

  theta += 0.05; //bigger theta = fewer circles. 
  r += 0.2; //changing the radius on the spiral (higher number = bigger spiral)
  B += Be; //Bluecolor + the noise function / a number.
  G += Ge;
  

//need to change the size of the circle and the color(to a random blue, using noise) at a given time.

}
