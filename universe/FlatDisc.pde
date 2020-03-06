class FlatDisc {
  float x, y, z, size, alpha, alphaChange;
  color c;
  float angle = 0;
  float rotateSpeed = 0.05;
  
  FlatDisc (float x, float y, float z, float size, color c) {
    this.x = x;
    this.y = y;
    this.z = z;
    this.size = size;
    this.c = c;
    alpha = 255;
    alphaChange = 1;
  }
  
  void show() {
    pushMatrix();
    rotateX(0.4*PI);
    rotate(-angle);
    fill(c, alpha);
    noStroke();
    //circle(0, 0, size);
    ellipse(0,0, size, size*1.05);
    
    popMatrix();
    
    if (alpha >= 255) {
      alphaChange *= -1;
    } else if (alpha <= 100) {
      alphaChange = abs(alphaChange);
    }
    
    alpha += alphaChange;
    angle += rotateSpeed;
  }
}
