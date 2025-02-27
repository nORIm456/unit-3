// Alex Lacroix
//Pallette
color darkPurple = #230F2B;
color pink       = #F21D41;
color lightGreen = #EBEBBC;
color medGreen   = #BCE3AE;
color darkGreen  = #82B3AE;

float sliderX;

float thickness;

void setup() {
  size (800, 600);
  strokeWeight(5);
  stroke(pink);
  fill(pink);
  sliderX = 400;
  thickness = 0;
}

void draw() {
  background(0);
  
   thickness = map(sliderX, 100, 700, 0, 15);
  
  strokeWeight(thickness);
  
  line(100, 300, 700, 300);
  circle(sliderX, 300, 50);
}

void mouseDragged() {
 controlSlider();
}

void mouseReleased () {
 controlSlider();
}

void controlSlider() {
   if (mouseX > 100 && mouseX < 700 && mouseY > 275 && mouseY < 325) {
   sliderX = mouseX;
 }
}
