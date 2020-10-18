void intro() {
  
  background(255, 0, 255);
  strokeWeight(0);

  //Start
  fill(grey);
  tactileRect(200, 600, 200, 100);
  fill(0);
  textSize(40);
  text("START", 300, 650);

  //Title
  fill(green);
  stroke(purple);
  strokeWeight(5);
  textSize(100);
  rect(100,200,700,150);
  fill(0);
  text("Clicker Game", 450, 250);



  //Options
  stroke(0);
  strokeWeight(0);
  fill(grey);
  tactileRect(500, 600, 200, 100);
  fill(0);
  textSize(40);
  text("OPTIONS", 600, 650);

}

void introClicks() {
  if (mouseX > 200 && mouseX < 400 && mouseY > 600 && mouseY < 700) {
    mode = GAME;
  } else if (mouseX > 500 && mouseX < 700 && mouseY > 600 && mouseY < 700) {
    mode = OPTIONS;
  }
}
