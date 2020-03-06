class astronomicalObject  {
  float radius;
  float distance; //from the sun (the center)
  float orbitSpeed;
  PShape globe;
  float xloc;
  float yloc;

  astronomicalObject(float radius, float distance, float xloc, float yloc, float orbitSpeed, PImage img) {
    this.radius = radius;
    this.distance = distance;
    this.xloc = xloc;
    this.yloc = yloc;
    this.orbitSpeed = orbitSpeed;

    
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
}
