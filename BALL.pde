Mball a;

class Mball {
  int r;
  float x;
  float y;
  float xspeed=2;
  float yspeed=2;
  float xDir = -2;
  float yDir= -1;

  Mball( int r1, float x1, float y1, float speed1, float speed2) {
    r=r1;
    x=x1;
    y=y1;
    xspeed= speed1;
    yspeed= speed2;
  }


  void display() {
    ellipseMode(RADIUS);
    fill(random(255), random(255), random(255));
    ellipse(x, y, r, r);
  }

  void move() {
    x=x+xspeed* xDir;
    y=y+yspeed* yDir;
  }


  void bounce() {
    if (x>width-r/2) {
      xDir= -xDir;
    } else if ( x<0+r/2) {
      xDir= -xDir;
    }

    if ( y<0+r/2) {
      //yspeed=-yspeed;
      yDir=-yDir;
    }
    //noLoop();
    //if (y>height) {
    //  lives=lives-1;
    //  //xspeed=xspeed+0.1;
    //  //yspeed=yspeed+0.1;
    //}
  }
  void contact() {

    if (x>mouseX-90 && x<mouseX+ 75 && y+ r> 675) {
      yDir=-abs(yDir);
    }
    if (y>height+r) {

      //if (oneSingleBrick.lives( d.lives) ) {
      //  // this needs more attention: when he hits from below, yspeed needs to
      //  // be changed; when from the sides, xspeed
      lives=lives-1;
      noLoop();
      yDir=-yDir;
      text("Click enter to continue playing", 350, 475);



      //if ( keyCode==ENTER) {
      //  //loop();
      //  // lives= lives-1+2;
      //  gamestart=true;
      //  //a.move();
      //  //a.display();
      //  //a.bounce();
      //}
    }
  }


  //  boolean lives (float y) {
  //    if (y>height) {
  //      return (true);
  //    } else {
  //      return (false);
  //    }
  //boolean bounced() {
  //  if ((true)) {
  //    score--;
  //    yDir=-yDir;
  //  }
  //}
}
