class Vector{
  float mag1;
  float mag2;
 
  PVector i,j;
  float s; //speed of rotation
  float t = 0; //i starting angle



  Vector(float mag1_, float mag2_, float s_, float t_){
    mag1=mag1_;
    mag2=mag2_; 
    s=s_;
    t=t_;

    
    i = new PVector();
    j = new PVector();
  }
  
  void draws(){
   for (int q = 0; q<nv; q++){
     float a = mag1*cos(q*2*PI/nv); //x position of tail of line
     float b = mag1*sin(q*2*PI/nv); //y position of tail of line
     float c = mag2*cos(q*2*PI/nv-PI/2); // x position of head of line
     float d = mag2*sin(q*2*PI/nv-PI/2); // y position of head of line
     line(a*i.x - b*j.x, a*i.y - b*j.y, (a+c)*i.x - (b+d)*j.x, (a+c)*i.y - (b+d)*j.y);  
   }
  
  }
  
  
  void spin(){
    t-=s; //changing the angle of i and j vectors
    i.set( 2*cos(t), 0*sin(t)); //2 is to make it look flat
    j.set(-2*sin(t), 0*cos(t));     
  }
  
  //void testing(){
  //  t*=1.001; //increasing the rotation spee, slower for outer rings because they have higher initial t which, when negative, becomes smaller in terms of magnitude

  //}

  
}
