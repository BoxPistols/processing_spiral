size(800, 800);
background(0);
strokeWeight(5);
smooth();

float radius = 400;
int centx = 400;
int centy = 400;

// stroke(0, 30);
// noFill();
// ellipse(centx, centy, radius*2, radius*2);

// for Spiral
radius = 10;
float x,y;
// float lastx = -999;
// float lasty = -999;
for (int ang = 0; ang <= 1440*3; ang+=2) {  
  radius += 0.2;
  stroke(radius*(random(0, 1.1)), radius*0.9, radius*(random(0, 1.2)) );
  float rad = radians(ang);
  x = centx + (radius *tan(rad));
  y = centy + (radius *sin(rad));
  point(x, y);

  x = centx + (radius *cos(rad));
  y = centy + (radius *sin(rad));
  point(x, y);
}