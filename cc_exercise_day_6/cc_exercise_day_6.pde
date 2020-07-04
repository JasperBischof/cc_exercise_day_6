float x;
float y;

float xoff = 0.0;

void setup()
{
  background(10);
  size(1000, 1000);
  noiseSeed(121212);
}

void draw()
{
  noiseDetail(1, 1);

  x = map(sin(radians(frameCount*2)), -1, 1, 50, width-50);
  y = map(cos(radians(frameCount*2)), -1, 1, 50, height-50);

  stroke(255);
  line(x, y, x, height);

  xoff = xoff + .1;
}
