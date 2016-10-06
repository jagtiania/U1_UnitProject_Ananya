PImage star;
int starX[];
int starY[];
int numStars = 2000;
 
 
void setup()
{
  fullScreen();
  star= loadImage("star.png");
 starX = new int[numStars];
 starY = new int[numStars];
 
 
  for(int i=0; i< numStars; i++)
  {
    starX[i] = (int)random(10,width);
    starY[i] = (int)random(10,height);
   
  }
}
 
void draw()
{
  background(50, 100, 255);
  fill(300,300,50);
  image(star, width/2, height/2);
 
  for(int i=0; i< numStars; i++)
  {
     //Get a dir
     int dir = (int)random(-5,3); //1, 0, 01
     
     //Draw
     image(star, starX[i], starY[i]);
     star.resize((int)random(5,7), (int)random(5,7));;
     image(star, 7,9);
     star.resize((int)random(9,11), (int)random(9,11));
 
     
     //Move
     starX[i] = starX[i] + (int)random(-1,1);
     starY[i] = starY[i] + (int)random(-1,1);
  }
}