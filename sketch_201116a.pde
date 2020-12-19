Circle[] circle = new Circle[50];


void setup() {
size (1920,1000);
for (int i=0; i< circle.length; i++){
  circle[i] = new Circle();
}

}

void draw(){
background(43);
fill(66);
stroke(255);

for(int i = 0; i < circle.length; i++){
  circle[i].moveC();
  circle[i].displayC();
}


}
