class astronomicalObject  {
  float radius;
  float distance; //from the sun (the center)
  float orbitSpeed;
  PShape globe;
  float xloc;
  float yloc;
  float light;
  float glow;

  astronomicalObject(float radius, float distance, float xloc, float yloc, float orbitSpeed, PImage img) {
    this.radius = radius;
    this.distance = distance;
    this.xloc = xloc;
    this.yloc = yloc;
    this.orbitSpeed = orbitSpeed;
    light = 0;
    glow = 0;
    noStroke();
    globe = createShape(SPHERE, radius);
    globe.setTexture(img);
  }

  void show() {
    translate(width/2 + distance, height/2);
    //rotateY(frameCount/orbitSpeed); //self-rotation
    shapeMode(CORNER);
    shape(globe);

  }
  
  void light() {
    glow += PI/300;
    light = abs(sin(glow)*255);
    pointLight(light, light, light, 500, 400, 270);
    
  }
  
}
