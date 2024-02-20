PImage frogImage;
float frogX, frogY; // Frog's position

void setup() {
  size(800, 600);
  frogImage = loadImage("frog.jpg"); // Adjust the filename

  frogX = width / 2;
  frogY = height - 50; // Adjust the initial position
}

void draw() {
  background(255);
  image(frogImage, frogX, frogY, 50, 50); // Adjust the size
}
