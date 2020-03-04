

PImage sunTexture;
PImage earthTexture;
PImage moonTexture;

astronomicalObject sun;
Planet earth;
Planet moon;

void setup() {
  size(1000, 800, P3D);


  sunTexture = loadImage("sun.jpg");
  earthTexture = loadImage("earth.jpg");
  moonTexture = loadImage("moon.jpg");


  sun = new astronomicalObject(150, 0, 270, sunTexture); //27 days self rotatoin
  earth = new Planet(30, 300, 10, earthTexture); //1 day self rotation
  moon = new Planet(10, 350, 280, moonTexture); //28 days self rotation
}

void draw() {
  background(0);
  pointLight(255, 255, 255, 400, 400, 400);


  sun.show();
  
  earth.tilt();
  earth.ortbitRotation();
  earth.show();

  moon.show();
}
