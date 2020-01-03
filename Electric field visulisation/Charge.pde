class Charge{
  float q, dmag, fmag;
  PVector pos, d, dir, force;
  float dx;
  float dy;
  
  Charge(float charge_, float posx, float posy){
    q = charge_;
    pos = new PVector(posx, posy);
    
    d = new PVector();
    dir = new PVector();
    force = new PVector();
    

  }
  
  void draws(){
   if (q>0){
     fill(255);
   }else{
     fill(0);
   }
   ellipse(pos.x,pos.y, q,q); 
   //println(pos.y);
   fill(255);
  }
  
  void calc(){
    dx = x-pos.x;
    dy = y-pos.y;
    
    d.set(dx,dy);
    dmag = d.mag();
    dir.set(d).div(dmag);
    
    if (dmag!=0){
      fmag = k*q/(pow(dmag,2));
    }
    force.set(dir).mult(fmag);
    dirtotal.add(dir);
    Ftotal.add(force);
    //println(dir.mag());
    //println(dirtotal.mag());
    //dirtotal.add((force).div(fmag));
   
  }
  
void calc2(){
    dx = x-pos.x;
    dy = y-pos.y;
    
    d.set(dx,dy);
    dmag = d.mag();
    dir.set(d).div(dmag);
    
    if (dmag!=0){
    fmag = k*q/(pow(dmag,2));
    }
    force.x = dir.x*fmag;
    force.y = dir.y*fmag;
    //force.set(dir).mult(fmag);
    
    Ftotal.add(force);
    
    //println(dx);
    
     //line(dx,dy, dx+10*dir.x, dy+10*dir.y);
  }
  
  
}

 
