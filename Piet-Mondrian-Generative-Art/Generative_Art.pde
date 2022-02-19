size(500, 500);
background(255, 255, 255);

float r = random(25, 475);
float b = random(25, 475);
float h = random(25, 475);

color[] artColors;

artColors = new color[5];
artColors[0] = color(255,0,0); //red
artColors[1] = color(30,144,255); //dodger blue
artColors[2] = color(255,255,0); //Yellow
artColors[3] = color(144,238,144); //light green
artColors[4] = color(105,105,105); //dim grey

int randomColor = (int)random(artColors.length);
int randomColor1 = (int)random(artColors.length);
int randomColor2 = (int)random(artColors.length);
int randomColor3 = (int)random(artColors.length);
int randomColor4 = (int)random(artColors.length);

//1
fill(artColors[randomColor]);
stroke(0);
strokeWeight(8);
rect(0, 0, r, h);

//2
fill(artColors[randomColor1]);
stroke(0);
strokeWeight(8);
rect(r + (500-r)/2, 0, (500-r)/2, h);

//3
fill(artColors[randomColor2]);
stroke(0);
strokeWeight(8);
rect(0, h, b, 500-h);

//4
fill(artColors[randomColor3]);
stroke(0);
strokeWeight(8);
rect(((500-b)/2)+b,h,(500-b)/2,500-h);

noFill();
stroke(0);
strokeWeight(20);
rect(0, 0, 500, 500);


noFill();
stroke(0);
strokeWeight(10);
rect(0, 0, 500, h);
