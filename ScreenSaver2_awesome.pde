float t = 0;
float m = 0;
float n = 0;
float k = 0;
float speed;
float thick;

static final int NUM_LINES = 20;

void setup() {
  size(600,600, P3D);

}

void draw() {
  background(0);
  speed = map(mouseX, 0, width, -1, 1);
  thick = map(mouseY, 0, height, 1, 4);
  stroke(255);
  strokeWeight(thick);
  translate(width/2,height/2);
  for (int i = 0; i < NUM_LINES; i++){
    line(x(t + i), y(t + i), x2(t + i), y2(t + i));
  }
  t = t + 0.4 + speed;
  
  stroke(255,0,0);
  for (int i = 0; i < NUM_LINES; i++){
    line(x(m + i), y(m + i), x2(m + i), y2(m + i));
  }
  m = m - 0.5 + speed;
  
  stroke(255,255,0);
  for (int i = 0; i < NUM_LINES; i++){
    line(x(n + i), y(n + i), x2(n + i), y2(n + i));
  }
  n = n + 0.5 + speed;
  
  stroke(138,216,128);
  for (int i = 0; i < NUM_LINES; i++){
    line(x(k + i), y(k + i), x2(k + i), y2(k + i));
  }
  k = k - 0.4 + speed;
  
}

float x(float t) {
  return sin(t / 10) * 100 + sin(t / 5) * 20;
}

float y(float t) {
  return cos(-t / 10) * 100 + sin(t / 5) * 50;
}

float x2(float t) {
  return sin(t / 10) * 200 + sin(t) * 2 + cos(t) *10;
}

float y2(float t) {
  return -cos(t / 20) * 200 + cos(t / 12) * 20;
}