void draw() {
  if (keyPressed) {
    if (keyCode == UP) {
      backgroundY += 5; 
    } else if (keyCode == DOWN && backgroundY > 0) {
      backgroundY -= 5; 
    } else if (keyCode == LEFT && frogX > 0) {
      frogX -= 5;
    } else if (keyCode == RIGHT && frogX < width - 50) {
      frogX += 5; 
    }
  }

  background(255);

  image(frogImage, frogX, frogY, 50, 50);
}