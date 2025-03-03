// Alex Lacroix
// Feb 28, 2025
// Unit 3 Project

color white = #FFFFFF;
color grey  = #6A6A6A;
color black = #000000;

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
    
        strokeWeight(1);
    
    stroke(grey);
    fill(grey);
    rect(0, 430, 800, 600);
    
    stroke(black);
    fill(black);
    rect(620, 0, 800, 430);

      strokeWeight(thickness);
    stroke(white);
    fill(white);
    line(715, 40, 715, 400);
    circle(715, sliderY, 50);
}

void mouseDragged() {
  stroke(0);
  line(pmouseX, pmouseY, mouseX, mouseY);
  controlSlider();
}

void mouseReleased() {
  controlSlider();
}

void controlSlider() {
  if (mouseY > 40 && mouseY < 400 && mouseX > 700 && mouseX < 730) {
    sliderY = mouseY;
  }
}
