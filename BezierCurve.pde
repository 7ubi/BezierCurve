Point start;
Point end;
Point[] controlPoints;

Point selected = null;

final float n = 50;

void setup(){
  size(600, 600);
  
  ellipseMode(CENTER);
  
  start = new Point(50, 300);
  end = new Point(550, 300);
  
  controlPoints = new Point[2];
  
  controlPoints[0] = new Point(200, 100);
  controlPoints[1] = new Point(400, 400);
}

void draw(){
  background(125);
  
  strokeWeight(3);
  stroke(255);
  noFill();
  beginShape();
  
  for(float t = 0; t <= 1; t += 1/n){
    PVector b = cubic(start, controlPoints[0], controlPoints[1], end, t);
    vertex(b.x, b.y);
  }
  
  endShape();
  strokeWeight(1);
  stroke(0, 0, 255);
  line(start.x, start.y, controlPoints[0].x, controlPoints[0].y);
  line(controlPoints[1].x, controlPoints[1].y, end.x, end.y);
  
  start.show();
  start.onPoint();
  for(int i = 0; i < controlPoints.length; i++){
    controlPoints[i].show();
    controlPoints[i].onPoint();
  }
  end.show();
  end.onPoint();
  
  if(selected != null){
    selected.highlighted = true;
    selected.move();
  }
}

void mouseReleased(){
  selected = null;
}
