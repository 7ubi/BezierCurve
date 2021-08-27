PVector linear(Point P0, Point P1, float t) {
  float x = P0.x + t * (P1.x - P0.x);
  float y = P0.y + t * (P1.y - P0.y);

  return new PVector(x, y);
}


PVector quadratic(Point P0, Point P1, Point P2, float t) {
  float x = P1.x + pow(1 - t, 2) * (P0.x - P1.x) +
    t * t * (P2.x - P1.x);
  float y = P1.y + pow(1 - t, 2) * (P0.y - P1.y) +
    t * t * (P2.y - P1.y);

  return new PVector(x, y);
}

PVector cubic(Point P0, Point P1, Point P2, Point P3, float t) {
  float x = pow(1 - t, 3) * P0.x + 3 * pow(1 - t, 2) * t * P1.x +
    3 * (1 - t) * t * t * P2.x + pow(t, 3) * P3.x;
  float y = pow(1 - t, 3) * P0.y + 3 * pow(1 - t, 2) * t * P1.y +
    3 * (1 - t) * t * t * P2.y + pow(t, 3) * P3.y;
    
  return new PVector(x, y);
}
