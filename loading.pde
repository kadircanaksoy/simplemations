float r = 100,r_small = 25, theta = 0, incr = 20 , alpha = 100;

void setup() {
  size(1080,720);
  frameRate(30);
  background(255);
}

void draw(){  
  
  fill(169,169,169,alpha);
  translate(width/2, height/2);
  ellipse(r*cos(radians(theta)), r*sin(radians(theta)), r_small, r_small);
  
  if(theta >= 360) theta = 0;
  else theta += incr;
  
  alpha -=5;
  if(alpha <= 0){
    alpha = 100;
    background(255);
  }
  
}