
int nv=9; //number of vectors per ring -1
int nr = 60; //number of rings -1

ArrayList<Vector> dash = new ArrayList<Vector>();

void setup(){
  size(1920,1080);
  frameRate(60);

  for (int w=0; w<nr+1; w++){
    for (int q=0; q<nv+1; q++){
    dash.add(new Vector((w+1)*10, 2 ,0.01, w*PI/(2*(nr+1)))); //creates new vectors, nv vectors per ring, nr rings, equally spaced, each ring is slightly offset from the previous, distnace of 10 between rings
    }
  }
}


void draw(){
  
  translate(width/2, height/2);
  background(255);
  stroke(0);
  strokeWeight(2); 

  for (int q=0; q<dash.size(); q++){      
      Vector Test = dash.get(q);
      Test.draws();
      Test.spin();
      //Test.testing();
  }

}
