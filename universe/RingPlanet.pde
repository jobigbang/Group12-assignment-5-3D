class RingPlanet {
  float x, y, z, size;
  color c;
  FlatDisc ring_1;
  FlatDisc ring_2;
  float angle = 0;
  float speed = 1;
  float bChange = 1;
  
  RingPlanet (float x, float y, float z, float size, color c, color ringColor) {
    this.x = x;
    this.y = y;
    this.z = z;
    this.size = size;
    this.c = c;
    ring_1 = new FlatDisc(x, y, z, size * 3, ringColor);
    ring_2 = new FlatDisc(x, y, z, size * 3.5, color(red(ringColor) + 150, green(ringColor), blue(ringColor)));
    
  }
  
  void show() {
    pushMatrix();
    translate(x, y);
    rotate(angle);
    noStroke();
    fill(c);
    sphere(size);
    
    ring_1.show();
    ring_2.show();
    
    popMatrix();
    
    if (blue(c) >= 255) {
      bChange *= -1;
    } else if (blue(c) <= 0) {
      bChange = abs(bChange);
    }
    
    c = color (red(c), green(c), blue(c) + bChange);
    
  }

}
