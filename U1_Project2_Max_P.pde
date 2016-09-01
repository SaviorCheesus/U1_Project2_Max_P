Float MoveX = 700.0;
Float MoveY = 700.0;
Float Movement = 5.0;
Float Direction;
Float Mode = 0.0;
Float colour1 = 0.0;
Float colour2 = 0.0; 
Float colour3 = 0.0;
Float Random = 0.0;
void setup ()
{
  fullScreen();
  smooth (0);
}

void draw ()
{
  Float Dilate = Random % 4;
  Random += 1;
  //GENERAL BLOCKADES
  noStroke();
  fill (255);
  background (colour1,colour2,colour3);
  
  rect (0,860 + Dilate,1500,200); //Floor
    if (MoveY + 10 >= 860)
  {
  MoveY= 850.0;
  }
  
  rect (0,0 ,1500,40+ Dilate); //Ceiling
     if (MoveY - 10 <= 45)
  {
  MoveY= 55.0;
  }
  
  rect (0,0,40 + Dilate,900); //Left Wall
     if (MoveX - 10 <= 45)
  {
  MoveX = 55.0;
  }
  
  rect (1400 - Dilate,0,40 + Dilate,900); //Right Wall
  if (MoveX+ 10 >= 1395)
  {
  MoveX= 1385.0;
  }
  
  ellipse (MoveX, MoveY, 20, 20); //Character
  
  if (Mode == 0.0)
  {

  }
  

  //CONTROLS
  if (keyPressed == true && key == 'w')
  {
    MoveY -= Movement*1.2; //Moves up
  }
  else
  {
    MoveY += 8; //Gravity
  }
  
    if (keyPressed == true && key == 'a' && key == 'w')
  {
    MoveX -= Movement;
    MoveY -= Movement * 1.5;
  }
  
  if (keyPressed == true && key == 'a')
  {
    MoveX -= Movement;
  }
  
    if (keyPressed == true && key == 'd')
  {
 
    MoveX += Movement;
  }
}