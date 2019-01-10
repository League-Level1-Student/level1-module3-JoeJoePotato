void setup() {
  size(400, 400);
}
int y=350;
int speed=10;
int truckspeed=1;
int oof=300;
int one=0;
int two=0;
int three=0;
int four=0;
boolean isflying=true;
int score=0;

void draw() {
  if (isflying==true) {
    background(0, 0, 0);
    fill(20, 200, 20);
    ellipse(oof, y, 20, 20);
    fill(240, 80, 160);
    rect(one, 300, 40, 25);
    one=one+truckspeed;
    if (one>400) {
      one=(int)random(-70, -40);
    }
    fill(240, 80, 160);
    rect(two, 225, 40, 25);
    two=two+truckspeed;
    if (two>400) {
      two=(int)random(-70, -40);
    }
    fill(240, 80, 160);
    rect(three, 150, 40, 25);
    three=three+truckspeed;
    if (three>400) {
      three=(int)random(-70, -40);
    }
    fill(240, 80, 160);
    rect(four, 75, 40, 25);
    four=four+truckspeed;
    if (four>400) {
      four=(int)random(-70, -40);
    }

    if (oof<0) {
      oof=300;
    } else if (oof>400) {
      oof=300;
    } else if (y<0) {
      newlevel();
      y=350;
    } else if (y>400) {
      y=350;
    }


    if (oof<=one+20 && oof>=one-20) {
      if (y<=312 && y>=288) {
        isflying=false;
      }
    }
    if (oof<=two+20 && oof>=two-20) {
      if (y<=237 && y>=213) {
        isflying=false;
      }
    }
    if (oof<=three+20 && oof>=three-20) {
      if (y<=162 && y>=138) {
        isflying=false;
      }
    }
    if (oof<=four+20 && oof>=four-20) {
      if (y<=87 && y>=63) {
        isflying=false;
      }
    }
  }
} 



void newlevel() {
  speed+=1;
  truckspeed+=2;
  oof=300;
  y=350;
  score+=1;
  println(score);
}
void keyPressed() {
  if (key==CODED) {
    if (keyCode==DOWN) {
      y=y+speed;
    } else if (keyCode==UP) {
      y=y-speed;
    } else if (keyCode==RIGHT) {
      oof=oof+speed;
    } else if (keyCode==LEFT) {
      oof=oof-speed;
    }
  }
}