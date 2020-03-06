class Planet extends astronomicalObject {
  float angle;

  Planet(float radius, float distance, float xloc, float yloc, float orbitSpeed, PImage img) {
    super(radius, distance, xloc, yloc, orbitSpeed, img);//inheritance
    angle = 0;
  }
  void tilt() {
    rotateX(radians(-23.4));
  }

  void ortbitRotation() {
    pushMatrix();
    angle += PI/300;
    translate(distance,0);
    rotateY(angle);
    
  }
  
  void show() {
    //pushMatrix();
    translate(distance, 0);
    rotateY(frameCount/orbitSpeed); //self-rotation
    shape(globe);

  }
  
}
