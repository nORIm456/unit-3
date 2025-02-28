// Alex Lacroix
//Pallette
color darkPurple = #230F2B;
color pink       = #F21D41;
color lightGreen = #EBEBBC;
color medGreen   = #BCE3AE;
color darkGreen  = #82B3AE;

float sliderY;

float thickness;

void setup() {
  size(800, 600);
  strokeWeight(5);
  stroke(pink);
  fill(pink);
  sliderY = 400;
  thickness = 0;
}

void draw() {
  background(0);
  
   thickness = map(sliderY, 100, 700, 0, 15);
  
  strokeWeight(thickness);
  
  line(400, 100, 400, 500);
  circle(400, sliderY, 50);
}

void mouseDragged() {
 controlSlider();
}

void mouseReleased () {
 controlSlider();
}

void controlSlider() {
   if (mouseY > 100 && mouseY < 500 && mouseX > 375 && mouseX < 425) {
   sliderY = mouseY;
 }
}
