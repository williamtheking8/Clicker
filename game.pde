void game() {
  imageMode(CENTER);
  background(maroon);
  fill(0);
  textSize(50);
  text("Score: " + score, 200, 750);
  text("Lives: " + lives, 715, 750);

  //Pause
  tactileCircle(100, 100, 75);
  fill(255);
  circle(100, 100, 75);

  stroke(0);
  line(90, 80, 90, 125);
  line(110, 80, 110, 125);

  //Target

  fill(255);
  stroke(0);
  strokeWeight(5);
  circle(x, y, d);
  if (TrollOn == true) {
    image(troll, x, y, d, d*.8);
  } else if (DogeOn == true){
    image(doge, x, y, d, d);
  } else if (LOLOn == true) {
    image(lol, x, y, d, d);
}
//moving

x = x + vx;
y = y + vy;

// bounce
if ( x < d/2 || x > width-d/2) {
  bump.rewind();
  bump.play();
  vx = vx * -1;
}
if (y < d/2 || y > height-d/2) {
  bump.rewind();
  bump.play();
  vy = vy * -1;
}
}

void gameClicks() {
  //scored
  if ( dist(mouseX, mouseY, x, y) < d/2) {
    score = score + 1;
    coin.rewind();
    coin.play();
    vx = vx *1.1;
    vy = vy * 1.1;
  } else if ( dist(mouseX, mouseY, 100, 100) < 75/2) {
    //Paused
    mode = PAUSE;
    theme.pause();
  } else {
    //missed
    lives = lives - 1;
    grunt.rewind();
    grunt.play();
    //death
    if (lives == 0) { 
      mode = GAMEOVER;
      gameover.rewind();
      gameover.play();
    }
  }
}
