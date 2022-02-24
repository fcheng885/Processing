//int x0 = 50;         
//int x1 = 61;                        
//int x2 = 83;
//int x3 = 69;
//int x4 = 71;
//int x5 = 50;
//int x6 = 29;
//int x7 = 31;
//int x8 = 17;
//int x9 = 39;

//int[] x = { 50, 61, 83, 69, 71, 50, 29, 31, 17, 39 };



//int[] x = {
//  50, 61, 83, 69, 71, 50, 29, 31, 17, 39
//};

//fill(0);
//// Read one array element each time through the for loop
//for (int i = 0; i < x.length; i++) {
//  rect(0, i*10, x[i], 8);
//}




//float[] sineWave;

//void setup() {
//  size(500, 500);
//  sineWave = new float[width];
//  for (int i = 0; i < sineWave.length; i++) {
//    // Fill array with values from sin()
//    float r = map(i, 0, width, 0, 4*PI);
//    sineWave[i] = abs(sin(r));
//  }
//}

//void draw() {
//  for (int i = 0; i < sineWave.length; i++) {
//    // Set stroke values to numbers read from array
//    stroke(sineWave[i] * 200);
//    line(i, 0, i, height);
//  }
//}



//int[] y;

//void setup() {
//  size(500, 500);
//  y = new int[width];
//}

//void draw() {
//  background(204); // Read the array from the end to the
//  // beginning to avoid overwriting the data
//  for (int i = y.length-1; i > 0; i--) {
//    y[i] = y[i-1];
//  }
//  // Add new values to the beginning
//  y[0] = mouseY;
//  // Display each pair of values as a line
//  for (int i = 1; i < y.length; i++) {
//    line(i, y[i], i-1, y[i-1]);
//  }
//}



//int num = 50;
//int[] x = new int[num];
//int[] y = new int[num];

//void setup() {
//  size(500, 500);
//  noStroke();
//  fill(200, 102, 0);
//}

//void draw() {
//  background(0);
//  // Shift the values to the right
//  for (int i = num-1; i > 0; i--) {
//    x[i] = x[i-1];
//    y[i] = y[i-1];
//  }
//  // Add the new values to the beginning of the array
//  x[0] = mouseX;
//  y[0] = mouseY;
//  // Draw the circles
//  for (int i = 0; i < num; i++) {
//    ellipse(x[i], y[i], i/2.0, i/2.0);
//  }
//}



//Ring[] rings; // Declare the array
//int numRings = 50;
//int currentRing = 0;
//void setup() {
//  size(500, 500);
//  rings = new Ring[numRings]; // Create the array
//  for (int i = 0; i < rings.length; i++) {
//    rings[i] = new Ring(); // Create each object
//  }
//}
//void draw() {
//  background(0);
//  for (int i = 0; i < rings.length; i++) {
//    rings[i].grow();
//    rings[i].display();
//  }
//}
//// Click to create a new Ring
//void mousePressed() {
//  rings[currentRing].start(mouseX, mouseY);
//  currentRing++;
//  if (currentRing >= numRings) {
//    currentRing = 0;
//  }
//}
//class Ring {
//  float x, y;          // X-coordinate, y-coordinate
//  float diameter;      // Diameter of the ring
//  boolean on = false;  // Turns the display on and off

//  void start(float xpos, float ypos) {
//    x = xpos;
//    y = ypos;

//    diameter = 1;
//    on = true;
//  }

//  void grow() {
//    if (on == true) {
//      diameter += 0.5;
//      if (diameter > 400) {
//        on = false;
//        diameter = 1;
//      }
//    }
//  }

//  void display() {
//    if (on == true) {
//      noFill();
//      strokeWeight(4);
//      stroke(204, 153);
//      ellipse(x, y, diameter, diameter);
//    }
//  }
//}





Spot[] spots; // Declare array
void setup() {
  size(700, 500);
  int numSpots = 70; // Number of objects
  int dia = width/numSpots; // Calculate diameter
  spots = new Spot[numSpots]; // Create array
  for (int i = 0; i < spots.length; i++) {
    float x = dia/2 + i*dia;
    float rate = random(0.1, 2.0);
    // Create each object
    spots[i] = new Spot(x, 50, dia, rate);
  }
  noStroke();
}
void draw() {
  fill(0, 12);
  rect(0, 0, width, height);
  fill(255);
  for (int i=0; i < spots.length; i++) {
    spots[i].move(); // Move each object
    spots[i].display(); // Display each object
  }
}
class Spot {
  float x, y;         // X-coordinate, y-coordinate
  float diameter;     // Diameter of the circle
  float speed;        // Distance moved each frame
  int direction = 1;  // Direction of motion (1 is down, -1 is up)

  // Constructor
  Spot(float xpos, float ypos, float dia, float sp) {
    x = xpos;
    y = ypos;
    diameter = dia;
    speed = sp;
  }

  void move() {
    y += (speed * direction);
    if ((y > (height - diameter/2)) || (y < diameter/2)) {
      direction *= -1;
    }
  }

  void display() {
    ellipse(x, y, diameter, diameter);
  }
}
