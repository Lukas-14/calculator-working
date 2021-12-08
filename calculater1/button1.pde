class Button{
  PVector size,pos;
  String num;
  float nuo;
  boolean man = true;
  Button(PVector a,PVector b,String c,float d) {
    size = new PVector(a.x,a.y);
    pos = new PVector(b.x,b.y);
    num = c;
    nuo = d;
  }
  void make() {
    fill(80);
    rect(pos.x,pos.y,size.x,size.y);
    fill(200);
    textSize(50);
    text(num, pos.x + (size.x / 2) - 30, pos.y + (size.y / 2) + 30);
  }
  void pressed() {
    if (mouseX > pos.x && mouseX < pos.x + size.x && mouseY > pos.y && mouseY < pos.y + size.y) {
      if (man == true && mousePressed && nuo < 10) {
        if (position ==  1) {
          position = 2;
        }
        if (position ==  0) {
          value_1 = (value_1 * 10) + nuo;
        }
        else if (position ==  2) {
          value_2 = (value_2 * 10) + nuo;
        }
        else if (position ==  4) {
          value_1 = nuo;
          position = 0;
        }
        man = false;
      }
      else if (man == true && mousePressed && nuo > 12) {
        if (position ==  0) {
          position = 1;
        }
        else if (position ==  4) {
          position = 1;
        }
        if (position ==  1) {
          operation = num;
        }
      }
      else if (man == true && mousePressed && nuo == 10) {
        if (operation ==  "+") {
          value_1 += value_2;
        }
        else if (operation ==  "-") {
          value_1 -= value_2;
        }
        else if (operation ==  "x") {
          value_1 *= value_2;
        }
        else if (operation ==  "/") {
          value_1 /= value_2;
        }
        position = 4;
        value_2 = 0;
        operation = "";
      }
      else if (man == true && mousePressed && nuo == 11) {
        value_1 = 0;
      }
      if (man == false && !mousePressed) {
        man = true;
        println("hello");
      }
    }
    else {
      man = true;
    }
  }
}
