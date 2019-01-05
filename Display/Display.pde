void setup(){
  size(1000,496);
  background(169,169,169);
  
  
}

boolean keyLeft = false, keyRight = false, keyForward = false, keyBackward = false, keyStop = false;

Field field = new Field(300,6);

void draw(){
  //Blue is always on the left, red is on the right
  background(169,169,169);
  
  //Spaceships
  fill(100,100,100);//bases
  rect(488-144-1,248-40-1,144,80);
  rect(488+24-1,248-40-1,144,80);
  fill(0,0,255);//blue label
  rect(488-116-1,248-20-1,116,40);
  fill(255,0,0);//red label
  rect(488+24-1,248-20-1,116,40);
  
  //Rockets
  fill(0,0,255);//Blue Rockets
  quad(320-1,12,380-1,12,  334+32-1,44-1,334-1,44-1);
  quad(320-1,496-12-1,380-1,496-12-1,  334+32-1,496-44-1,334-1,496-44-1);
  
  fill(255,0,0);//Red Rockets
  quad(1000-380-1,12-1,1000-320-1,12-1,  1000-334-1,44-1,1000-334-32-1,44-1);
  quad(1000-380-1,496-12-1,1000-320-1,496-12-1,  1000-334-1,496-44-1,1000-334-32-1,496-44-1);
  
  fill(255,255,255);//Rocket Bases
  rect(320-1,0,60,12);
  rect(320-1,496-12-1,60,12);
  rect(1000-380-1,0,60,12);
  rect(1000-380-1,496-12-1,60,12);
  
  //Tape Markers
  fill(0,0,255);
  rect(0,248-140-1,74-1,4);
  rect(0,496-108-4-1,74-1,4);
  rect(74-4-1,108-1,4,40);
  rect(74-4-1,496-108-40-1,4,40);
  rect(488-1,0,4,496); //Center Marker
  
  fill(255,0,0);
  rect(1000-74,248-140-1,74-1,4);
  rect(1000-74,496-108-4-1,74-1,4);
  rect(1000-74,108-1,4,40);
  rect(1000-74,496-108-40-1,4,40);
  rect(1000-488-1,0,4,496); //Center Marker
  
  fill(200,200,200);//add white tape strips here
  rect(488-20-1,248-40-40-1,4,40);//blue spaceship
  rect(488-52-1,248-40-40-1,4,40);
  rect(488-88-1,248-40-40-1,4,40);
  rect(488-+20-1,248+40-1,4,40);
  rect(488-52-1,248+40-1,4,40);
  rect(488-88-1,248+40-1,4,40);
  
  rect(488+24+20-1,248-40-40-1,4,40);//red spaceship
  rect(488+24+52-1,248-40-40-1,4,40);
  rect(488+24+88-1,248-40-40-1,4,40);  
  rect(488+24+20-1,248+40-1,4,40);
  rect(488+24+52-1,248+40-1,4,40);
  rect(488+24+88-1,248+40-1,4,40);
  
  rect(488-144-40-1,248-20-1,40,4);
  rect(488-144-40-1,248-20+40-4-1,40,4);
  rect(488+24+144-1,248-20-1,40,4);
  rect(488+24+144-1,248-20+40-4-1,40,4);
  
  //Habitats
  fill(0,0,255);
  rect(0,148-1,74,64);
  rect(0,148+64-1,74,72);
  rect(0,148+64+72-1,74,64);
  rect(74-1,132-1,152-74,496-132-132-1);
  
  fill(255,0,0);
  rect(1000-74-1,148-1,74,64);
  rect(1000-74-1,148+64-1,74,72);
  rect(1000-74-1,148+64+72-1,74,64);
  rect(1000-152-1,132-1,152-74,496-132-132-1);
  
  
  
  //Movement Calculations
  if (keyLeft) field.players[0].turnLeft();
  if (keyRight) field.players[0].turnRight();
  if (keyForward) field.players[0].changeMoving(1);
  if (keyBackward) field.players[0].changeMoving(-1);
  if (keyStop) field.players[0].changeMoving(0);
  field.players[0].move();
  field.show();
}




//Movement management
void keyPressed(){
  if(keyCode == LEFT) keyLeft = true;
  if(keyCode == RIGHT) keyRight = true;
  if(keyCode == UP) keyForward = true;
  if(keyCode == DOWN) keyBackward = true;
  if(keyCode == CONTROL) keyStop = true;
}
void keyReleased(){
  if(keyCode == LEFT) keyLeft = false;
  if(keyCode == RIGHT) keyRight = false;
  if(keyCode == UP) keyForward = false;
  if(keyCode == DOWN) keyBackward = false;
  if(keyCode == CONTROL) keyStop = false;
}
