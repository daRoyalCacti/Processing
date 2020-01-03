PrintWriter output;

void setup(){
  output = createWriter("positions.txt");
}

void draw(){
  point(mouseX, mouseY);
  output.println(mouseX + " " + mouseY);
}

void keyPressed(){
 output.flush();
 output.close();
 exit();
}
