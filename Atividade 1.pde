PGraphics base;
PGraphics aelice_1;
PGraphics aelice_2;

void setup() {
  size(800, 600, P3D);
  base = createGraphics(width, height, P3D);
  aelice_1 = createGraphics(width, height, P3D);
  aelice_2 = createGraphics(width, height, P3D);
}

void draw() {
  background(0);
  drawBase();
  drawAelice_1();
  drawAelice_2();
  tint(160);
  image(base, 0, 0);
  tint(255,200);
  image(aelice_1, 0, 0);
  image(aelice_2, 0, 0);

}

void drawBase() {
  base.beginDraw();
  base.lights();
  base.clear();
  base.translate(width/2, height/2);
  base.rotateX(-0.20);
  base.rotateY(-0.20);
  base.box(90);
  base.translate(60, 20);
  base.box(60);
  base.translate(70, 15);
  base.box(120, 30, 15);
  base.translate(55, -15);
  base.box(40, 40, 20);
  base.translate(-165, -90);
  base.box(15, 80, 15);
  base.endDraw();
}

void drawAelice_1() {
  aelice_1.beginDraw();
  aelice_1.lights();
  aelice_1.clear();
  aelice_1.noStroke();
  aelice_1.translate(428, 200,-100);
  aelice_1.rotateX(-0.20);
  aelice_1.rotateY(-0.20);
  float auxDiv = 5.0+abs(mouseY/8);
  aelice_1.rotateY(-(frameCount/auxDiv));
  aelice_1.box(400, 10, 40);
  aelice_1.endDraw();
}

void drawAelice_2(){
  aelice_2.beginDraw();
  aelice_2.lights();
  aelice_2.clear();
  aelice_2.noStroke();
  aelice_2.translate(428, 180,-100);
  aelice_2.rotateX(-0.20);
  aelice_2.rotateY(-0.20);
  float div = 5.0+abs(mouseX/8);
  aelice_2.rotateY(frameCount/div);
  aelice_2.box(400, 10, 40);
  aelice_2.endDraw();
}
