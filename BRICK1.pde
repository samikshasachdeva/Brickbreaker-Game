Mbric c;

class Mbric {
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




  Mbric ( float x2, float y2, float l2, float b2) {
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
    fill(200);
    rectMode(CORNER); 
    rect(bX, bY, bL, bB);

    fill(0); 
    //a=5;
    //b=20;
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

  void contactB() {
    if ((x+r > bX) &&
      (y+r > bY) &&
      (x-r < bX+bL) &&
      (y-r < bY+bB))
    { 
      yDir=-abs(yDir);
      score=score+1;
    }
  }



  boolean collide (float xBall, float yBall, int radusBallHalf) {
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

  boolean score (float xBall, float yBall, int radusBallHalf) {
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
    // func
    //Mbric ( float x2, float y2, float l2, float b2, float d2, float n2) {
    //  ArrayList<Mbric> particles = new ArrayList<Mbric>();
    //  Mbric part = particles.get(0);
    //  //part.display();
    //  //int total = particles.size();
    //}

    //for (int i = 0; i < particles.size(); i++) {
    //  Mbric part = particles.get(i);
    //  part.display();
    //}
    //if (particles.size()>100) {
    //  particles.remove(0);
    //}
    //Mbric part = particles.get(0);

    //void  finished() {
    //  if ((bX-35>x && y+ 20> bY-35)) {
    //    yDir=-abs(yDir);
    //  }

    //  if (bX-35>x && y+ 20> bY-35) {
    //    yDir=-abs(yDir);
    //    //xDir= -abs(xDir);
    //  }
    //for (int i=0; i<bN; i++) {
    //  for (int j=0; j< height-300; j=j+45) {
    //    //fill(random)
    //    //FOR LOOP
    //    rect(bX+(i*(bD+bL)), bY+j, bL, bB);
    //  }
    //}

    //  boolean collide (float xB, float yB, int rB) {
    //    if ((xB+rB>bX+17) &&
    //      ((yB+rB>bY-17) &&
    //      (x-rB < bX+bL) &&
    //      (y-rB< bY+bB)))
    //    {
    //      return (true);
    //    } else {
    //      return (false);
    //    }
    //  } // func
    //} // clas



    //void finished() {
    //  for (int i = particles.size() - 1; i >= 0; i--) {
    //    Mbric part = particles.get(i);
    //    if (part.finished()) {
    //      particles.remove(i);
    //    }
    //  }
  }
}
