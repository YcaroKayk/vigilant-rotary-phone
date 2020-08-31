void setup() {
  size(640, 360, P3D);
  colorMode(HSB, 360, 100, 100);
  background(100);
  lights();
  
  pushMatrix();
  translate(298, 200, 0);
  rotateX(-1);
  fill(90);
  box(200, 10, 200);
  popMatrix();

  pushMatrix();
  translate(305, 170, 100);
  rotateX(-1);
  fill(180);
  box(30, 100, 30);
  popMatrix();

  pushMatrix();
  translate(305, 150, 122);
  rotateX(-1);
  fill(180);
  box(130, 30, 28);
  popMatrix();
  
  pushMatrix();
  translate(305, 140, 145);
  rotateX(-1);
  fill(180);
  box(20, 20, 20);
  popMatrix();
  
  pushMatrix();
  translate(365, 140, 140);
  rotateX(-1);
  fill(180);
  box(20, 20, 20);
  popMatrix();
  
  pushMatrix();
  translate(245, 140, 140);
  rotateX(-1);
  fill(180);
  box(20, 20, 20);
  popMatrix();

  pushMatrix();
  translate(305, 130, 160);
  rotateX(-1);
 fill(112,38,84);
  box(10, 35, 10);
  popMatrix();
  
  pushMatrix();
  translate(365, 130, 160);
  rotateX(-1);

  fill(350,70,60);
  box(10, 35, 10);
  popMatrix();

  pushMatrix();
  translate(245, 130, 160);
  rotateX(-1);

  fill(255,60,75);
  box(10, 35, 10);
  popMatrix();
  
}
