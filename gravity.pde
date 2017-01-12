 //<>//
float x = 100;
float y = 100;
float w = 60;
float h = 60;
float eyeSize = 16;

// Zoog has variables for speed in the horizontal and vertical direction.
float xspeed = 10;
float yspeed = 3;


void setup() {
  size(600, 270);  
}

void draw() {

  // Change the location of Zoog by speed
  x = x + xspeed;
  y = y + yspeed;

  // An IF statement with a logical OR determines if Zoog has reached either the right or left edge of the screen.  
  // When this is true, we multiply speed by -1, reversing Zoog's direction!
  // Identical logic is applied to the y direction as well.
  if ((x > width -50) || (x < 50)) {
    xspeed = xspeed * -1;
  }

  if ((y > height-50) || (y < 50)) {
    yspeed = yspeed * -1;
  }

  background(255);  
  ellipseMode(CENTER);
  rectMode(CENTER); 

  // Draw Zoog's body
  stroke(0);
  fill(150);
  rect(x,y,w/3,h*2);

  // Draw Zoog's head
  fill(255);
  ellipse(x,y-h/2,w,h); 

  // Draw Zoog's eyes
  fill(0); 
  ellipse(x-w/3+1,y-h/2,eyeSize,eyeSize*2); 
  ellipse(x+w/3-1,y-h/2,eyeSize,eyeSize*2);

  // Draw Zoog's legs
  stroke(0);
  line(x-w/12,y+h,x-w/4,y+h+10);
  line(x+w/12,y+h,x+w/4,y+h+10);
}