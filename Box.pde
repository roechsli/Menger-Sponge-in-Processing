class Box {
  PVector pos;
  float lengthA;

  Box(float x, float y, float z, float a) {
    //println("x = ",x);
    pos = new PVector(x, y, z);
    lengthA = a;
  }

  ArrayList<Box> generate() {
    ArrayList<Box> boxes = new ArrayList<Box>();
    for (int x = -1; x < 2; x++) {
      for (int y = -1; y < 2; y++) {
        for (int z = -1; z < 2; z++) {
          int sum = abs(x) + abs(y) + abs(z);
          if (sum > 1) {
            float newA = lengthA/3;
            Box b = new Box(pos.x + x*newA, pos.y + y*newA, pos.z + z*newA, newA);
            boxes.add(b);
          }
        }
      }
    }
    return boxes;
  }

  void show() {
    pushMatrix();
    fill(100);
    translate(pos.x, pos.y, pos.z);
    box(lengthA);
    popMatrix();
  }
}
