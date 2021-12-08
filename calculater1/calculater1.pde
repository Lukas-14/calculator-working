PVector buttonSize, buttonPos1, buttonPos2, buttonPos3, buttonPos4, buttonPos5, buttonPos6, buttonPos7, buttonPos8, buttonPos9, buttonPos10, buttonPos11, buttonPos12, buttonPos13, buttonPos14, buttonPos15, buttonPos16;
PVector[] butt = {buttonPos1, buttonPos2, buttonPos3, buttonPos4, buttonPos5, buttonPos6, buttonPos7, buttonPos8, buttonPos9, buttonPos10, buttonPos11, buttonPos12, buttonPos13, buttonPos14, buttonPos15, buttonPos16};


Button b1,b2,b3,b4,b5,b6,b7,b8,b9,b10,b11,b12,b13,b14,b15,b16;
Button[] oblist = {b1,b2,b3,b4,b5,b6,b7,b8,b9,b10,b11,b12,b13,b14,b15,b16};

String[] show = {"7","8","9","/","4","5","6","x","1","2","3","-","0","c","=","+"};
String entery_text = "";

float[] nomb = { 7 , 8 , 9 , 13 , 4 , 5 , 6 , 13 , 1 , 2 , 3 , 13 , 0 , 11 , 10 , 13 };
float value_2, value_2, position = 0;
String operation;

int a = 10;
int b = 210;
int[] ax = new int[0];
int[] by = new int[0];

void setup() {
  size(610,810);
  buttonSize = new PVector(140,140);
  background(50);
  for (int i = 0;i < 16;i++) {
    if (a > 600) {
      b += 150;
      a -= 600;
    }
    int[] ax1 = append(ax, a);
    int[] by1 = append(by, b);
    a += 150;
    ax = ax1;
    by = by1;
    butt[i] = new PVector(ax[i],by[i]);
    oblist[i] = new Button(buttonSize,butt[i],show[i],nomb[i]);
  }
}
void draw() {
  background(50);
  text(entery_text,20,60);
  for (inti = 0;i < 16;i++) {
    oblist[i].make();
    oblist[i].pressed();
    println(value_1);
  }
  if (position ==  0 ||  position ==  4) {
    entery_text = str(value_1);
    entery_text = entery_text.replace(".0", "");
  }
  
  else if (position ==  1) {
    entery_text = str(value_1) + operation;
    entery_text = entery_text.replace(".0", "");
  }
  
  else if (position ==  2) {
    entery_text = str(value_1) + operation + str(value_2);
    entery_text = entery_text.replace(".0", "");
  }
}
