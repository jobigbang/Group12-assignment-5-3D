PImage sunTexture;
PImage earthTexture;
PImage moonTexture;

Asteroid ast_1;
Asteroid ast_2;
Asteroid ast_3;

astronomicalObject sun;
Planet earth;
Planet moon;

void setup() {
  size(1000, 800, P3D);


  sunTexture = loadImage("sun.jpg");
  earthTexture = loadImage("earth.jpg");
  moonTexture = loadImage("moon.jpg");

  ast_1 = new Asteroid(150, height/2, -20, random(2,10), 5, 0.05);
  ast_2 = new Asteroid(-width/2, height * 0.8, -20, random(2,10), 5, 0.05);
  ast_3 = new Asteroid(-width * 0.1, height * 0.1, -20, random(2,10), 5, 0.05);

  sun = new astronomicalObject(150, 0, 0, sunTexture); //27 days self rotatoin
  earth = new Planet(30, 300, 10, earthTexture); //1 day self rotation
  moon = new Planet(10, 350, 280, moonTexture); //28 days self rotation
}

void draw() {
  background(0);
  pointLight(255, 255, 255, 400, 400, 400);

  ast_1.show();
  ast_2.show();
  ast_3.show();
  
  sun.show();
  
  earth.tilt();
  earth.ortbitRotation();
  earth.show();

  moon.show();
  
  
}
