float r = 100, r_small = 8, theta = 0, incr = 20, x, speed = 10;


void setup() {
  size(1080, 1080, P3D);
  background(255);
  noStroke();
  lights();
  x = 2*width/5;
}

void draw() {
  if (x >= 3*width/5) {
    fill(255, 0, 0); 
    incr = -20;
  } else if (x <= 2*width/5) {
    incr = 20;
    fill(0);
  }


  //background(255);
 
  translate(x, r*cos(radians(theta))+height/2, r*sin(radians(theta)));
  sphere(r_small);

  
  x += incr/speed;  
  theta += incr;

  camera(x+50+width/2.0, height/2.0, (height/2.0) / tan(PI*30.0 / 180.0), width/2.0, height/2.0, 0, 0, 1, 0);
}