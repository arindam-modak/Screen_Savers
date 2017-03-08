float t = 0;
float m = 0;
float n = 0;
float k = 0;
static final int NUM_LINES = 10;

void setup() {
  size(600,600, P3D);
  background(0);
}

void draw() {
  background(0);
  stroke(255);
  strokeWeight(4);
  translate(width/2,height/2);
  for (int i = 0; i < NUM_LINES; i++){
    line(x(t + i), y(t + i), x2(t + i), y2(t + i));
  }
  t = t + 0.4;
  
  stroke(255,0,0);
  for (int i = 0; i < NUM_LINES; i++){
    line(x(m + i), y(m + i), x2(m + i), y2(m + i));
  }
  m = m - 0.5;
  
  stroke(255,255,0);
  for (int i = 0; i < NUM_LINES; i++){
    line(x(n + i), y(n + i), x2(n + i), y2(n + i));
  }
  n = n + 0.5;
  
  stroke(138,216,128);
  for (int i = 0; i < NUM_LINES; i++){
    line(x(k + i), y(k + i), x2(k + i), y2(k + i));
  }
  k = k - 0.4;
}

float x(float t) {
  return sin(t / 10) * 100 + sin(t / 5) *20;
}

float y(float t) {
  return cos(t / 10) * 100 + cos(t) * 20;
}

float x2(float t) {
  return sin(t / 10) * 200 + sin(t) * 20;
}

float y2(float t) {
  return cos(t / 10) * 200 + cos(t / 5) * 20;
}