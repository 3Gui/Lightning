int startX = 150;
int endX = 150;
int startY = 0;
int endY = 0;
double offset = (Math.random() * 151);
int posCharge = 0;
float craterSize = (float) (Math.random()*50 + 20);
boolean tealios = false;


void setup() {
  size(500,500);
  background(50);
  frameRate(15);
  land();
  drawTree();
  clouds();
  fill(10,100,255);
  textSize(50);
  text('+',(float)(Math.random() * 401 +50),(float)(Math.random() * 91+ 425));
 
}

void draw() {
  strokeWeight(5);
  fill((float)Math.random() * 256, (float) Math.random() * 256, (float) Math.random() * 256);
  stroke((float) Math.random() * 256, (float) Math.random() * 256, (float) Math.random() * 256);

  endX = startX;
  startX = (int)((Math.random() * 251) + 125);
  if (posCharge == 2){
  while (endY < (500 - offset )) {
    endX += ( Math.random() * 30 - 15);
    endY += (Math.random() * 10);
    line(startX, startY, endX, endY);
    startX = endX;
    startY = endY;
  }
  
  }
  if (tealios == true){
    
    drawImpact();
    tealios = false;
    
  }
}



void reset(){
  background(50);
  craterSize = (float) (Math.random()*50 +20);
  land();
  clouds();
  posCharge = 0;
  drawTree();
  offset = (Math.random() * 151);
  startX = 150;
  endX = 150;
  startY = 0;
  endY = 0;
  
}
void mousePressed() {
  posCharge += 1 ;
  if (posCharge == 3){
 reset();
  }
  else if (posCharge==2){
     tealios = true;
  }
fill(10,100,255);
textSize(50);
 text('+',(float)(Math.random() * 401 +50),(float)(Math.random() * 91+ 400)); 
}

void clouds(){
  noStroke();
  fill(150);
  ellipse(250,75,400,100);
  
  ellipse(100,85,130,120);
  ellipse(150,75,120,160);
  ellipse(200,75,140,130);
  ellipse(250,75,150,170);
  ellipse(300,75,150,150);
  ellipse(350,75,140,180);
  ellipse(400,75,150,130);
  
  fill(20,150,50);
  textSize(50);
  text('-',(float)(Math.random() * 300 +100),(float)(Math.random() * 75 + 30));
  text('-',(float)(Math.random() * 300 +100),(float)(Math.random() * 75 + 30));
  text('-',(float)(Math.random() * 300 +100),(float)(Math.random() * 75 + 30));
  text('-',(float)(Math.random() * 300 +100),(float)(Math.random() * 75 + 30));
  text('-',(float)(Math.random() * 300 +100),(float)(Math.random() * 75 + 30));
  text('-',(float)(Math.random() * 300 +100),(float)(Math.random() * 75 + 30));
  text('-',(float)(Math.random() * 300 +100),(float)(Math.random() * 75 + 30));
  
  
}

void land(){
fill(50,200,75);
  noStroke();
  rect(0,350,500,150);
  
}

void drawImpact(){
  noStroke();
  fill(100,25,25);
  
  ellipse(endX,endY + 5 ,craterSize,craterSize - 5 );
  fill(100);
  ellipse(endX,endY + 5,craterSize*3/4,craterSize*3/4 - 5);
  fill(0);
  ellipse(endX,endY + 5,craterSize/2, craterSize/2 - 5);
  
}

void drawTree(){
  strokeWeight(2);
  noStroke();
  fill(200,100,75);
  rect(350,325,40,100);
  fill(50,150,75);
  ellipse(370,300,100,100);
  ellipse(340,310,65,65);
  ellipse(400,310,65,65);
}
