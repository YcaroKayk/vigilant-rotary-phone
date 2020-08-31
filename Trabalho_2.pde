int c=0;
color cor;
String r,g,b;
PFont f;
void setup() {
  size(640, 360,P3D); 
  f = createFont("Times New Roman",16,true);
}

void draw() {
  background(0); 
  textFont(f);       
  fill(255);
 
  if(mousePressed){
    if(c==255){
      c=0;
    }
    c++;
  }
   r="R:"+mouseX;
   g="G:"+mouseY;
   b="B:"+c;
   cor=color(mouseX,mouseY,c);
   text("O R é controlado pelo eixo X, o G é controlado pelo eixo Y e o B é controlado pelos botões do mouse.",1,350);
   text(r,0,120);
   text(g,0,140);
   text(b,0,160);
   text("Hexadecimal:",0,180);
   text(hex(cor,6),85,180);
   fill(mouseX, mouseY, c);
   box(200,200,0);
   translate(320,180);
   fill(mouseX, mouseY, c);
   rotateX(-mouseY*0.01);
   rotateY(-mouseX*0.01);
   box(100,100,100);
}
