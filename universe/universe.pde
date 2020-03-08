PImage sunTexture;
PImage earthTexture;
PImage moonTexture;

Asteroid ast_1;
Asteroid ast_2;
Asteroid ast_3;

astronomicalObject sun;
Planet earth;
Planet moon;
RingPlanet saturn;

void setup() {
  size(1000, 800, P3D);

  sunTexture = loadImage("sun.jpg");
  earthTexture = loadImage("earth.jpg");
  moonTexture = loadImage("moon.jpg");

  ast_1 = new Asteroid(150, height/2, -500, random(2,10), 0.05);
  ast_2 = new Asteroid(-width/2, height * 0.8, -500, random(2,10), 0.05);
  ast_3 = new Asteroid(-width * 0.1, height * 0.1, -500, random(2,10), 0.05);

  sun = new astronomicalObject(150, 0, width/2, height/2, 270, sunTexture); //27 days self rotatoin
  earth = new Planet(30, 300, 500,  400, 10, earthTexture); //1 day self rotation
  //moon = new Planet(10, 350, 500, 400, 280, moonTexture); //28 days self rotation
  
  saturn = new RingPlanet(width * 0.1, height/2, 0, 30, color(200, 150, 0), color(0, 100, 200));
}

void draw() {
  background(0);
  pointLight(255, 255, 255, 400, 400, 400);

  ast_1.show();
  ast_2.show();
  ast_3.show();
  
  saturn.show();
  
  pushMatrix();
  sun.show();
  
  //earth.tilt();
  earth.ortbitRotation();
  //earth.show();
  popMatrix();


  //moon.show();
  
  
}
