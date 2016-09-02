Float MoveX = 700.0;
Float MoveY = 700.0;
Float Movement = 5.0;
Float Direction;
Float Mode = 0.0;
Float colour1 = 255.0;
Float colour2 = 255.0; 
Float colour3 = 255.0;
Float colour4 = 0.0;
Float colour5 = 0.0; 
Float colour6 = 0.0;
Float Random = 0.0;

void setup ()
{
  fullScreen();
  smooth (0);
}

void draw ()
{
  //CONSTANTS
  Float Dilate = Random % 4; //dilation effect
  Random += 1; //Helps in dilation effect
  noStroke();
  background (colour4,colour5,colour6);
  fill (colour1,colour2,colour3);
  ellipse (MoveX, MoveY, 20, 20); //Character
  
  //GENERAL BLOCKADES
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
  
  //LEVELS
  //Level 0
  if (Mode == 0.0)
  {
    //Platform I
    rect (1000 - Dilate, 750 - Dilate ,100 + (Dilate * 2),20 + (Dilate * 2));
    if (MoveX +10 >= 1000 && MoveX -10 <= 1010 && 
    MoveY + 10 >= 750 && MoveY - 10 <= 770)
    {
      MoveX = 990.0; // Left Collision
    }
      if (MoveX + 10 >= 1100 && MoveX <= 1110 && 
      MoveY + 10 >= 750 && MoveY - 10 <= 7710)
    {
      MoveX = 1110.0; // Right  Collision
    }
         if (MoveX >= 1000 && MoveX <= 1100 && 
         MoveY >= 750 && MoveY <= 760)
    {
      MoveY = 730.0; // Top Collision
    }
         if (MoveX >= 1000 && MoveX <= 1100 && 
         MoveY >=770 && MoveY  <= 780)
    {
      MoveY = 790.0; // Bottom Collision
    }
    
    //Platform II
    rect (750 - Dilate, 650 - Dilate ,100 + (Dilate * 2),20 + (Dilate * 2));
    if (MoveX +10 >= 750 && MoveX -10 <= 760 && 
    MoveY + 10 >= 650 && MoveY - 10 <= 670)
    {
      MoveX = 740.0; // Left Collision
    }
      if (MoveX + 10 >= 860 && MoveX <= 860 && 
      MoveY + 10 >= 650 && MoveY - 10 <= 670)
    {
      MoveX = 860.0; // Right  Collision
    }
         if (MoveX >= 750 && MoveX <= 1100 && 
         MoveY +10 >= 740 && MoveY <= 760)
    {
      MoveY = 730.0; // Top Collision
    }
          if (MoveX >= 1000 && MoveX <= 1100 && 
         MoveY >=770 && MoveY -10 <= 780)
    {
      MoveY = 790.0; // Bottom Collision
    }
    
    rect (80 - Dilate,80 - Dilate,80 - Dilate,80 - Dilate);
    if (MoveX <= 160 && MoveX >= 80 && MoveY >= 80 && MoveY <= 160)
    {
      Mode = 1.0;
    }
  }
  
  //Level 1
  
  if (Mode == 1.0)
  {
    if (MoveX <= 1360 && MoveX >= 1280 && MoveY >= 80 && MoveY <= 160)
    {
      Mode = 2.0;
    }
    
    colour1 = 200.0;
    colour2 = 0.0;
    colour3 = 100.0;
    colour4 = 0.0;
    colour5 = 0.0;
    colour6 = 200.0;
  }
  
    if (Mode == 2.0)
  {
    if (MoveX <= 1360 && MoveX >= 1280 && MoveY >= 80 && MoveY <= 160)
    {
      Mode = 2.0;
    }
    
    colour1 = 150.0;
    colour2 = 0.0;
    colour3 = 150.0;
    colour4 = 0.0;
    colour5 = 0.0;
    colour6 = 0.0;
  }

  //CONTROLS
  if (keyPressed == true && key == 'w')
  {
    MoveY -= Movement*1.2; //Moves up 
  }
  else
  {
     // MoveY += 8; //Gravity
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
      if (keyPressed == true && key == 's')
  {
 
    MoveY += Movement;
  }
}