float k = 1000;//9*pow(10,9);
int num;
float x;
float y;
PVector Ftotal, dirtotal;
int select = 0;
float size = 20;

Charge[] c;

void setup(){
  size(800,800);
  background(255);
  stroke(0);
  strokeWeight(1);
  fill(255);
  //noFill();
  frameRate(60);
  
  
  
  switch (select){
  case 0:
  num = 3;
  c=new Charge[num+1];
  randompos();
  break;
  
  case 1:
  num = 75;
  c=new Charge[num+1];
  parallel();
  break;
  
  }
  x=width/2;
  y=height/2;
  
  //x=0;
  //y=50;
  
  
  Ftotal = new PVector();
  dirtotal = new PVector();
  translate(width/2, height/2);
   
}

void draw(){
  
  translate(width/2, height/2);
  for (int j=0;j<(width/size)*(height/size);j++){ //making it run faster
    //line(0,-height/2,0,height/2);
  for (int i=0; i<num;i++){
    c[i].draws();    
    c[i].calc2();
        
  }

  lines();
  //if (y>50){
    
    
    
  x-=size;
  //x--;
  if (x<-width/2){
    x=width/2;
    y-=size;
    //y--;
  }
  
  
  
  //}
  //println(Ftotal);
  reset(); 
  
  //noLoop();
  
  
  }

}
