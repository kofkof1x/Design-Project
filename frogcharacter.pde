PImage frogImage;
float frogX, frogY; 

void setup() {
  size(800, 600);
  frogImage = loadImage("frog.jpg"); 

  frogX = width / 2;
  frogY = height - 50;

void draw() {
  background(255);
  image(frogImage, frogX, frogY, 50, 50);
}
}