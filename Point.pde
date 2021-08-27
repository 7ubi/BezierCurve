class Point{
  float x;
  float y;
  float r = 10;
  boolean highlighted = false;
  
  Point(float x, float y){
    this.x = x;
    this.y = y;
  }
  
  void onPoint(){
    if(dist(mouseX, mouseY, x, y) < r){
      highlighted = true;
      
      if(mousePressed){
        selected = this;
      }
    }else{
      highlighted = false;
    }
  }
  
  void move(){
    x += mouseX - pmouseX;
    y += mouseY - pmouseY;
  }
  
  void show(){
    noStroke();
    if(highlighted){
      fill(0, 255, 0);
    }else{
      fill(255, 0, 0);
    }
    ellipse(x, y, r * 2, r * 2);
  }
}
