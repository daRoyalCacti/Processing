int size = 10;
int rows;
int cols;
float init;
float inc;
int fix = 2000;
int hrows;
int select = 2;

PVector[] i = new PVector[fix];
PVector[] j = new PVector[fix];

void setup(){
 size(800,800);
 strokeWeight(1);
 stroke(0);
 noFill();
 frameRate(60);
 
 cols = 2*round(width/size);
 rows = 2*round(height/size);
 
 hrows = round(rows/2);
 
 for (int q=0; q<fix; q++){
  i[q] = new PVector(size,0);
  j[q] = new PVector(0,-size);
 }

 switch (select){
  case 0:
  init = 1;
  inc = 0.01;
  break;
  case 1:
  init = 1;
  inc=0.001;
  break;
  case 2:
  init =0;
  inc=0.001;
  break;
  case 3:
  init = 0;
  inc = 0.001;
  break;
 }

}

void draw(){
 translate(width/2, height/2);
 background(255);
 
 axes();
  
 switch (select){
  case 0:
   diag();
  linear();
  
  break;
  case 1:
  hori();
  quadratic();
  
  break;
  case 2:
  hori();
 sine();
  break;
 case 3:
 hori();
 tangent();
 break;
 }
 
}
