int startX = 0;
int startY = 0;
PImage img1;
void setup()
{
  img1 = loadImage("pexels-photo-557782.jpg");
  strokeWeight(2);
  background(0);
  size(500, 350);
}
void draw()
{
  image(img1, 0, 0);

  while ( startY < 300) {
    int endX = startX + int(random(0, 4));
    int endY = startY + int(random(-9, 9));
    strokeWeight(3);
    stroke((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
    line(startX, startY, endX, endY);
    startX = endX;
    startY = endY;
  }
}
void mousePressed()
{
  startX =  mouseX;
  startY = mouseY;
  tint(200);
  redraw();
}
void mouseReleased() {
  tint(255);
}
