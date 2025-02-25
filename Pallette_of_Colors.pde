// Alex Lacroix
// Feb 24th 2025

// pallette of colors
color cream         = #FCFBE3;
color lightBrown    = #DDCAAA;
color mediumBrown   = #BC8542;
color darkBrown     = #9F642C;
color darkestBrown  = #6E3722;
color white         = #FFFFFF;

//variables for color selection
color selectedColor;

void setup () {
  size(800, 600);
  strokeWeight(5);
  stroke(darkestBrown);
  selectedColor = darkBrown;
} // setup end =========================

void draw () {
  background(cream);

  //buttons
tactile(100, 100, 50);
  fill(lightBrown);
  circle(100, 100, 100);
  
  tactile(100, 300, 50);
  fill(mediumBrown);
  circle(100, 300, 100);
  
  tactile(100, 500, 50);
  fill(darkBrown);
  circle(100, 500, 100);

  // indicator
  stroke(darkestBrown);
  fill(selectedColor);
  square(300, 100, 400);
} // end of draw ====================

void tactile (int x, int y, int r) {
  if ( dist(x, y, mouseX, mouseY) < r) {
  stroke(white);
  } else {
  stroke(darkestBrown);
  }
} // end tactile======================


void mouseReleased() {
  //lightbrown button
  if ( dist(100, 100, mouseX, mouseY) < 50) {
    selectedColor = lightBrown;
  }
  //mediumbrown button
  if (dist(100, 300,mouseX, mouseY) < 50) {
    selectedColor = mediumBrown;
  }
  //darkbrown button
  if (dist(100, 500, mouseX, mouseY) < 50) {
    selectedColor = darkBrown;
  }
} // end mouseReleased ===============
