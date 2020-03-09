class ShootingStar {
  float x,y,z,size,speed,weight;
  int flag;
  
  ShootingStar (float x, float y) {
   this.x = x;
   this.y = y;
   weight = 0;
   flag = 0;
  }
  
  void show() {
    strokeWeight(weight);
    x += 10;
    y += 10;
    if (flag == 0 && weight < 10) {
      weight += 1;
      point(x,y);     
    } else if (flag == 0 && weight == 10) {
      flag = 1;
      point(x,y);
    } else if (flag == 1 && weight > 0) {
      weight -= 1;
      point(x,y);
    } else {
      point(x,y);
    
  }
  
  }
}
