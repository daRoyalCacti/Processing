void strokes(int weight, color col){
 strokeWeight(weight);
 stroke(col);
}

void diag(){
  strokes(2, color(0,0,255));
  beginShape();
  for (int q = -hrows; q<=hrows; q++){
    vertex(q*(i[hrows+q].x + j[hrows+q].x), q*(i[hrows+q].y + j[hrows+q].y));
  }
  endShape();
  strokes(2, color(0,0,0));
}

void hori(){
   strokes(2, color(0,0,255));
  beginShape();
  for (int q = -hrows; q<=hrows; q++){
    vertex(q*i[hrows+q].x + j[hrows+q].x, q*i[hrows+q].y + j[hrows+q].y);
  }
  endShape();
  strokes(2, color(0,0,0));
}

void axes(){
  for (int w = -hrows; w<=hrows; w++){
    
    if (w==0){
      strokes(2,color(255,0,0)); 
    }else{
      //strokes(1,color(0,0,0,100));
      strokes(1,color(170,170,170));
    }
    
    beginShape();
      for (int q=-hrows; q<=hrows; q++){
        vertex(q*(i[hrows+q].x + j[hrows+q].x), w*(i[hrows+q].y + j[hrows+q].y));
      }
    endShape();
    beginShape();
      for (int q=-hrows; q<=hrows; q++){
        vertex(w*(i[hrows+q].x+j[hrows+q].x), q*(i[hrows+q].y+j[hrows+q].y));
      }
    endShape();
  }
  strokes(2,color(0,0,0));
}

void linear(){ //basis vector manipulation'
   for (int q=-hrows; q<=hrows; q++){
     i[hrows+q].set(size,0);
     j[hrows+q].set(0,-init*size);
   }
    if (init<2){ //y=2x
    init+=inc; 
   }
}

void quadratic(){
  for (int q=-hrows; q<=hrows; q++){
     i[hrows+q].set(size,0);
     j[hrows+q].set(0,-pow(abs(q),init)*size);
   }
   if (init<2){ //y=x^2
    init+=inc; 
   }
}




void sine(){
  for (int q=-hrows; q<=hrows; q++){
     i[hrows+q].set(size,0);
     j[hrows+q].set(0,-4*sin(init*q)*size);
   }
    if (init<0.15){ 
    init+=inc; 
   }
}



void tangent(){
    for (int q=-hrows; q<=hrows; q++){
     i[hrows+q].set(size,0);
     j[hrows+q].set(0,-tan(init*q)*size);
   }
    if (init<0.2){ 
    init+=inc; 
   }
}
