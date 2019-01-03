void setup(){
size(400,400);
}
int height=350;
int speed=10;
int truckspeed=20;
int oof=300;

void draw(){
background(0,0,0);
fill(20,200,20);
ellipse(oof,height, 20,20);
stopper();
}
void stopper(){

  if(oof<0){
  oof=300;
  }
  else if(oof>400){
  oof=300;
  }
  else if(height<0){
  newlevel();
  height=350;
  }
  else if(height>400){
  height=350;
  }
}
void newlevel(){
speed+=1;
truckspeed+=2;
oof=300;
height=350;
}
void keyPressed(){
if(key==CODED){
if(keyCode==DOWN){
height=height+speed;
}else if(keyCode==UP){
height=height-speed;
}else if(keyCode==RIGHT){
oof=oof+speed;
}else if(keyCode==LEFT){
oof=oof-speed;
}
}
}