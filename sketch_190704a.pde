size(500, 300);
background(0);
strokeWeight(5);
smooth();

float radius = 100;
int centx = 250;
int centy = 150;

// stroke(0, 30);
// noFill();
// ellipse(centx, centy, radius*2, radius*2);

// for Spiral
radius = 10;
float x,y;
float lastx = -999;
float lasty = -999;
for (int ang = 0; ang <= 1440+2; ang+=2) {  
  radius += 0.2;
  stroke(radius*1.2, radius*2, radius*1.5);
  float rad = radians(ang);
  x = centx + (radius *tan(rad));
  y = centy + (radius *sin(rad));
  point(x, y);
}