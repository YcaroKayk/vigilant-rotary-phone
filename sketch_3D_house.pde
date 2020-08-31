class Square{
  PShape squareShape;
  float posX;
  float posY;
  float posZ;
  color colr;
  Square(){
    posX=0;
    posY=0;
    posZ=0;
    colr = color(0,0,255);
    squareShape = createShape();
    squareShape.beginShape();
    squareShape.vertex(-100,-100,0);
    squareShape.vertex(100,-100,0);
    squareShape.vertex(100,100,0);
    squareShape.vertex(-100,100,0);
    squareShape.vertex(-100,-100,0);
    squareShape.vertex(-100,-100,-100);
    squareShape.vertex(-100,100,-100);
    squareShape.vertex(-100,100,0);
    squareShape.vertex(-100,-100,0);
    squareShape.vertex(100,-100,0);
    squareShape.vertex(100,-100,-100);
    squareShape.vertex(-100,-100,-100);
    squareShape.vertex(-100,-100,0);
    squareShape.vertex(-100,100,0);
    squareShape.vertex(-100,100,-100);
    squareShape.vertex(100,100,-100);
    squareShape.vertex(100,-100,-100);
    squareShape.vertex(100,-100,0);
    squareShape.vertex(100,100,0);
    squareShape.vertex(100,100,-100);
    squareShape.vertex(100,100,0);
    squareShape.vertex(100,-100,0);
   
    squareShape.endShape(CLOSE);
  }
  Square(color c, float posX, float posY){
    colr = c;
    squareShape = createShape();
    squareShape.beginShape();
    
    squareShape.vertex(-100,100,0);
    squareShape.vertex(0,0,0);
    squareShape.vertex(posX+80, posY+75);
    squareShape.vertex(posX+30, posY+75);
    
    squareShape.endShape(CLOSE);
  }
  void display(){
    stroke(0);
    noFill();
    shape(squareShape);
  }
}

class Triangle{
  PShape triangleShape;
  float posX;
  float posY;
  color colr;
  Triangle(){
    posX=0;
    posY=0;
    //colr = color(0,0,255);
    triangleShape = createShape();
    triangleShape.beginShape(TRIANGLES);
    
   triangleShape.vertex(-150,-100,0);
   triangleShape.vertex(150,-100,0);
   triangleShape.vertex(0,-100,100);
   triangleShape.vertex(0,100,100);
   triangleShape.vertex(-150,100,0);
   triangleShape.vertex(150,100,0);
   triangleShape.vertex(150,-100,0);
    
    triangleShape.endShape(CLOSE);
  }
  Triangle(color c, float posX, float posY){
    colr = c;
    triangleShape = createShape();
    triangleShape.beginShape();
    
    triangleShape.vertex(posX+10, posY+40);
    triangleShape.vertex(posX+100, posY+40);
    triangleShape.vertex(posX+55, posY+20);
    
    triangleShape.endShape(CLOSE);
  }
  void display(){
    stroke(0);
    noFill();
    shape(triangleShape);
  }
}

class House{
  Square houseWall;
  Triangle houseRoof;
  //color colr;
  House(){
    houseWall = new Square();
    houseRoof = new Triangle();
    //colr = color(0, 0, 255);
  }
  void display(){
    houseWall.display();
    houseRoof.display();
  }
}
  
House house;

void setup(){
  size(800,600,P3D);
  background(0);
  stroke(255);
  noFill();
  house = new House();
}
void draw(){
  translate(300,200);
  rotateX(PI/4);
  rotateZ(-PI/6);

  house.display();
}
