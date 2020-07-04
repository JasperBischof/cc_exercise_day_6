int canWidth;
int canHeight;

void setup()
{
  background(10);
  size(1200, 1000);

  canWidth = width - width/3;
  canHeight = height;
  
  noStroke();
  fill(0);
  rect(0, 0, canWidth, canHeight);
}

void draw()
{
}
