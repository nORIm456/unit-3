// Alex Lacroix
// Feb 24th 2025

// pallette of colors
color blue       = #6592AF;
color lightBlue    = #8ED2FF;
color darkBlue     = #186495;
color darkestBlue = #134E74;

//variables for color selection
color selectedColor;

void setup () {
  size(800, 600);
  strokeWeight(5);
  stroke(darkestBlue);
  selectedColor = darkBlue;
} // setup end =========================

void draw () {
  background(blue);

  //buttons
  fill(lightBlue);
  circle(100, 200, 150);

  fill(darkBlue);
  circle(100, 400, 150);

  // indicator
  fill(selectedColor);
  square(300, 100, 400);
} // end of draw ====================


void mouseReleased() {
  //lightblue button
  if ( dist(100, 200, mouseX, mouseY) < 50) {
    selectedColor = lightBlue;
  }

  //darkblue button
  if (dist(100, 400, mouseX, mouseY) < 50) {
    selectedColor = darkBlue;
  }
} // end mouseReleased ===============
