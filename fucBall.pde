

//har lavet den her uden hjælp fra de andre
//ved ikke hvorfor den fucker
//men har prøvet mit bedste
//det er noget med if-statementsne der går galt
//VED IKKE HVAD


int ballX = 1; int ballY = 1;
int speedX = 5; int speedY = 5;

int rectX = 250; int rectY = 250;
float rectSizeX = 600; float rectSizeY = 500;

float roomSize = 1;


void setup() {
  size(500, 500);
}

void draw () {
  size(500, 500);
  ballX+=speedX;
  ballY+=speedY;

  clear();
  //centrerer firkant + PINK
  rectMode(CENTER); fill(255,105,180);
  
  //tegner firkant og bold
  rect(rectX,rectY,rectSizeX,rectSizeY);
  ellipse (ballX, ballY, 20, 20);

  //gør 'rummet' mindre
  roomSize*=.999999;

  rectSizeY*=roomSize;
  rectSizeX*=roomSize;



  //if-statements til når bolden rammer kanten
  if (ballX>0.5*width+0.5*rectSizeX||ballX<0.5*width-0.5*rectSizeX)
    speedX=-1*speedX;

  if (ballY>0.5*height+0.5*rectSizeY||ballY<0.5*height-0.5*rectSizeY)
    speedY=-1*speedY;
    
    
    
    
    
    
    
    
}
