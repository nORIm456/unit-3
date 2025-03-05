// Alex Lacroix
// Feb 28, 2025
// Unit 3 Project

color white  = #FFFFFF;
color grey   = #6A6A6A;
color black  = #000000;
color blue   = #1756FF;
color red    = #FF1717;
color yellow = #FFF417;
color green  = #208B38;
color orange = #EAAC00;

color selectedColor;

float sliderY;
float thickness;

void setup() {
  size(800, 600);
  background(255);
  sliderY = 220;
  thickness = 0;
}

void draw() {

  thickness = map(sliderY, 40, 400, 0, 15);

  strokeWeight(5);

  stroke(grey);
  fill(grey);
  rect(620, 0, 800, 430);

  stroke(black);
  fill(black);
  rect(0, 430, 800, 600);

  //buttons
  tactile(120, 520, 50);
  fill(blue);
  circle(120, 520, 50);

  tactile(40, 520, 50);
  fill(red);
  circle(40, 520, 50);

  tactile(200, 520, 50);
  fill(yellow);
  circle(200, 520, 50);

  tactile(280, 520, 50);
  fill(green);
  circle(280, 520, 50);

  tactile(360, 520, 50);
  fill(orange);
  circle(360, 520, 50);
  
  fill(white);
  circle(660, 480, 50);
  
  fill(black);
  stroke(white);
  circle(660, 540, 50);
  
  strokeWeight(5);
  stroke(0);
  fill(225);
  rect(700, 440, 80, 40);
  rect(700, 490, 80, 40);
  rect(700, 540, 80, 40);
  
  stroke(black);
  fill(white);
  line(715, 40, 715, 400);
  circle(715, sliderY, 50);
}

void tactile (int x, int y, int r) {
  if ( dist(x, y, mouseX, mouseY) < r) {
    stroke(white);
  } else {
    stroke(black);
  }
} // end tactile======================

void mouseDragged() {
  stroke(selectedColor);
  strokeWeight(thickness);
  line(pmouseX, pmouseY, mouseX, mouseY);
  controlSlider();
}

void mouseReleased() {
  controlSlider();

  if ( dist(120, 520, mouseX, mouseY) < 50) {
    selectedColor = blue;
  }
  if ( dist(40, 520, mouseX, mouseY) < 50) {
    selectedColor = red;
  }
  if ( dist(200, 520, mouseX, mouseY) < 50) {
    selectedColor = yellow;
  }
  if ( dist(280, 520, mouseX, mouseY) < 50) {
    selectedColor = green;
  }
  if ( dist(360, 520, mouseX, mouseY) < 50) {
    selectedColor = orange;
  }
}

void controlSlider() {
  if (mouseY > 40 && mouseY < 400 && mouseX > 700 && mouseX < 730) {
    sliderY = mouseY;
  }
}
