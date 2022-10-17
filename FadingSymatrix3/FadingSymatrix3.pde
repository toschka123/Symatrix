int decay = 20;
int ColorToChange= 3;
int Background = 255;
int colorCircle = 150;
int Amount = 200;
int colorSafe = 0;
int counter = 0;
Boolean stop = false;
int rCircle = 255;
int bCircle = 255;
int gCircle= 255;
int rBorder = 255;
int gBorder = 255;
int bBorder = 255 ;
int circleSize = decay; 
Boolean colorChangeMode = true;
Boolean sizeChangeMode = false;
float xoff=2.0; 
float yoff = 2.0;
int w = 1048;
int h = 1048;
int mountains = 100;
float amountOff =0.01;
float flying = 0;
float   pointsX[];
float pointsY[];
float tempStoreX=0.1;
float tempStoreY= 0.1;
float startX = random(0,1048);
float startY = random(0, 1048);
float xoff2;
float yoff2;
void setup(){
size( 1048, 1048);
background (255);
//stroke(255);
noStroke();
frameRate(30);

}

void draw(){
  if (keyPressed && key=='+'){decay=decay+2;}
    if (keyPressed && key=='-'){decay=decay-2;}
    if (keyPressed && key=='s'){stroke(255);}
     if (keyPressed && key=='S'){noStroke();}
     circleSize=decay;
  background(255);
  decay = int(noise(amountOff)*Amount);
  amountOff +=0.1;
  xoff = tempStoreX;
  yoff = tempStoreY;
  tempStoreX = xoff + random(0.005, 0.02);
  tempStoreY = yoff +random(0.005, 0.02);
  pointsX = new float[decay];
  pointsY = new float[decay];
  for(int i =0; i<decay;i++){
  xoff = xoff + .01;
  float x = noise(xoff) * width;
  float y = noise(yoff) * height;
  yoff = yoff + .02;
      pointsX[i] =int(x);
      pointsY[i] =int(y); //<>//
    
  }
    if(ColorToChange==3 && stop==false){
    ColorToChange=1;stop=true;}
    if(ColorToChange==2&& stop==false){
      ColorToChange=3;stop=true;}
  if(ColorToChange==1&& stop==false){ //<>//
    ColorToChange=2;stop=true;}
    counter += 1;
    if (counter==127){stop=false;counter=0;}
  //background(255);

      float shift = 255/decay;
  for(int i=0; i<decay;i++){
      if(ColorToChange==1){
      rCircle = i*int(shift);
      bCircle = bCircle - 1;
      gCircle = gCircle - 1;}
      if(ColorToChange==2){
      gCircle = i*int(shift);
       bCircle = bCircle - 1;
      rCircle = rCircle - 1;}
      if(ColorToChange==3)
      {bCircle = i*int(shift);
       rCircle = rCircle - 1;
      gCircle = gCircle - 1;}
      
      fill(rCircle, gCircle, bCircle);
      ellipse(pointsX[i], pointsY[i],circleSize-i, circleSize-i);
      ellipse(pointsY[i], pointsX[i],circleSize-i, circleSize-i);
      ellipse(1048-pointsX[i], 1048-pointsY[i],circleSize-i, circleSize-i);
      ellipse(1048-pointsX[i], pointsY[i],circleSize-i, circleSize-i);
      ellipse(pointsX[i], 1048-pointsY[i],circleSize-i, circleSize-i);
      ellipse(1048-pointsY[i],1048-pointsX[i],circleSize-i, circleSize-i);   
      ellipse( 1048-pointsY[i],pointsX[i],circleSize-i, circleSize-i);
      ellipse( pointsY[i],1048-pointsX[i],circleSize-i, circleSize-i);
      
      

  }


 /*
if (colorChangeMode==true){
if (colorToChange==1){ if(rCircle<256) {rCircle = rCircle+2;gCircle=gCircle-1;bCircle=bCircle-1;}}
if (colorToChange==1){if(rCircle>255) {colorToChange=2; }}
if (colorToChange==2){if( bCircle<256) {bCircle = bCircle+2;gCircle=gCircle-1;rCircle=rCircle-1;}}
if (colorToChange==2){if( bCircle>255) {colorToChange=3; }}
if (colorToChange==3){if(gCircle<256) {gCircle = gCircle+2;bCircle=bCircle-1;rCircle=rCircle-1;}}
if (colorToChange==3){if(gCircle>255) {colorToChange=1;}}}*/
}
