PImage sunTexture;
PImage earthTexture;
PImage moonTexture;
PImage ufoTexture;

Asteroid ast_1;
Asteroid ast_2;
Asteroid ast_3;

ShootingStar shootingStar;

astronomicalObject sun;
Planet earth;
Planet moon;
RingPlanet saturn;

int numOfStars = 30;
Float [] starWeights = new Float[numOfStars];
Float [] starPointsX = new Float[numOfStars];
Float [] starPointsY = new Float[numOfStars];

void setup() {
  size(1000, 800, P3D);
  
  for (int i = 0; i < numOfStars; i ++) {
    starPointsX[i] = random(-width, 1.5*width);
    starPointsY[i] = random(-height,1.5*height);
    starWeights[i] = random(0, 20);
  }

  sunTexture = loadImage("sun.jpg");
  earthTexture = loadImage("earth.jpg");
  moonTexture = loadImage("moon.jpg");
  ufoTexture = loadImage("fur.jpg");

  ast_1 = new Asteroid(150, height/2, -500, random(2,10), 0.05);
  ast_2 = new Asteroid(-width/2, height * 0.8, -500, random(2,10), 0.05);
  ast_3 = new Asteroid(-width * 0.1, height * 0.1, -500, random(2,10), 0.05);
  
  shootingStar = new ShootingStar(random(100,900),random(100,700));
 

  sun = new astronomicalObject(150, 0, width/2, height/2, 270, sunTexture); //27 days self rotatoin
  earth = new Planet(30, 300, 500,  400, 1, earthTexture); //1 day self rotation
  moon = new Planet(10, 50, 500, 400, 28, moonTexture); //28 days self rotation
  
  saturn = new RingPlanet(width * 0.1, height/2, 0, 30, color(200, 150, 0), color(0, 100, 200));
}


void draw() {
  background(0);
  drawStars();
  pointLight(255, 255, 255, 400, 400, 400);
  
  pushMatrix();
    if (frameCount%120 == 0) {
      shootingStar = new ShootingStar(random(100,900),random(100,700));
    }
    
    shootingStar.show();
  popMatrix();
  
  
  pushMatrix();
    ast_1.show();
    ast_2.show();
    ast_3.show();
    
    saturn.show();
  popMatrix();
  
  pushMatrix();
    sun.show();
    earth.ortbitRotation();
    moon.ortbitRotation();
  popMatrix();
  

}

void drawStars() {
  
  for (int i = 0; i < numOfStars; i++) {
    strokeWeight(starWeights[i]);
    stroke(255);
    point(starPointsX[i], starPointsY[i], -600);
  }
  
}
