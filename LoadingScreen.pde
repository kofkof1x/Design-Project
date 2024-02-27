float x = 0;            // Initial x-coordinate of the box
float y = 0;            // Initial y-coordinate of the box
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

// Other variables...

boolean loadingScreen = true;
int cycles = 0;
boolean switchToGame = false;
// Aaron, put your variables here.

void setup() {
  size(900, 800);    
  circleX = width - circleRadius; 
  circleY = height / 2; 
}

void draw() {
  if (cycles < 4000) {
    drawLoadingScreen();
  } else {
    switchToGame = true;
  }

  if (switchToGame) {
    drawGame();
  }

  // Increment the cycle count
  cycles++;
}

void drawLoadingScreen() {
  background(0);
  displayInstructions();
  moveBox();
  drawBox();
  moveAndBounceCircle();
  drawBouncingCircle();
  checkCollision();
  rect(0, mouseY - 75, 50, 150);
  displayCounter();
}

void drawGame() {
  background(0,0,0);
  //call your functions here like I did above in the drawloadingscreen function.
  // variables above and then at the vary bottom you out all the functions you are going to call. This function basically acts as your draw function for your code. 
  // all your functions should be below and variables above. You can add things to the setup aswell as needed. 

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
  circle(circleX, circleY, circleRadius);
}

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
  text("Score: " + collisionCounter, width-100, 20);
}
// your functions show be down here 
