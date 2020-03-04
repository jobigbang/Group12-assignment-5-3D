class astronomicalObject  {
  float radius;
  float distance; //from the sun (the center)
  float orbitSpeed;
  PShape globe;


  astronomicalObject(float radius, float distance, float orbitSpeed, PImage img) {
    this.radius = radius;
    this.distance = distance;
    this.orbitSpeed = orbitSpeed;
    
    noStroke();
    globe = createShape(SPHERE, radius);
    globe.setTexture(img);
  }

  void show() {
    pushMatrix();

    translate(width/2 + distance, height/2);
    rotateY(float(frameCount)/orbitSpeed); //self-rotation
    shape(globe);

    popMatrix();
  }
}
