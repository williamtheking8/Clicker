void tactileCircle(int x, float y, int d) {

  if (dist(x, y, mouseX, mouseY) < d) {
    stroke(255, 255, 0);
    strokeWeight(10);
  }
  circle(x,y,d);
}

void tactileRect(int x, int y, int w, int h) { 
  stroke(purple);
  strokeWeight(10);
  if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h) {
    fill(150, 10, 10);
    strokeWeight(20);
    stroke(255,0,0);
  }
  rect(x, y, w, h);
}
