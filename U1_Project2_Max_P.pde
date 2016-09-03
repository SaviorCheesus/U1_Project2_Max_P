/*
Hello fellow human. It apears that you have found my creation. If somehow happen to lack basic computer gaming knowledge,
I will provide you with some basic advice. You will use the WASD keys in a similer fassion to arrow keys to move throughout a 2 dimensional lieu.
*/

Float MoveX = 700.0; //X coodrinate
Float MoveY = 700.0; //Y coordinate
Float Movement = 8.0; //Speed of the character
Float Mode = 0.0; //Level Value
Float colour1 = 255.0; //Obstacle R colour value
Float colour2 = 255.0; //Obstacle G colour value
Float colour3 = 255.0; //Obstacle B colour value
Float colour4 = 0.0; //Background R colour value
Float colour5 = 0.0; //Background G colour value
Float colour6 = 0.0; //Background B colour value
Float Random = 0.0; //Ussed in dilation effect

void setup ()
{
  fullScreen();
  smooth (0); //Turns of antialiasing for a more ATARI like apearence
}

void draw ()
{
  //CONSTANTS
  Float Dilate = Random % 4; //dilation effect
  Random += 1; //Helps in dilation effect
  noStroke();
  background (colour4,colour5,colour6);
  fill (255);
  ellipse (MoveX, MoveY, 20, 20); //Character
  
  fill (colour1,colour2,colour3);
  //GENERAL BLOCKADES
  rect (0,860 + Dilate,1500,200); //Floor
    if (MoveY >= 845)
  {
  MoveY= 845.0;
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
      MoveY + 10 >= 750 && MoveY - 10 <= 710)
    {
      MoveX = 1110.0; // Right  Collision
    }
         if (MoveX >= 1000 && MoveX <= 1100 && 
         MoveY >= 730 && MoveY <= 760)
    {
      MoveY = 730.0; // Top Collision
    }
         if (MoveX >= 1000 && MoveX <= 1100 && 
         MoveY >=770 && MoveY  <= 780)
    {
      MoveY = 780.0; // Bottom Collision
    }
    
    //Platform II
    rect (750 - Dilate, 650 - Dilate ,100 + (Dilate * 2),20 + (Dilate * 2));
    if (MoveX +10 >= 750 && MoveX -10 <= 760 && 
    MoveY + 10 >= 650 && MoveY - 10 <= 670)
    {
      MoveX = 740.0; // Left Collision
    }
      if (MoveX + 10 >= 860 && MoveX <= 860 && 
      MoveY >= 650 && MoveY <= 660)
    {
      MoveX = 860.0; // Right  Collision
    }
      if (MoveX >= 750 && MoveX <= 850 && 
      MoveY >= 630 && MoveY <= 660)
    {
      MoveY = 630.0; // Top Collision
    }
      if (MoveX >= 750 && MoveX <= 850 && 
      MoveY >=670 && MoveY <= 680)
    {
      MoveY = 680.0; // Bottom Collision
    }
    
    //Platform III
        rect (500 - Dilate, 550 - Dilate ,100 + (Dilate * 2),20 + (Dilate * 2));
    if (MoveX +10 >= 500 && MoveX -10 <= 510 && 
    MoveY + 10 >= 550 && MoveY - 10 <= 570)
    {
      MoveX = 490.0; // Left Collision
    }
      if (MoveX + 10 >= 610 && MoveX <= 610 && 
      MoveY >= 550 && MoveY <= 560)
    {
      MoveX = 610.0; // Right  Collision
    }
      if (MoveX >= 500 && MoveX <= 600 && 
      MoveY >= 530 && MoveY <= 560)
    {
      MoveY = 530.0; // Top Collision
    }
      if (MoveX >= 500 && MoveX <= 600 && 
      MoveY >=570 && MoveY <= 580)
    {
      MoveY = 580.0; // Bottom Collision
    }
    
    //Platform IV
        rect (250 - Dilate, 450 - Dilate ,100 + (Dilate * 2),20 + (Dilate * 2));
    if (MoveX +10 >= 500 && MoveX -10 <= 510 && 
    MoveY + 10 >= 450 && MoveY - 10 <= 470)
    {
      MoveX = 490.0; // Left Collision
    }
      if (MoveX + 10 >= 360 && MoveX <= 360 && 
      MoveY >= 450 && MoveY <= 460)
    {
      MoveX = 510.0; // Right  Collision
    }
      if (MoveX >= 250 && MoveX <= 350 && 
      MoveY >= 430 && MoveY <= 460)
    {
      MoveY = 430.0; // Top Collision
    }
      if (MoveX >= 250 && MoveX <= 350 && 
      MoveY >=470 && MoveY <= 480)
    {
      MoveY = 480.0; // Bottom Collision
    }
    
    //Platform V
        rect (0 - Dilate, 350 - Dilate ,200 + (Dilate * 2),20 + (Dilate * 2));

      if (MoveX + 10 >= 110 && MoveX <= 210 && 
      MoveY >= 350 && MoveY <= 360)
    {
      MoveX = 210.0; // Right  Collision
    }
      if (MoveX >= 0 && MoveX <= 200 && 
      MoveY >= 330 && MoveY <= 360)
    {
      MoveY = 330.0; // Top Collision
    }
      if (MoveX >= 0 && MoveX <= 200 && 
      MoveY >=370 && MoveY <= 380)
    {
      MoveY = 380.0; // Bottom Collision
    }
    
    
    rect (80 - Dilate,80 - Dilate,80  + (Dilate * 2),80  + (Dilate * 2));
    if (MoveX <= 160 && MoveX >= 80 && MoveY >= 80 && MoveY <= 160)
    {
      Mode = 1.0;
    }
  }
  
  //Level 1
  
  if (Mode == 1.0)
  {
    // Diagonal Platform I
    rect (250 - Dilate, 0 - Dilate ,20 + (Dilate * 2), 800 + (Dilate * 2));
    if (MoveX  >= 250 && MoveX <= 50 && 
    MoveY  >= 740 && MoveY <= 750)
    {
      MoveX = 490.0; // Left Collision
    }
    if (MoveX >= 260 && MoveX <= 280 && 
    MoveY >= 0 && MoveY <= 800)
    {
      MoveX = 280.0; // Right  Collision
    }

    
    //Horizontal Platform I
    rect (250 - Dilate, 750 - Dilate ,250 + (Dilate * 2),20 + (Dilate * 2));
    if (MoveX  >= 490 && MoveX <= 500 && 
    MoveY >= 750 && MoveY <= 760)
    {
      MoveX = 510.0; // Right  Collision
    }
      if (MoveX >= 250 && MoveX <= 500 && 
      MoveY >=730 && MoveY <= 740)
    {
      MoveY = 730.0; // Top Collision
    }
      if (MoveX >= 250 && MoveX <= 500 && 
      MoveY >=770 && MoveY <= 780)
    {
      MoveY = 780.0; // Bottom Collision
    }

        //Horizontal Platform II
    rect (500 - Dilate, 650 - Dilate ,250 + (Dilate * 2),20 + (Dilate * 2));
    if (MoveX  >= 500 && MoveX <= 510 && 
    MoveY >= 650 && MoveY <= 660)
    {
      MoveX = 490.0; // Left  Collision
    }
      if (MoveX >= 500 && MoveX <= 750 && 
      MoveY >=630 && MoveY <= 640)
    {
      MoveY = 630.0; // Top Collision
    }
      if (MoveX >= 500 && MoveX <= 750 && 
      MoveY >=670 && MoveY <= 680)
    {
      MoveY = 680.0; // Bottom Collision
    }
    
    //Horizontal Platform III
    rect (250 - Dilate, 550 - Dilate ,250 + (Dilate * 2),20 + (Dilate * 2));
    if (MoveX >= 490 && MoveX <= 500 && 
    MoveY >= 550 && MoveY <= 560)
    {
      MoveX = 510.0; // Right  Collision
    }
      if (MoveX >= 250 && MoveX <= 500 && 
      MoveY >=530 && MoveY <= 540)
    {
      MoveY = 530.0; // Top Collision
    }
      if (MoveX >= 250 && MoveX <= 500 && 
      MoveY >=570 && MoveY <= 580)
    {
      MoveY = 580.0; // Bottom Collision
    }
    
    //Horizontal Platform IV
    rect (500 - Dilate, 450 - Dilate ,250 + (Dilate * 2),20 + (Dilate * 2));
    if (MoveX  >= 500 && MoveX <= 510 && 
    MoveY >= 450 && MoveY <= 460)
    {
      MoveX = 490.0; // Left  Collision
    }
      if (MoveX >= 500 && MoveX <= 750 && 
      MoveY >=430 && MoveY <= 440)
    {
      MoveY = 430.0; // Top Collision
    }
      if (MoveX >= 500 && MoveX <= 750 && 
      MoveY >=470 && MoveY <= 480)
    {
      MoveY = 480.0; // Bottom Collision
    }
    //Horizontal Platform V
    rect (250 - Dilate, 350 - Dilate ,250 + (Dilate * 2),20 + (Dilate * 2));
    if (MoveX >= 490 && MoveX <= 500 && 
    MoveY >= 350 && MoveY <= 360)
    {
      MoveX = 510.0; // Right  Collision
    }
      if (MoveX >= 250 && MoveX <= 500 && 
      MoveY >=330 && MoveY <= 340)
    {
      MoveY = 330.0; // Top Collision
    }
      if (MoveX >= 250 && MoveX <= 500 && 
      MoveY >=370 && MoveY <= 380)
    {
      MoveY = 380.0; // Bottom Collision
    }
    
    //Horizontal Platform VI
    rect (500 - Dilate, 250 - Dilate ,250 + (Dilate * 2),20 + (Dilate * 2));
    if (MoveX  >= 500 && MoveX <= 510 && 
    MoveY >= 250 && MoveY <= 260)
    {
      MoveX = 490.0; // Left  Collision
    }
      if (MoveX >= 500 && MoveX <= 750 && 
      MoveY >=230 && MoveY <= 240)
    {
      MoveY = 230.0; // Top Collision
    }
      if (MoveX >= 500 && MoveX <= 750 && 
      MoveY >=270 && MoveY <= 280)
    {
      MoveY = 280.0; // Bottom Collision
    }
    
    // Diagonal Platform II
    rect (730 - Dilate, 100 - Dilate ,20 + (Dilate * 2), 800 + (Dilate * 2));
    if (MoveX >= 720 && MoveX  <= 730 && 
    MoveY >= 100 && MoveY <= 900)
    {
      MoveX = 720.0; // Left Collision
    }
      if (MoveX >= 750 && MoveX <= 760 && 
      MoveY >= 100 && MoveY <= 900)
    {
      MoveX = 760.0; // Right  Collision
    }
      if (MoveX >= 720 && MoveX <= 760 && 
      MoveY >=90 && MoveY <= 110)
    {
      MoveY = 90.0; // Top Collision
    }
    
    //Horizontal Platform VII
    rect (750 - Dilate, 250 - Dilate ,250 + (Dilate * 2),20 + (Dilate * 2));
    if (MoveX  >= 750 && MoveX <= 1000 && 
    MoveY >= 250 && MoveY <= 260)
    {
      MoveX = 1000.0; // Right  Collision
    }
      if (MoveX >= 750 && MoveX <= 1000 && 
      MoveY >=230 && MoveY <= 240)
    {
      MoveY = 230.0; // Top Collision
    }
      if (MoveX >= 750 && MoveX <= 1000 && 
      MoveY >=270 && MoveY <= 280)
    {
      MoveY = 280.0; // Bottom Collision
    }
    
    //Horizontal Platform VIII
    rect (1000 - Dilate, 350 - Dilate ,220 + (Dilate * 2),20 + (Dilate * 2));
    if (MoveX >= 1000 && MoveX <= 1010 && 
    MoveY >= 350 && MoveY <= 360)
    {
      MoveX = 1000.0; // Left  Collision
    }
      if (MoveX >= 1000 && MoveX <= 1220 && 
      MoveY >=330 && MoveY <= 340)
    {
      MoveY = 330.0; // Top Collision
    }
      if (MoveX >= 1000 && MoveX <= 1220 && 
      MoveY >=370 && MoveY <= 380)
    {
      MoveY = 380.0; // Bottom Collision
    }
    
    //Horizontal Platform IX
    rect (750 - Dilate, 450 - Dilate ,250 + (Dilate * 2),20 + (Dilate * 2));
    if (MoveX  >= 750 && MoveX <= 1000 && 
    MoveY >= 450 && MoveY <= 460)
    {
      MoveX = 1000.0; // Right  Collision
    }
      if (MoveX >= 750 && MoveX <= 1000 && 
      MoveY >=430 && MoveY <= 440)
    {
      MoveY = 430.0; // Top Collision
    }
      if (MoveX >= 750 && MoveX <= 1000 && 
      MoveY >=470 && MoveY <= 480)
    {
      MoveY = 480.0; // Bottom Collision
    }
    
    //Horizontal Platform X
    rect (1000 - Dilate, 550 - Dilate ,220 + (Dilate * 2),20 + (Dilate * 2));
    if (MoveX >= 1000 && MoveX <= 1010 && 
    MoveY >= 550 && MoveY <= 560)
    {
      MoveX = 1000.0; // Left  Collision
    }
      if (MoveX >= 1000 && MoveX <= 1220 && 
      MoveY >=530 && MoveY <= 540)
    {
      MoveY = 530.0; // Top Collision
    }
      if (MoveX >= 1000 && MoveX <= 1220 && 
      MoveY >=570 && MoveY <= 580)
    {
      MoveY = 580.0; // Bottom Collision
    }
    
    //Horizontal Platform XI
    rect (750 - Dilate, 650 - Dilate ,250 + (Dilate * 2),20 + (Dilate * 2));
    if (MoveX  >= 750 && MoveX <= 1000 && 
    MoveY >= 650 && MoveY <= 660)
    {
      MoveX = 1000.0; // Right  Collision
    }
      if (MoveX >= 750 && MoveX <= 1000 && 
      MoveY >=630 && MoveY <= 640)
    {
      MoveY = 630.0; // Top Collision
    }
      if (MoveX >= 750 && MoveX <= 1000 && 
      MoveY >=670 && MoveY <= 680)
    {
      MoveY = 680.0; // Bottom Collision
    }
    
        
    //Horizontal Platform XII
    rect (1000 - Dilate, 750 - Dilate ,220 + (Dilate * 2),20 + (Dilate * 2));
    if (MoveX >= 1000 && MoveX <= 1010 && 
    MoveY >= 750 && MoveY <= 760)
    {
      MoveX = 1000.0; // Left  Collision
    }
      if (MoveX >= 1000 && MoveX <= 1220 && 
      MoveY >=730 && MoveY <= 740)
    {
      MoveY = 730.0; // Top Collision
    }
      if (MoveX >= 1000 && MoveX <= 1220 && 
      MoveY >=770 && MoveY <= 780)
    {
      MoveY = 780.0; // Bottom Collision
    }
    
    // Diagonal Platform III
    rect (1210 - Dilate, 0 - Dilate ,20 + (Dilate * 2), 800 + (Dilate * 2));
    if (MoveX >= 1200 && MoveX  <= 1210 && 
    MoveY >= 0 && MoveY <= 800)
    {
      MoveX = 1200.0; // Left Collision
    }
      if (MoveX >= 1220 && MoveX <= 1240 && 
      MoveY >= 0 && MoveY <= 800)
    {
      MoveX = 1240.0; // Right  Collision
    }
      if (MoveX >= 1200 && MoveX <= 1240 && 
      MoveY >=800 && MoveY <= 810)
    {
      MoveY = 810.0; // Bottom Collision
    }
    colour1 = 0.0;
    colour2 = 0.0;
    colour3 = 0.0;
    colour4 = 200.0;
    colour5 = 90.0;
    colour6 = 0.0;
    
    rect (1280 - Dilate, 80 - Dilate, 80 + (Dilate * 2), 80 + (Dilate * 2));
    if (MoveX <= 1360 && MoveX >= 1280 && MoveY >= 80 && MoveY <= 160)
    {
      Mode = 2.0;
    }
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
    MoveY += 8; //Gravity
  }
  
  if (keyPressed == true && key == 'a' && key == 'w')
  {
    MoveX -= Movement;
    MoveY -= Movement * 1.5;
  }
  
  if (keyPressed == true && key == 'a')
  {
    MoveX -= Movement; //Moves right
  }
  
    if (keyPressed == true && key == 'd')
  {
 
    MoveX += Movement; //Moves right
  }
      if (keyPressed == true && key == 's')
  {
 
    MoveY += Movement; //Moves Down
  }
}