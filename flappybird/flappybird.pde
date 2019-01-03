void setup() {
  size(1000, 500);
}
int x=100;
int y=250;
int pipe=1050;
int pipeheight=250;
int velocity=0;
boolean isflying=true;
int score=0;
void draw() {
  if (isflying==true) {
    background(41, 42, 43); 
   
    int gravity=1;
    velocity=velocity+gravity;
    if (mousePressed) {
      velocity=-4;
    }

    y=y+velocity;
     fill(29, 31, 37);
    stroke(29, 31, 37);
    ellipse(x, y, 50, 50);

    fill(59, 21, 78);
    rect(pipe, 0, 25, pipeheight);
    int pipespeed=6;
    pipe=pipe-pipespeed;
    if (pipe<0) {
      teleport();
    }
    if (x<=pipe+12 && x>=pipe-12) {
      if (y<=pipeheight) {
        isflying=false;
      }
    }
    if (y>=500) {
      isflying=false;
    }
  }
}

void teleport() {
  pipe=1050;
  pipeheight=(int) random(100, 400);
  score+=1;
  printscore();
} 
void printscore(){
println(score);
}