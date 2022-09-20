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
float[][] terrain;

float startX = random(0,1048);
float startY = random(0, 1048);
float xoff2;
float yoff2;
void setup(){
size( 1048, 1048);
background (255);
stroke(0);
frameRate(30);

}

void draw(){
  //background(255);
  fill(rCircle, gCircle, bCircle);
  xoff = xoff + .01;
  float x = noise(xoff) * width;
  float y = noise(yoff) * height;
  yoff = yoff + .02;
  int(x);
  int(y);
      beginShape();
      ellipse(x, y,circleSize, circleSize);
      ellipse(y, x,circleSize, circleSize);
      ellipse(1048-x, 1048-y,circleSize, circleSize);
      ellipse(1048-x, y,circleSize, circleSize);
      ellipse(x, 1048-y,circleSize, circleSize);
      ellipse(1048-y,1048-x,circleSize, circleSize);   
      ellipse( 1048-y,x,circleSize, circleSize);
      ellipse( y,1048-x,circleSize, circleSize);
      endShape();
 
 
if (colorChangeMode==true){
if (colorToChange==1){ if(rCircle<256) {rCircle = rCircle+2;gCircle=gCircle-1;bCircle=bCircle-1;}}
if (colorToChange==1){if(rCircle>255) {colorToChange=2; }}
if (colorToChange==2){if( bCircle<256) {bCircle = bCircle+2;gCircle=gCircle-1;rCircle=rCircle-1;}}
if (colorToChange==2){if( bCircle>255) {colorToChange=3; }}
if (colorToChange==3){if(gCircle<256) {gCircle = gCircle+2;bCircle=bCircle-1;rCircle=rCircle-1;}}
if (colorToChange==3){if(gCircle>255) {colorToChange=1;}}}
}
