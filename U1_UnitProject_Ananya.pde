PImage star;
int starX[];
int starY[];
int numStars = 100;


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
  background(7000); 
  fill(300,300,50);
  image(star, width/2, height/2);
 
  for(int i=0; i< numStars; i++)
  {
     //Get a dir
     int dir = (int)random(-1,2); //1, 0, 01
     
     
     //Draw
     image(star, starX[i], starY[i]);
     //Move
     starX[i] = starY[i] + (dir * 1);

  }
} 