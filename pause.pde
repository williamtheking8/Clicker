void pause() {
  //pause button
  stroke(0);
  tactileCircle(100,100,75);
  fill(255);
  circle(100, 100, 75);
  stroke(0);
  fill(0);
  triangle(80, 80, 120, 100, 80, 120);
  
  //Pause text
  strokeWeight(20);
  fill(0);
  text("PAUSE", 450,450);
  strokeWeight(5);
}

void pauseClicks() {
  if ( dist(mouseX, mouseY, 100, 100) < 75/2) {
    mode = GAME;
    theme.play();
  }
}
