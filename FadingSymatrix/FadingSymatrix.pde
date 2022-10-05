int decay = 100;
int Background = 255;
int colorCircle = 150;
int colorToChange =1;
int rCircle = 0;
int bCircle = 0;
int gCircle= 0;
int rBorder = 255;
int gBorder = 255;
int bBorder = 255 ;
int circleSize = 35; 
Boolean colorChangeMode = true;
Boolean sizeChangeMode = false;
float xoff=2.0; 
float yoff = 2.0;
int w = 1048;
int h = 1048;
int mountains = 100;
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
//stroke(0);
noStroke();
frameRate(30);

}

void draw(){
  background(255);
  xoff = tempStoreX;
  yoff = tempStoreY;
  tempStoreX = xoff + random(0.01, 0.02);
  tempStoreY = yoff +random(0.01, 0.02);
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
  
  //background(255);
  fill(rCircle, gCircle, bCircle);
  for(int i=0; i<decay;i++){
      
      ellipse(pointsX[i], pointsY[i],circleSize, circleSize);
      ellipse(pointsY[i], pointsX[i],circleSize, circleSize);
      ellipse(1048-pointsX[i], 1048-pointsY[i],circleSize, circleSize);
      ellipse(1048-pointsX[i], pointsY[i],circleSize, circleSize);
      ellipse(pointsX[i], 1048-pointsY[i],circleSize, circleSize);
      ellipse(1048-pointsY[i],1048-pointsX[i],circleSize, circleSize);   
      ellipse( 1048-pointsY[i],pointsX[i],circleSize, circleSize);
      ellipse( pointsY[i],1048-pointsX[i],circleSize, circleSize);
      
      

  }
 endShape();
if (colorChangeMode==true){
if (colorToChange==1){ if(rCircle<256) {rCircle = rCircle+2;gCircle=gCircle-1;bCircle=bCircle-1;}}
if (colorToChange==1){if(rCircle>255) {colorToChange=2; }}
if (colorToChange==2){if( bCircle<256) {bCircle = bCircle+2;gCircle=gCircle-1;rCircle=rCircle-1;}}
if (colorToChange==2){if( bCircle>255) {colorToChange=3; }}
if (colorToChange==3){if(gCircle<256) {gCircle = gCircle+2;bCircle=bCircle-1;rCircle=rCircle-1;}}
if (colorToChange==3){if(gCircle>255) {colorToChange=1;}}}
}
