class Asteroid {
  float x, y, z, size, xSpeed, rotateSpeed;
  float ySpeed;
  float angle = 0;
  PShape ast;
  
  Asteroid (float x, float y, float z, float size, float travelSpeed, float rotateSpeed) {
    this.x = x;
    this.y = y;
    this.z = z;
    this.size = size;
    this.xSpeed = travelSpeed;
    this.ySpeed = random(-xSpeed, xSpeed + 0.1);
    this.rotateSpeed = rotateSpeed;
    ast = loadShape("Test_planet.obj");
  }
  
  void show() {
    if (x > width * 1.5) {
      x = -width * random(0.25, 1.5);
      y = random(0, height);
      size = random(2, 10);
      ySpeed = random(-xSpeed, xSpeed + 0.1);
    }
    
    
    pushMatrix();
    
    translate(x, y, z);
    scale(size);
    rotateY(angle); //self-rotation
    rotateX(angle);
    shape(ast);

    popMatrix();
    angle += rotateSpeed;
    
    x += xSpeed;
    y += ySpeed;
  }
}
