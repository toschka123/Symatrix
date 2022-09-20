int Background = 255;
int colorCircle = 150;
int colorToChange =1;
int rCircle = 0;
int bCircle = 0;
int gCircle= 0;
int rBorder = 255;
int gBorder = 255;
int bBorder = 255 ;
int circleSize = 40; 
Boolean colorChangeMode = false;
Boolean sizeChangeMode = false;
float XValue = 528 ;
float YValue = 528 ;
float movement[][];
float change=0;
float xoff=2.0; 
float yoff = 2.0;
Boolean posx = true;
Boolean posy = true;
int cols, rows;
int scl = 10;
int w = 1048;
int h = 1048;
int mountains = 100;
float flying = 0;
float[][] terrain;
float prob=0.5;


void setup(){
size( 1048, 1048);
background (255);
stroke(0);
frameRate(30);

}

void draw(){
  background(255);
  fill(rCircle, gCircle, bCircle);
    rows = h/scl;
  cols = w/scl;
  terrain= new float [cols][rows];

  float yoff = flying;
  for (int y= 0 ; y< rows; y++){
    float xoff = 0;
      for (int x=0; x< cols; x++){
        terrain[x][y] = map(noise(xoff, yoff),0 ,1 ,-40, 40);
        xoff +=0.2;
      }
    yoff += 0.2;}
    flying -= 0.1;
    
 for (int y= 0 ; y< rows-1; y++){ //<>//
  // beginShape();
      for (int x=0; x< cols-1; x++){
        if( terrain[x][y]>1){ //<>//
     ellipse(x*scl, y*scl, terrain[x][y], terrain[x][y]);
      ellipse(y*scl, x*scl, terrain[x][y], terrain[x][y]);
      ellipse(1048-x*scl, 1048-y*scl,terrain[x][y],terrain[x][y]);
      ellipse(1048-x*scl, y*scl,terrain[x][y],terrain[x][y]);
      ellipse(x*scl, 1048-y*scl,terrain[x][y],terrain[x][y]);
      ellipse(1048-y*scl,1048-x*scl,terrain[x][y],terrain[x][y]);
      
      ellipse( 1048-y*scl,x*scl,terrain[x][y],terrain[x][y]);
      ellipse( y*scl,1048-x*scl,terrain[x][y],terrain[x][y]);}
 //}}
}}

//  endShape();
if (colorChangeMode==true){
if (colorToChange==1){ if(rCircle<256) {rCircle = rCircle+2;gCircle=gCircle-1;bCircle=bCircle-1;}}
if (colorToChange==1){if(rCircle>255) {colorToChange=2; }}
if (colorToChange==2){if( bCircle<256) {bCircle = bCircle+2;gCircle=gCircle-1;rCircle=rCircle-1;}}
if (colorToChange==2){if( bCircle>255) {colorToChange=3; }}
if (colorToChange==3){if(gCircle<256) {gCircle = gCircle+2;bCircle=bCircle-1;rCircle=rCircle-1;}}
if (colorToChange==3){if(gCircle>255) {colorToChange=1;}}}

  
}
