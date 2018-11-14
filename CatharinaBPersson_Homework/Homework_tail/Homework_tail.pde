Mickey Mickey;   //calling the class Mickey
int num = 50;    //value of tail length
int[] x = new int[num];  //arranging the number of num as an array
int[] y = new int[num];
int indexPosition = 0;   //is the start position (of the array)

void setup() { 
  size(500, 500);
Mickey=new Mickey(); //calling the picture of Mickey
}

void draw() {
  background(255);

indexPosition += 1;       //by adding 1 to the start position of the array, it goes to the next spot in the array

if(indexPosition == num){    //when reaching the end of the array (num)..
   indexPosition = 0;        //.. then start at the beginning of array again (0)
}

x[indexPosition] = (mouseX-num/2);    //setting x position of the current spot in the array to follow mouseX
y[indexPosition] = (mouseY-num/2);    //setting y position of the current spot in the array to follow mouseY
                                      // -num/2 is to place the mouse in the middle of the picture in both x and y axis

for(int i = 0; i < num-1; i++){             //i should be 0 and not indexPosition, as it will not work in that case
  int pos = (indexPosition + i) % (num);    //put paratethese around the valuables that are connected, num does not need it as it is one valuable.
                                            //% (module) set the beforewritten back to the beginning (num)
 Mickey.display(i, x[pos], y[pos]);    //displaying the Mickey, with the parameters to follow the for loop (i) and the mouse (x and y pos)
}

}
