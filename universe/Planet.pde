class Planet extends astronomicalObject {
  float angle;

  Planet(float radius, float distance, float orbitSpeed, PImage img) {
    super(radius, distance, orbitSpeed, img);//inheritance
    angle = 0;
  }
  void tilt() {
    rotateX(radians(-23.4));
  }

  void ortbitRotation() {
    pushMatrix();

    popMatrix();
  }
}
