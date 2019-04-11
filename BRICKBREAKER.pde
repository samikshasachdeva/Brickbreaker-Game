int score=0;                   //Inital score
int lives=3;                   //Number of lives you start with
boolean gamestart=false;   
ArrayList bric;
ArrayList black;


void setup() {
  size (700, 700);
  background(255);
  smooth(); 
  fill(255, 100, 0);
  noStroke();
  ellipseMode(CENTER);
  noStroke();

  a= new Mball ( 20, random(250, 550), random(450, 550), 3, 3);

  fill(102);
  noStroke();
  b= new Mbar (100, 680, 180, 40 );

  bric= new ArrayList(); 
  for ( int x=1; x<= 10; x++) {
    for (int y=1; y<=8; y++) {
      bric.add(new Mbric(x*100-95, y*40-20, 85, 35));
    } // for

    d= new Mscore( 0, 3);
  }  // c = new Mbric (6, 0, 35, 35, 15, 13

  black= new ArrayList();
  for ( int x=1; x<=10; x=x+2) {
    for (int y=1; y<=7; y=y+3) {
      black.add(new Mblack( 5+100*x, y*40-20, 85, 35));
    }
  }
}
//for (int i=0; i<bN; i++) {
//    for (int j=0; j< height-300; j=j+45) {
//      //fill(random)
//      //FOR LOOP
//      rect(bX+(i*(bD+bL)), bY+j, bL, bB);
//    }

void draw() {
  background(255);
  gamestart=false;
  textAlign(CENTER);
  textSize(100);
  text("B O U N C E", 350, 250);
  textSize(30);
  text("Press enter to start", 350, 325);
  text("Move mouse horizontally to control the", 350, 375);
  text("paddle and to bounce the ball", 350, 425);
  

  //if (gamestart) {
  if (keyCode==ENTER) {
    background(255);
    gamestart=true;


    a.move();
    for (int i = bric.size()-1; i>=0; i--) {
      Mbric oneSingleBrick = (Mbric) bric.get(i);
      if (oneSingleBrick.collide( a.x, a.y, a.r ) ) {
        a.yDir = -a.yDir;
        a.xDir=- a.xDir;

        bric.remove(i);
      }
      if (oneSingleBrick.score( a.x, a.y, a.r ) ) {

        score=score+1;
      }
    } 


    for (int i = black.size()-1; i>=0; i--) {
      Mblack SingleBrick = (Mblack) black.get(i);
      if (SingleBrick.bcollide( a.x, a.y, a.r ) ) {
        a.yDir = -a.yDir;
        a.xDir=- a.xDir;
        score=score-2;
        black.remove(i);
      }
      if (SingleBrick.bscore( a.x, a.y, a.r ) ) {

        score=score-1;
      }
    } 

    a.bounce();
    a.display();
    a.contact();

    for (int i = bric.size()-1; i>=0; i--) {
      Mbric oneSingleBrick = (Mbric) bric.get(i);
      oneSingleBrick.display();
    }
    for (int i = black.size()-1; i>=0; i--) {
      Mblack SingleBrick = (Mblack) black.get(i);
      SingleBrick.display();
    }
    b.display();
    b.move();
    b.restrict();
    //d.lives();
    //d.increase();
    //d.decrease();
    //d.gameover();
    //c.contactB();
    //c.display();
    //c.finished();
    fill(0);
    textSize(15);
    text("Score = "+score, 130, 550);              //Print the score on the screen
    text("Lives = "+lives, 130, 590);

    //Print remaining lives
    //} else {

    //  gamestart=false;
    //  textAlign(CENTER);
    //  textSize(100);
    //  text("B O U N C E", 350, 250);
    //  textSize(30);
    //  text("Press enter to start", 350, 325);
    //  text("Move mouse horizontally to control the", 350, 375);
    //  text("paddle and to bounce the ball", 350, 425);
    //}

    //if (lives<=0) {

    //  //  //background (0);
    //  //  //textSize(20);
    //  //  //text("Click Enter to Restart", 315, 400);
    //  //  //noLoop();

    //  textSize(20);
    //  text("Click to Restart", 250, 400);
    //  noLoop();                                    //Stop looping at the end of the draw function
    //  //lost=true;
    //  gamestart=false;
    //  textSize(10);
    //if ( keyCode==ENTER) {
    //  loop();

    //  gamestart=false;
    //} 
    if (lives<=0) {
      textSize(20);
      text("Click to Restart", 250, 400);
      noLoop();                                    //Stop looping at the end of the draw function
      gamestart=false;
      textSize(10);
      if ( keyCode==ENTER) {
        //loop();
        gamestart=false;
      }
    }
  }
}

void keyPressed() { //if enter is pressed then the game starts {
  if (keyCode == ENTER) {
    loop();
    gamestart=true;
  }
}

void mousePressed() {
  score=0;
  lives=3;
  gamestart=true;
  loop();
  
  
}
