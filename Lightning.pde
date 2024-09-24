int startX = 0;
int startY = 150;
int endX = 0;
int endY = 150;

void setup() {
  size(500, 300);  // Set the window size
  strokeWeight(2);  // Set the thickness of the lightning bolt
  background(0);  // Black background for contrast
}

void draw() {
  stroke((int)(Math.random() * 255), (int)(Math.random() * 255), (int)(Math.random() * 255));  // Random lightning color
 
  while (endX < width) {  // Continue until endX is off the screen
    endX = startX + (int)(Math.random() * 10);  // Move endX randomly between 0 and 9 pixels
    endY = startY + (int)(Math.random() * 19 - 9);  // Move endY randomly between -9 and 9 pixels
   
    line(startX, startY, endX, endY);  // Draw the lightning bolt segment
   
    startX = endX;  // Update the startX for the next segment
    startY = endY;  // Update the startY for the next segment
  }
}

void mousePressed() {
  startX = 0;  // Reset lightning start position
  startY = 150;
  endX = 0;
  endY = 150;
  background(0);  // Clear the screen when the mouse is pressed
}

