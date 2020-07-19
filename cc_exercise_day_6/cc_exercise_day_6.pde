//idea: mouse controlled waves, random generated wave pattern

float sw;
float yStep = 20;
float arcSize = 100;

void setup()
{
  size(1000, 1000);
}

void draw()
{
  //trail effect setup
  blendMode(SUBTRACT);
  fill(255, 10);
  rect(0, 0, width, height);
  blendMode(BLEND);

  mouseX = constrain(mouseX, 10, width);
  mouseY = constrain(mouseY, 10, height);

  yStep = mouseY;
  arcSize = mouseX;

  noFill();
  stroke(120, 0, random(20, 255));
  strokeWeight(2);

  //arc grid
  for (int y = 0; y<height; y+=yStep/2)
  {
    sw = map(sin(radians(y)), -1, 1, 2, 5);
    strokeWeight(sw);

    for (int x = 0; x<width+arcSize; x+=arcSize)
    {
      arc(x, y, arcSize/2, arcSize/2, 0, PI);
      arc(x+arcSize/2, y, arcSize/2, arcSize/2, PI, TWO_PI);
    }
  }
}
