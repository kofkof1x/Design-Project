import ddf.minim.*;
Minim minim;

float x = 0; // Initial x-coordinate of the box
float y = 0; // Initial y-coordinate of the box
float vx = 0;
float vy = 0;
int color_ = 0;
int colorShift = 2;
float speed = 5;

float circleX;
float circleY;
float circleRadius = 25;
float circleXSpeed = -3.0;
float circleYSpeed = 2.0;

int collisionCounter = 0;
int scoreCounter=0;

// Other variables...

boolean loadingScreen = true;
int cycles = 0;
boolean switchToGame = false;
// Aaron, put your variables here.

int watery = -200;
float e = 0;
float starttimer = 0;
float logx = 1;
int logy = 125;
float loglength = 175;
float logspeed = 1;
float logbasespeed = 2;
float logy1 = 125;
float logx1 = 1;
float logx2 = 1;
float logx3 = 1;
float logx4 = 1;
float logx5 = 1;
float logx6 = 1;
float logx7 = 1;
float logx8 = 1;
float logx9 = 1;
float logx10 = 1;
float logx11 = 1;
float logx12 = 1;
float logx13 = 1;
float logx14 = 1;
boolean onLand = false;
boolean underTheSea = true;
boolean hasLost = false;
boolean startup = false;
float cancellator = 1;
float logger = 0;
float loggerout1 = random(30, 150);
float loggerout2 = random(30, 150);
float loggerout3 = random(30, 150);
float loggerout4 = random(30, 150);
float loggerout5 = random(30, 150);
float loggerout6 = random(30, 150);
float frogx = 400;
float frogy = 750;
float inimicuscounter;
float randommovement;
int onetwothree;
float toadx = 400;
float toady = 125;

void setup() {
  size(900, 800);
  circleX = width - circleRadius;
  circleY = height / 2;
  background(160, 216, 230);
  minim = new Minim(this);
  AudioPlayer player = minim.loadFile("Envici November - Original Instrument.mp3");
  player.play();

  for (int i = 0; i < 4; i++) {
    watery += 200;
    fill(30, 35, 30);
    rect(0, watery, width, 100);
  }
}

void draw() {
  drawGame();

  if (cycles < 4000) {
    drawLoadingScreen();
  }

  // Check if the music has finished playing
  if (minim != null && minim.loadFile("Envici November - Original Instrument.mp3").isPlaying() == false) {
    minim.loadFile("Envici November - Original Instrument.mp3").rewind();
    minim.loadFile("Envici November - Original Instrument.mp3").play();
  }

  cycles++;
}


void drawLoadingScreen() {
  // Draw the background first
  background(0);

  // Display instructions during the loading screen
  textSize(30);
  fill(255);  // Set text color to white
  text("Try to get the highest score possible!", width / 4, height / 2);
  textSize(50);
  text("Loading Screen.....", width / 3.5, height / 3);

  // Display the score counter during the loading screen
  displayCounter();

  // Other drawing commands...
  
  moveBox();
  drawBox();
  moveAndBounceCircle();
  drawBouncingCircle();
  checkCollision();
  rect(0, mouseY - 75, 50, 150);
}



void drawGame() {
  background(160, 216, 230);
  displayCounter2();


  for (int i = 0; i < 4; i++) {
    watery += 200;
    fill(30, 35, 30);
    rect(0, watery, width, 100);
  }

  if (!startup && !hasLost) {
    if (logger >= 2000) {
      loggerout1 += 300;
      loggerout2 += 400;
      loggerout3 += 350;
      loggerout4 += 250;
      loggerout5 += 340;
      loggerout6 += 450;
    }

    fill(19, 109, 21);
    rect(0, 0, width, 100);
    rect(0, 200, width, 100);
    rect(0, 400, width, 100);
    rect(0, 600, width, 100);

    fill(116, 72, 42);
    rect(logx, logy, loglength, 50);
    if (logx > 1000) {
      logx = -450;
    }
    logx += logspeed;

   rect(logx1, logy, loglength, 50);
  if (logx1 > 1000) {
    logx1 = -600;
  }
  logx1 += logspeed;
 
    rect(logx2, logy, loglength, 50);
  if (logx2 > 1000) {
    logx2 = -150;
  }
  logx2 += logspeed;
 
    rect(logx3, logy, loglength, 50);
  if (logx3 > 1000) {
    logx3 = -400;
  }
  logx3 += logspeed;
 
    rect(logx4, logy, loglength, 50);
  if (logx4 > 1000) {
    logx4 = -1256;
  }
  logx4 += logspeed;
 
    rect(logx5, logy, loglength, 50);
  if (logx5 > 1000) {
    logx5 = random(-1500, -400);
  }
  logx5 += logspeed;
 
    rect(logx6, logy + 200, loglength, 50);
  if (logx6 > 1000) {
    logx6 = -150;
  }
  logx6 += logspeed;
 
    rect(logx7, logy + 200, loglength, 50);
  if (logx7 > 1000) {
    logx7 = -360;
  }
  logx7 += logspeed;
 
    rect(logx8, logy + 200, loglength, 50);
  if (logx8 > 1000) {
    logx8 = -140;
  }
  logx8 += logspeed;
 
    rect(logx9, logy + 200, loglength, 50);
  if (logx9 > 1000) {
    logx9 = -400;
  }
  logx9 += logspeed;
 
    rect(logx10, logy + 200, loglength, 50);
  if (logx10 > 1000) {
    logx10 = -678;
  }
  logx10 += logspeed;
 
    rect(logx11, logy + 400, loglength, 50);
  if (logx11 > 1000) {
    logx11 = -450;
  }
  logx11 += logspeed;
 
    rect(logx12, logy + 400, loglength, 50);
  if (logx12 > 1000) {
    logx12 = -1230;
  }
  logx12 += logspeed;
 
    rect(logx13, logy + 400, loglength, 50);
  if (logx13 > 1000) {
    logx13 = -100;
  }
  logx13 += logspeed;
 
    rect(logx14, logy + 400, loglength, 50);
  if (logx14 > random(1100, 1200)) {
    logx14 = -500;
  }
  logx14 += logspeed;

    fill(150 - 4 * logspeed, 50 + 3 * logspeed, 50 + logspeed);
    circle(frogx - 10, frogy + 5, 30);
    circle(frogx + 10, frogy + 5, 30);
    fill(150 - 4 * logspeed, 50 + 3 * logspeed, 50 + logspeed);
    circle(frogx - 15, frogy - 15, 20);
    circle(frogx + 15, frogy - 15, 20);
    circle(frogx, frogy, 40);
    fill(0, 0, 0);
    circle(frogx - 15, frogy - 20, 5);
    circle(frogx + 15, frogy - 20, 5);

    if (frogy == 750) {
      frogx += 1;
      onLand = false;
      underTheSea = true;
    } else if (frogy == 550) {
      frogx += logspeed;
      onLand = false;
      underTheSea = true;
    } else if (frogy == 350) {
      frogx += logspeed;
      onLand = false;
      underTheSea = true;
    } else if (frogy == 150) {
      frogx += logspeed;
      onLand = false;
      underTheSea = true;
    } else {
      onLand = true;
      underTheSea = false;
    }

if( frogx < logx1 + 175 && frogx > logx1 && frogy > 125 && frogy < 175){
    frogx = 400;
    frogy = 750;
        scoreCounter=0;

  }
  if( frogx < logx2 + 175 && frogx > logx2 && frogy > 125 && frogy < 175){
    frogx = 400;
    frogy = 750;
        scoreCounter=0;

  }
  if( frogx < logx3 + 175 && frogx > logx3 && frogy > 125 && frogy < 175){
    frogx = 400;
    frogy = 750;
        scoreCounter=0;

  }
  if( frogx < logx4 + 175 && frogx > logx4 && frogy > 125 && frogy < 175){
    frogx = 400;
    frogy = 750;
        scoreCounter=0;

  }
  if( frogx < logx5 + 175 && frogx > logx5 && frogy > 125 && frogy < 175){
    frogx = 400;
    frogy = 750;
        scoreCounter=0;

  }
  if( frogx < logx6 + 175 && frogx > logx6 && frogy > 325 && frogy < 375){
    frogx = 400;
    frogy = 750;
        scoreCounter=0;

  }
  if( frogx < logx7 + 175 && frogx > logx7 && frogy > 325 && frogy < 375){
    frogx = 400;
    frogy = 750;
        scoreCounter=0;

  }
  if( frogx < logx8 + 175 && frogx > logx8 && frogy > 325 && frogy < 375){
    frogx = 400;
    frogy = 750;
        scoreCounter=0;

  }
  if( frogx < logx9 + 175 && frogx > logx9 && frogy > 325 && frogy < 375){
    frogx = 400;
    frogy = 750;
        scoreCounter=0;

  }
  if( frogx < logx10 + 175 && frogx > logx10 && frogy > 325 && frogy < 375){
    frogx = 400;
    frogy = 750;
        scoreCounter=0;

  }
  if( frogx < logx11 + 175 && frogx > logx11 && frogy > 525 && frogy < 575){
    frogx = 400;
    frogy = 750;
        scoreCounter=0;

  }
  if( frogx < logx12 + 175 && frogx > logx12 && frogy > 525 && frogy < 575){
    frogx = 400;
    frogy = 750;
        scoreCounter=0;

  }
  if( frogx < logx13 + 175 && frogx > logx13 && frogy > 525 && frogy < 575){
    frogx = 400;
    frogy = 750;
        scoreCounter=0;

  }
  if( frogx < logx14 + 175 && frogx > logx14 && frogy > 525 && frogy < 575){
    frogx = 400;
    frogy = 750;
        scoreCounter=0;

  }
  if( frogx < logx + 175 && frogx > logx && frogy > 125 && frogy < 175){
    frogx = 400;
    frogy = 750;
    scoreCounter=0;

  }
    inimicuscounter += logspeed;
    if (inimicuscounter > 1000) {
      randommovement = random(0, 3);
      onetwothree = int(randommovement);
      inimicuscounter = 0;
    }

  if(onetwothree == 0){
    toadx += 100;
  }
  else if(onetwothree == 1){
    toadx -= 100;
  }
  else if(onetwothree == 2){
    toady -= 50;
  }
  else if(onetwothree == 3){
    toady += 50;
  }
 
  if(toady > 900) {
    toady = 40;
  }
  if(toadx > 800) {
    toadx = 40;
  }
    if(toady > 700 && toady < 800){
    toadx += 1;
  }
 
  else if(toady > 500 && toady < 600){
    toadx += logspeed;
  }
 
  else if(toady > 300 && toady < 400){
    toadx += logspeed;
  }
 
  else if(toady > 100 && toady < 200){
    toadx += logspeed;
  }
 
  circle(toadx, toady, 50);
  circle(toadx + 20, toady + 20, 20);
  circle(toadx - 20, toady + 20, 20);
 
 
  }  

  if (frogy < 0) {
   scoreCounter++;

    frogx = 400;
    frogy = 750;
    logspeed += 1.2;
  }
  if (frogx < 0) {
    frogx = 400;
    frogy = 750;
  }
  if (frogx > 900) {
    frogx = 400;
    frogy = 750;
  }
}

void displayInstructions() {
  textSize(30);
  text("Try to get the highest score possible!", width / 4, height / 2);
  textSize(50);
  text("Loading Screen.....", width / 3.5, height / 3);
}

void moveBox() {
if (x < width - 100 && y == 0) {
    x += speed;
  }

  else if (x >= width - 100 && y < height - 100) {
    y += speed;
  }
 
  else if (x > 0 && y >= height - 100) {
    x -= speed;
  }
 
  else if (x <= 0 && y > 0) {
    y -= speed;
  }
  x += vx;
  y += vy;
}

void drawBox() {
 stroke(0);
  color_ += colorShift;
  if (color_ <= 0 || color_ >= 255) {
    color_ = 0;
  } else {
    fill(color_);
  }
  rect(x, y, 100, 100);
}

void moveAndBounceCircle() {

  circleX += circleXSpeed;
  circleY += circleYSpeed;


  if (circleY - circleRadius < 0 || circleY + circleRadius > height) {
    circleYSpeed = -circleYSpeed; 
  }


  if (circleX - circleRadius < 0) {
    circleX = width - circleRadius;

    circleXSpeed = -3.0; 
    circleYSpeed = 2.0;  
   
    collisionCounter = 0;
  }


  if (circleX + circleRadius > width) {
    circleXSpeed = -circleXSpeed; 
  }
}



void drawBouncingCircle() {
fill(255); 
  circle(circleX, circleY, circleRadius);}

void checkCollision() {
  float rectLeft = 0;
  float rectRight = 50;
  float rectTop = mouseY - 75;
  float rectBottom = mouseY + 75;

  if (
    circleX + circleRadius > rectLeft &&
    circleX - circleRadius < rectRight &&
    circleY + circleRadius > rectTop &&
    circleY - circleRadius < rectBottom
  ) {
    circleXSpeed = -circleXSpeed;
    circleYSpeed = -circleYSpeed;

    float speedIncrease = 1.5;
    circleXSpeed += speedIncrease;
    circleYSpeed += speedIncrease;
    circleX += circleXSpeed;
    circleY += circleYSpeed;

    collisionCounter++;
  }
}

void displayCounter() {
  fill(255);
  textSize(20);
  text("Score: " + collisionCounter, width - 100, 20);
}
void displayCounter2(){
  fill(255);
  textSize(20);
  text("Score: " + scoreCounter, width - 100, 20);
}

void keyPressed() {
  if (key == 'w') {
    frogy -= 100;
  } else if (key == 'a' && onLand) {
    frogx -= 25;
  } else if (key == 'd' && onLand) {
    frogx += 25;
  }
}
