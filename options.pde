void options() {
  imageMode(CENTER);
  d = map(sliderY,520,720,220,20);
  background(100, 100, 100);
  
  
  //Title
  fill(white);
  textSize(100);
  text("Options", 450, 100);
  
  
  //slider
  fill(0);
  strokeWeight(10);
  line(300, 520, 300, 720);
  strokeWeight(0);
  tactileCircle(300, sliderY, 50);
  
  
  //Troll Button
  stroke(0);
  strokeWeight(0);
  fill(0);
  tactileRect(100, 200, 200, 200);
  image(troll,200,300,220,180);
  
  // Doge
  stroke(0);
  strokeWeight(0);
  fill(0);
  tactileRect(350, 200, 200, 200);
  image(doge,450,300,200,200);
  
  // LOL
  stroke(0);
  strokeWeight(0);
  fill(0);
  tactileRect(600, 200, 200, 200);
  image(lol,700,300,180,180);
  
  //Finished?
  textSize(50);
  stroke(0);
  strokeWeight(0);
  fill(black);
  tactileRect(600, 700, 200, 100);
  fill(white);
  text("Done?", 700,750);
  
  //Example ball
  fill(255);
  stroke(0);
  strokeWeight(5);
  circle(450, 600, d);
  if (TrollOn == true) {
    image(troll, 450, 600, d, d*.8);
  } else if (DogeOn == true){
    image(doge,450, 600, d, d);
  } else if (LOLOn == true) {
    image(lol, 450, 600, d, d);
}
}

void mouseDragged() {
  controlSlider();
}

void optionsClicks() {
   if (mouseX > 600 && mouseX < 800 && mouseY > 700 && mouseY < 800) {
     mode = INTRO;
     
  } else if (mouseX > 100 && mouseX < 300 && mouseY > 200 && mouseY < 400) {
    TrollOn = true;
    DogeOn = false;
    LOLOn = false;
  
  }else if (mouseX > 350 && mouseX < 550 && mouseY > 200 && mouseY < 400) {
     TrollOn = false;
    DogeOn = true;
    LOLOn = false;
  
    
 
  } else if (mouseX > 600 && mouseX < 800 && mouseY > 200 && mouseY < 400) {
    TrollOn = false;
    DogeOn = false;
    LOLOn = true;
  
    
  }
  
  
}

void controlSlider() {  
  if (mouseY > 520 && mouseY < 720 && mouseX > 275 && mouseX < 325 ) {
      sliderY = mouseY; 
  }
}
      
    
  
