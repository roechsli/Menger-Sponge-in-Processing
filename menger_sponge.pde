float angleX = 0; //<>//
float angleY = 0;
ArrayList<Box> sponge = new ArrayList<Box>();
void setup() {
  size(640, 640, P3D);

  Box b = new Box(0, 0, 0, 300);
  sponge.add(b);
}

void mousePressed() {
  ArrayList<Box> next = new ArrayList<Box>();
  for (Box b: sponge) {
    ArrayList<Box> newBoxes = b.generate();
    next.addAll(newBoxes);
  }
  sponge = next;
}

void draw() {
  background(200);
  translate(width/2, height/2);
  rotateX(angleX);
  rotateY(angleY);
  for (Box b : sponge) {
    b.show();
  }


  angleX = angleX+ 0.01;
  angleY = angleY+ 0.01;
}
