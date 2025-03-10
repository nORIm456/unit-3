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
PImage rizz2;
boolean rizz2On; // true or false

void setup() {
  size(800, 600);
  background(255);
  sliderY = 220;
  thickness = 0;
  rizz2 = loadImage("rizz2.png");
  rizz2On = false;
}

void draw() {

  thickness = map(sliderY, 5, 400, 0, 15);

  strokeWeight(5);

  stroke(grey);
  fill(grey);
  rect(0, 430, 800, 600);

  //buttons
  tactile(120, 550, 20);
  fill(blue);
  circle(120, 550, 50);

  tactile(40, 550, 20);
  fill(red);
  circle(40, 550, 50);

  tactile(200, 550, 20);
  fill(yellow);
  circle(200, 550, 50);

  tactile(280, 550, 20);
  fill(green);
  circle(280, 550, 50);

  tactile(360, 550, 20);
  fill(orange);
  circle(360, 550, 50);

  tactile(660, 480, 20);
  fill(white);
  circle(660, 480, 50);

  tactile(660, 540, 20);
  fill(black);
  circle(660, 540, 50);
 
  strokeWeight(5);
  stroke(0);
  fill(225);
  tactile(700, 440, 80, 40);
  rect(700, 440, 80, 40);
  fill(black);
  text("CLEAR", 723, 465);
  //file save button
  fill(255);
  tactile(700, 490, 80, 40);
  rect(700, 490, 80, 40);
  fill(black);
  text("SAVE", 728, 515);
  tactile(700, 540, 80, 40);
  rect(700, 540, 80, 40);
  fill(black);
  text("LOAD", 727, 565);

  stroke(black);
  fill(white);
  line(20, 480, 380, 480);
  circle(sliderY, 480, 50);

  stroke(black);
  fill(selectedColor);
  rect(570, 490, 40, 40);

  //RIZZ button
  tactile(430, 460, 100);
  if(rizz2On) {
    fill(black);
  } else { 
    fill(white);
  }
  square(430, 460, 100);
  image(rizz2, 430, 460, 100, 100);
}

void tactile(int x, int y, int w, int h) {
  if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h) {
    fill(255, 255, 0);
  } else {
    fill(255);
  }
}

void tactile (int x, int y, int r) {
  if ( dist(x, y, mouseX, mouseY) < r) {
    stroke(white);
  } else {
    stroke(black);
  }
} // end tactile======================

void mouseDragged() {
  controlSlider();
  if (mouseY > 0 && mouseY < 430) {
    stroke(selectedColor);
    strokeWeight(thickness);
  }
 
  if (rizz2On == false) {
    line(pmouseX, pmouseY, mouseX, mouseY);
  } else {
    //rizz2 drawing
    image(rizz2, mouseX, mouseY, 100, 100);
  }
}

void mouseReleased() {
  //rizz2 button
  if (mouseX > 430 && mouseX < 530 && mouseY > 460 && mouseY < 560) {
    rizz2On = !rizz2On;
  }
  
  controlSlider();

  if ( dist(120, 550, mouseX, mouseY) < 50) {
    selectedColor = blue;
  }
  if ( dist(40, 550, mouseX, mouseY) < 50) {
    selectedColor = red;
  }
  if ( dist(200, 550, mouseX, mouseY) < 50) {
    selectedColor = yellow;
  }
  if ( dist(280, 550, mouseX, mouseY) < 50) {
    selectedColor = green;
  }
  if ( dist(360, 550, mouseX, mouseY) < 50) {
    selectedColor = orange;
  }
  if ( dist(660, 480, mouseX, mouseY) < 50) {
    selectedColor = white;
  }
  if ( dist(660, 540, mouseX, mouseY) < 50) {
    selectedColor = black;
  }
  //new button
  if (mouseX > 700 && mouseX < 780 && mouseY > 440 && mouseY < 480) {
    background(white);
    rect(230, 800, 800, 230);
  }
  //save button
  if (mouseX > 700 && mouseX < 780 && mouseY > 490 && mouseY < 530) {
    selectOutput("Choose a name for your new image file", "SaveImage");
}

void controlSlider() {
  if (mouseX > 5 && mouseX < 400 && mouseY > 460 && mouseY < 500) {
    sliderY = mouseX;
  }
}
