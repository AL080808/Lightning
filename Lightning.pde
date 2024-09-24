int startX = 0;
int startY = 150;
int endX = 0;
int endY = 150;

void setup() {
  size(500, 300); 
  strokeWeight(2);  
  background(0);  // Black background for contrast
}

void draw() {
  stroke((int)(Math.random() * 255), (int)(Math.random() * 255), (int)(Math.random() * 255));  
 
  while (endX < width) {  
    endX = startX + (int)(Math.random() * 10);  
    endY = startY + (int)(Math.random() * 19 - 9);  
   
    line(startX, startY, endX, endY);  // Draw the lightning bolt segment
   
    startX = endX;  
    startY = endY; 
  }
}

void mousePressed() {
  startX = 0;  // Reset lightning start position
  startY = 150;
  endX = 0;
  endY = 150;
  background(0);  // Clear the screen when the mouse is pressed
}

