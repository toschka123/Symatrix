Boolean mouseVisible = false;
int circleSize =55;
Boolean stream0 = true;
Boolean stream1 = true;
Boolean stream2 = true;
Boolean stream3 = true;
Boolean stream4 = true;
Boolean stream5 = true;
Boolean stream6 = true;
Boolean stream7 = true;
Boolean stream8 = true;
Boolean triangle = false;
Boolean tutorial = false;

int colorCircle = 150;
int colorToChange =1;
int rCircle = 0;
int bCircle = 0;
int gCircle= 0;
int rBorder = 255;
int gBorder = 255;
int bBorder = 255 ;
Boolean colorChangeMode = false;
Boolean sizeChangeMode = false;
int redValue=0;
int blueValue=0;
int greenValue=0;
Boolean ShouldGrow = false;
Boolean Pulsating = false;
Boolean DavidTriangle= false;
void setup(){
size(1048,1048);
background(255);
}
void draw()
{


if (mouseVisible == false) { //hide cursor
    noCursor();} 
if (keyPressed){ if(key=='g'){gBorder = 255; bBorder = 0 ; rBorder = 0;}}
if (keyPressed){ if(key=='r'){gBorder = 0; bBorder = 0 ; rBorder = 255;}}
if (keyPressed){ if(key=='b'){gBorder = 0; bBorder = 255 ; rBorder = 0;}}
if (keyPressed){ if(key=='y'){gBorder = 255; bBorder = 255 ; rBorder = 255;}}
if (keyPressed){ if(key=='Y'){rCircle=255; bCircle=255; gCircle=255;}}
if (keyPressed){ if(key=='x'){gBorder = 0; bBorder = 0 ; rBorder = 0;}}
if (keyPressed){ if(key=='a'){rCircle=rCircle+2;}}
if (keyPressed){ if(key=='s'){gCircle=gCircle+2;}}
if (keyPressed){ if(key=='d'){bCircle=bCircle+2;}}
if (keyPressed){ if(key=='A'){rCircle=rCircle-2;}}
if (keyPressed){ if(key=='S'){gCircle=gCircle-2;}}
if (keyPressed){ if(key=='D'){bCircle=bCircle-2;}}
if (keyPressed){ if(key=='q'){rBorder=rBorder+2;}}
if (keyPressed){ if(key=='w'){gBorder=gBorder+2;}}
if (keyPressed){ if(key=='e'){bBorder=bBorder+2;}}
if (keyPressed){ if(key=='Q'){rBorder=rBorder-2;}}
if (keyPressed){ if(key=='W'){gBorder=gBorder-2;}}
if (keyPressed){ if(key=='E'){bBorder=bBorder-2;}}
if (keyPressed){ if(key=='X'){rCircle=0; bCircle=0; gCircle=0;}}
if(keyPressed){if(key=='t'){tutorial=false;}}
if(keyPressed){if(key=='T'){tutorial=true;}}
if(keyPressed){if(key=='i'){rCircle=int(random(0,255));gCircle=int(random(0,255));bCircle=int(random(0,255));}}
if(keyPressed){if(key=='c'){colorChangeMode=true;rCircle=0;bCircle=127;gCircle=127;}}
if(keyPressed){if(key=='C'){colorChangeMode=false;}}



if (keyPressed){ 
  if (key=='1'){stream0=true;}
  if (key=='!'){stream0=false;}}
if (keyPressed){ 
  if (key=='2'){stream1=true;}
  if (key=='"'){stream1=false;}}
if (keyPressed){ 
  if (key=='3'){stream2=true;}
  if (key=='§'){stream2=false;}}
if (keyPressed){ 
  if (key=='4'){stream3=true;}
  if (key=='$'){stream3=false;}}
if (keyPressed){ 
  if (key=='5'){stream4=true;}
  if (key=='%'){stream4=false;}}
if (keyPressed){ 
  if (key=='6'){stream5=true;}
  if (key=='&'){stream5=false;}}
if (keyPressed){ 
  if (key=='7'){stream6=true;}
  if (key=='/'){stream6=false;}}
if (keyPressed){ 
  if (key=='8'){stream7=true;}
  if (key=='('){stream7=false;}}
  if (keyPressed){ 
  if (key=='9'){triangle=true;}
  if (key==')'){triangle=false;}}
  if (keyPressed){ 
  if (key=='p'){Pulsating=true;}
  if (key=='P'){Pulsating=false;}}
    if (keyPressed){ 
  if (key=='ü'){DavidTriangle=true;}
  if (key=='Ü'){DavidTriangle=false;}}
      

if (keyPressed){if (key=='+'){circleSize = circleSize + 2;}}
if (keyPressed){if (key=='-'){circleSize = circleSize - 2;}}

if (keyPressed){
  if (key==' '){
    background(0);}
  if (key== ';'){
  background(255);}}

if(ShouldGrow==true){if(circleSize>60){ShouldGrow=false;}}
if(ShouldGrow==false){if (circleSize<-60){ShouldGrow=true;}}
if(Pulsating==true){if (ShouldGrow==true){circleSize=circleSize + 1;}}        
if(Pulsating==true){if (ShouldGrow==false){circleSize=circleSize - 1;}}        

fill(rCircle, gCircle, bCircle);
stroke(rBorder,gBorder,bBorder);

if (tutorial==true){fill(0);
textSize(13);
text("The buttons from 1-8 enable different streams", 300, 460);
text("The buttons 1-8 + SHIFT disable the different streams", 300, 480);
text("The circle outline can be adjusted with r for red, g for green, b for blue, for white y, for random i", 300 ,500);
text("Space for blackground, white for whiteground", 300, 520);
text("You can gradually cycle through the circle color by pressing a or s, reset to black with B and white with W", 300, 540);
text("Have", 300, 560);
text("Fun", 300, 580);
text("<3", 300, 600);
text("Press t to disable the Tutorial, press T to show it again", 300, 900);
text("Press v and x to toggle colorchanging mode", 320, 900);}
if (colorChangeMode==true){
if (colorToChange==1){ if(rCircle<256) {rCircle = rCircle+2;gCircle=gCircle-1;bCircle=bCircle-1;}}
if (colorToChange==1){if(rCircle>255) {colorToChange=2; }}
if (colorToChange==2){if( bCircle<256) {bCircle = bCircle+2;gCircle=gCircle-1;rCircle=rCircle-1;}}
if (colorToChange==2){if( bCircle>255) {colorToChange=3; }}
if (colorToChange==3){if(gCircle<256) {gCircle = gCircle+2;bCircle=bCircle-1;rCircle=rCircle-1;}}
if (colorToChange==3){if(gCircle>255) {colorToChange=1;}}}

if (stream0==true){ //copy mouse movement
    ellipse(mouseX, mouseY, circleSize, circleSize);
    }
    
if (stream1==true){ //invert x and y
      ellipse(mouseY, mouseX, circleSize, circleSize);
}
if (stream2==true){ //invert y
   ellipse(1048-mouseX, 1048-mouseY,circleSize,circleSize);}
if (stream3==true){
   ellipse(1048-mouseX, mouseY,circleSize,circleSize);}
if (stream4==true){
   ellipse(mouseX, 1048-mouseY,circleSize,circleSize);}
if (stream5==true){ellipse(1048-mouseY,1048-mouseX,circleSize,circleSize);}

if (stream6==true){ellipse( 1048-mouseY,mouseX,circleSize,circleSize);}
if (stream7==true){ellipse( mouseY,1048-mouseX,circleSize,circleSize);}

}
