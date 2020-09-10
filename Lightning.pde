int startX = (int)((Math.random() * 251) + 129);
int endX = 150;
int startY = 100;
int endY = 100;
double offset = (Math.random() * 76) + 75;
int posCharge = 0;
float craterSize = (float) (Math.random()*50 + 20);
int opacity = 500;
float colorR1 = (float) Math.random() * 256;
float colorR2 = (float) Math.random() * 256;
float colorR3 = (float) Math.random() * 256;
float strokeW =(float) Math.random() * 10 +10;


void setup() {
  size(500,500);
  background(50);
  frameRate(60);
  land();
  drawTree();
  clouds();
  fill(10,100,255);
  textSize(50);
  text('+',(float)(Math.random() * 401 +50),(float)(Math.random() * 91+ 425));
  
}

void draw() {
  frameRate(30);
  clouds();
  strokeWeight(strokeW);
  strokeW -=(strokeW/50);
  
  //fill((float)Math.random() * 256, (float) Math.random() * 256, (float) Math.random() * 256);
  stroke(colorR1, colorR2, colorR3);
  //startX = (int)((Math.random() * 251) + 125);
  //endX = startX;
//frameRate(60);
  if (posCharge == 2){
    bolt();
    if (posCharge>= 3){
       bolt();
      
    }
   
  }
  if (endY > (500 - offset )) {
    drawImpact();
    clouds();
    noLoop();
   
    //issue: lightning bolt no resetting though reset function working fine
  }
  
  //if (polaris ==true){
  //  reset();
 // }
  
}

void reset(){
  strokeW =(float) Math.random() * 10 +10;
  colorR1 = (float) Math.random() * 256;
  colorR2 = (float) Math.random() * 256;
  colorR3 = (float) Math.random() * 256;
  background(50);
  craterSize = (float) (Math.random()*50 +20);
  land();
  clouds();
  posCharge = 0;
  drawTree();
  offset = (Math.random() * 151);
  startX = (int)((Math.random() * 251) + 129);
  endX = startX;
  startY = 100;
  endY = 100;
  loop();
  
}

void bolt(){
  endX += ( Math.random() * 30 - 15);
    endY += (Math.random() * 15);
    if (keyCode == RIGHT){
    endX += 10;  
  }
  if (keyCode == LEFT){
    endX -= 10;  
  }
    line(startX, startY, endX, endY);
    startX = endX;
    startY = endY;
  
}
void mousePressed() {
  posCharge += 1 ;
 // if (posCharge >= 3){
   //clear();
   
   //reset();
 // }

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
  text('-',(float)(Math.random() * 300 +107),(float)(Math.random() * 75 + 30));
  text('-',(float)(Math.random() * 300 +107),(float)(Math.random() * 75 + 30));
  text('-',(float)(Math.random() * 300 +107),(float)(Math.random() * 75 + 30));
  text('-',(float)(Math.random() * 300 +107),(float)(Math.random() * 75 + 30));
  text('-',(float)(Math.random() * 300 +107),(float)(Math.random() * 75 + 30));
  text('-',(float)(Math.random() * 300 +107),(float)(Math.random() * 75 + 30));
  text('-',(float)(Math.random() * 300 +107),(float)(Math.random() * 75 + 30));
  
  
}

void land(){
fill(50,200,75);
  noStroke();
  rect(0,350,500,150);
  
}

void drawImpact(){
  noStroke();
  fill(100,25,25);
  //shrapnel
  ellipse(endX + (float)(Math.random()*0)+craterSize/1.5 ,endY +(float)(Math.random() * 50 -25), 7,7);
  ellipse(endX +(float)(Math.random() * 50 -25),endY  + (float)(Math.random()*0)+craterSize/1.5, 4,4);
  rect(endX - ((float)(Math.random()*10)-5+craterSize/1.5) ,endY +(float)(Math.random() * 50 -25), 5,5);
  rect(endX +(float)(Math.random() * 50 -25)  ,endY  - ((float)(Math.random()*0)+craterSize/1.5), 5,5);
  
  
  
  ellipse(endX,endY + 5 ,craterSize,craterSize - 5 );
  fill(100);
  //shrapnel
  ellipse(endX + (float)(Math.random()*0)+craterSize/1.5 ,endY +(float)(Math.random() * 50 -25), 7,7);
  ellipse(endX +(float)(Math.random() * 50 -25),endY  + (float)(Math.random()*0)+craterSize/1.5, 4,4);
  rect(endX - ((float)(Math.random()*10)-5+craterSize/1.5) ,endY +(float)(Math.random() * 50 -25), 5,5);
  rect(endX +(float)(Math.random() * 50 -25)  ,endY  - ((float)(Math.random()*0)+craterSize/1.5), 5,5);
  
  ellipse(endX,endY + 5,craterSize*3/4,craterSize*3/4 - 5);
  fill(0);
  ellipse(endX,endY + 5,craterSize/2, craterSize/2 - 5);
  
 
  
}

void drawTree(){
  strokeWeight(2);
  noStroke();
  fill(200,100,75);
  rect(375,325,40,100);
  fill(50,150,75);
  ellipse(395,300,100,100);
  ellipse(365,310,65,65);
  ellipse(425,310,65,65);
}


void keyPressed() {
  if (keyCode == ENTER){
    reset();  
  }
  
}
