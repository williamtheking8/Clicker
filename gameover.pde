void gameover() {

  if ( score > highscore) {
    highscore = score;
  }

  background(255, 255, 0);
  
  gameover.play();

  //Target taunting you
  if (TrollOn == true) {
    image(troll, 450, 200, d*2, d*2);
  } else if (DogeOn == true) {
    image(doge, 450, 200, d*2, d*2);
  } else if (LOLOn == true) {
    image(lol, 450, 200, d*2, d*2);
  }
  //Title
  fill(0);
  textSize(100);
  text("Game Over!", 450, 300);

  //High Score
  textSize(50);
  strokeWeight(5);
  text("High Score:" + highscore, 450, 400);

  //Restart
  fill(255);
  stroke(255, 0, 0);
  tactileRect(250, 550, 400, 100);
  fill(0);
  text("Play Again?", 450, 600);

  //Quit
  fill(255);
  stroke(255, 0, 0);
  strokeWeight(5);
  tactileRect(250, 750, 400, 100);
  fill(0);
  text("Exit?", 450, 800);
  text("OR", 450, 700);
}

void gameoverClicks() {
  if (mouseX > 250 && mouseX < 650 && mouseY > 550 && mouseY < 650) {
    // I don't reset Option choices to make it easier to keep your choices
    gameover.rewind();
    gameover.pause();
    mode = INTRO;
    score = 0;
    lives = 3;
    theme.rewind();
    vx = random(-5, 5);
    vy = random(-5, 5);
  }
  if (mouseX > 250 && mouseX < 650 && mouseY > 750 && mouseY < 850) {
    exit();
  }
}  
