Mblack e;

class Mblack {
  float bX;
  float bY;
  float bL;
  float bB;
  float bD;
  float bN;
  float x;
  float y;
  float yDir;
  float r;
  float bC;




  Mblack(float x2, float y2, float l2, float b2) {
    bX=x2;
    bY=y2;
    bL=l2;
    bB=b2;
    //bC=c2;
    //bD=d2;
    //bN=n2;
  }


  void display() {
    //fill(random(255),0,0); 
    fill(0);
    rectMode(CORNER); 
    rect(bX, bY, bL, bB);

    fill(0); 

    //rect(5, 20, bL, bB);
    //rect(305, 260, bL, bB);
    //rect(105, 100, bL, bB);
    //rect(305, 60, bL, bB);
    //rect(505, 20, bL, bB);
    //rect(705, 180, bL, bB);
    //rect(405, 180, bL, bB);
    //rect(605, 300, bL, bB);
    //rect(5, 300, bL, bB);
    //rect(105, 180, bL, bB);
  }
  //void contactB() {
  //  if ((x+r > bX) &&
  //    (y+r > bY) &&
  //    (x-r < bX+bL) &&
  //    (y-r < bY+bB))
  //  { 
  //    yDir=-abs(yDir);
  //    score=score+1;
  //  }
  //}



  boolean bcollide (float xBall, float yBall, int radusBallHalf) {
    if ((xBall+radusBallHalf > bX) &&
      (yBall+radusBallHalf > bY) &&
      (xBall-radusBallHalf < bX+bL) &&
      (yBall-radusBallHalf < bY+bB))
    {
      return (true);
    } else {
      return (false);
    }
  } 

  boolean bscore (float xBall, float yBall, int radusBallHalf) {
    if ((xBall+radusBallHalf > bX) &&
      (yBall+radusBallHalf > bY) &&
      (xBall-radusBallHalf < bX+bL) &&
      (yBall-radusBallHalf < bY+bB))
    {
      return (true);
    } else {
      return (false);
    }
  }
}
