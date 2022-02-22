////functions
size(800, 800);
background(10);
blendMode(ADD);
println(random(5)); 


int i = 0;
while(i < 10){
  i = i+1;
  println(i);
  
  int j = 0; 
  while(j < 10){
    j = j + 1;
    
    int posX = i * 80;
    int posY = j * 80;
    float dist = random(10);
    float col = random(255);
    
    float squareSize = random(50);
    
    fill(col, 0, 0);
    rect(posX, posY, squareSize, squareSize);
    fill(0, col, 0);
    rect(posX+dist, posY+dist, squareSize, squareSize);
    fill(0, 0, col);
    rect(posX+dist*2, posY+dist*2, squareSize, squareSize);
  }
}
