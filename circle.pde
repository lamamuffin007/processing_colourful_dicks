class Circle{
float x,y;
float size;
float speedX,speedY;
float flipcX,flipcY;
float r,g,b; //rnd color

  Circle(){
  r = random(255); g = random(255); b = random(255);
  x = random(width);
  y = random(height);
  size = random(20,200);
  speedX = random(1,3); speedY = random(1,3);
  flipcX = random(0,1); flipcY = random(0,1);
  
  //needs to randomize location evertytime u r open
  if(flipcX > 0.5){speedX = speedX*-1;}
  if(flipcY > 0.5){speedY = speedY*-1;}
  }
  
  void moveC(){
  x += speedX;
  y += speedY;
  
  if((x> width) || (x<0)){
  speedX = speedX*-1;}
  
  if ((y>height) || (y<0)){
  speedY = speedY*-1;}
  
}
  
  
  void displayC(){
    noStroke();
    fill(r,g,b,(255/2)); //is 255/2 --> half
      
  ellipse( x, y - (size * 2.5), size, size);
  rect( x - (size / 16), y - (size * 3), size / 8, size/2);
  rect( x - (size / 2), y - (size * 2.5), size, size * 3);
  ellipse( x - (size / 2), y + (size / 2), size, size);
  ellipse( x + (size / 2), y + (size / 2), size, size);
  }
  
}
