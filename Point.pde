class Point{
  float x;
  float y;
  float r = 10;
  
  Point(float x, float y){
    this.x = x;
    this.y = y;
  }
  
  void show(){
    noStroke();
    fill(255, 0, 0);
    ellipse(x, y, r * 2, r * 2);
  }
}
