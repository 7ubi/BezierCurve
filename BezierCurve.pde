Point start;
Point end;

Point control1;
Point control2;

final float n = 50;

void setup(){
  size(600, 600);
  
  ellipseMode(CENTER);
  
  start = new Point(50, 300);
  end = new Point(550, 300);
  
  control1 = new Point(200, 100);
  control2 = new Point(400, 400);
}

void draw(){
  background(0);
  
  strokeWeight(3);
  stroke(255);
  noFill();
  beginShape();
  
  for(float t = 0; t <= 1; t += 1/n){
    PVector b = cubic(start, control1, control2, end, t);
    vertex(b.x, b.y);
  }
  
  endShape();
  
  start.show();
  control1.show();
  control2.show();
  end.show();
}
