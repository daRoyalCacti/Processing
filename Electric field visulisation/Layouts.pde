void randompos(){
   for (int i=0; i<num;i++){
   c[i] = new Charge(100*pow(-1,i), 100*pow(-1,i),100*pow(-1,i)+100);//50*pow(-1,i)); 
   //c[i] = new Charge(100, 100*pow(-1,i),100*pow(-1,i));  
  }
  c[2] = new Charge(100, 100,-200); 
}

void parallel(){
  
   //for (int i=0; i<num/2;i++){
   //  c[i] = new Charge(20, 100,20*i);
   //}
   //for (int i=round(num/2); i<num;i++){
   //  c[i] = new Charge(-20, -100,20*(i-num/2));
   //}
   
   for (int i=0; i<num/4;i++){
     c[i] = new Charge(20, 100, -20*i);
   }
   for (int i=num/4; i<num/2;i++){
     c[i] = new Charge(20, 100, 20*(i-num/4));
   }
   for (int i=round(num/2); i<3*num/4;i++){
     c[i] = new Charge(-20, -100,-20*(i-num/2));
   }
    for (int i=round(3*num/4); i<num;i++){
     c[i] = new Charge(-20, -100,20*(i-3*num/4));
   }
}

 void lines(){
    dirtotal.set(Ftotal).div(Ftotal.mag());
    stroke(abs(Ftotal.x*100), 0,abs(Ftotal.y*100));
    //line(d.x,d.y,d.x+force.x,d.y+force.y);
    
    
    //line(x,y,x+20*dirtotal.x,y+20*dirtotal.y);
    //line(x,y,x+dirtotal.x,y+dirtotal.y);
    //if (size*dirtotal.x>0){ 
    vectordraw(x,y,size*dirtotal.x,size*dirtotal.y);
    //}
    //line(x,y,x+Ftotal.x,y-Ftotal.y);
    stroke(0);
  }
  
  void reset(){
    Ftotal.set(0,0); 
    dirtotal.set(0,0);
  }
  
  
void vectordraw(float x_, float y_, float xlength, float ylength){
 float x = x_;
 float y = y_;
 float xlen = xlength;
 float ylen = ylength;

 float theta = atan(ylen/xlen);
 float angle = PI/8;
 line(x,y,x+xlen, y+ylen);
 //line(x+xlen, y+ylen, y+ylen-ylen/5, x+xlen-xlen/4);
 //line(x+xlen, y+ylen, x+xlen*0.5, y+ylen*0.5);
 //line(x+xlen, y+ylen, x+xlen*1.2, y+ylen*0.8);
 
 //line(x+xlen, y+ylen, x+xlen+5*cos(angle+theta), y+ylen+5*sin(angle+theta));
 //line(x+xlen, y+ylen, x+xlen-5*cos(angle+theta), y+ylen-5*sin(angle+theta));  //theta + PI instead
 
 //line(x+xlen, y+ylen, (x+xlen)*cos(0+angle)+(y+ylen)*sin(0+angle), (y+ylen)*sin(PI/2+angle)+(x+xlen)*cos(PI/2+angle));
 

 //line(x+xlen, y+ylen, x+xlen+5*cos(PI/2-theta), y+ylen+5*sin(PI/2-theta));
 if (xlen<0){
 line(x+xlen, y+ylen, x+xlen+5*cos(theta-angle), y+ylen+5*sin(theta-angle));
 line(x+xlen, y+ylen, x+xlen+5*cos(theta+PI/2-angle), y+ylen+5*sin(theta+PI/2-angle));
 } else{
 line(x+xlen, y+ylen, x+xlen+5*cos(theta-angle), y+ylen-5*sin(theta-angle)); //fixing this
 line(x+xlen, y+ylen, x+xlen+5*cos(theta+PI/2-angle), y+ylen-5*sin(theta+PI/2-angle));
 }
}
