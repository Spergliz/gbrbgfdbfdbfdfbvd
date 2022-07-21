//Global Variables
float buttonX1, ButtonY1, buttonWidth1, buttonHeight1;
float buttonX2, buttonY2, buttonWidth2, buttonHeight2;
float  rectDisplayX, rectDisplayY, rectDisplayWidth, rectDsiplayHeight ;
float ellipseDisplayX, EllipseDisplayY, ellipseDisplayXdiameter, ellipseDisplaydiameter;
color black=#000000, green=#116C12;//nightmode
boolean rectON=false, ellipseON=false;
//
String buttonText1="click";
String buttonText2="or here";
PFont buttonFont;
color white=#FFFFFF;
void setup()
{
  //Display
  size(800, 600);
  println (width, height, displayWidth, displayHeight);
  int appWidth = width;
  int appHeight = height;
  if ( width > displayWidth || height > displayHeight ) {
    //CANVAS Too Big
    appWidth = displayWidth;
    appHeight = displayHeight;
    println("CANVAS needed to be readjusted to fit on your monitor.");
  } else {
    println("CANVAS is Good to go on your display.");
  }
  String ls="Landscape or Square", p="portraint", DO="Display Orientation:", instruct="Bru, turn your phun";
  String orientation = ( appWidth>=appHeight ) ? ls : p; //turning opt
  println( DO, orientation );
  if ( orientation==ls ) { //Test
    println("Good to Go");
  } else {
    appWidth *= 0; //asignment operator, works like appWidth=appWidth*0
    appHeight *= 0;
    println (instruct);
  }
  // 
  //Populiation
  int centerX=appWidth*1/2;
  int centerY= appHeight*1/2;
  buttonX1= centerX-appWidth*1/4;
  ButtonY1 = centerY+appHeight*1/4;
  buttonWidth1= appWidth*1/4;
  buttonHeight1= appHeight*1/4;
  buttonX2 = centerX+appWidth*1/4;
  buttonY2 =ButtonY1;
  buttonWidth2 = buttonWidth1; 
  buttonHeight2=buttonHeight1;
  rectDisplayX=buttonX1;
  rectDisplayY= centerY-appHeight*1/4;
  rectDisplayWidth= buttonWidth1;
  rectDsiplayHeight=buttonHeight1;
  ellipseDisplayX=buttonX2;
  EllipseDisplayY= rectDisplayY;
  ellipseDisplayXdiameter= appWidth*1/3;
  ellipseDisplaydiameter= appHeight*1/4;
    //
   //String[] font list=Pfont
   println("start of console");
   buttonFont = createFont("Edo SZ", 30);
}//End setup
//
void draw()
{
  background (black);
  rect(buttonX1, ButtonY1, buttonWidth1, buttonHeight1);
  rect(buttonX2, buttonY2, buttonWidth2, buttonHeight2);
  if (rectON==true)rect( rectDisplayX, rectDisplayY, rectDisplayWidth, rectDsiplayHeight );//1
  if (ellipseON==true)ellipse(ellipseDisplayX, EllipseDisplayY, ellipseDisplayXdiameter, ellipseDisplaydiameter);// 2
  fill (green);
  textAlign (CENTER, CENTER);
  textFont(buttonFont, 20);
  //
  text(buttonText1, buttonX1, ButtonY1,buttonWidth1,buttonHeight1);
  fill(white);
}//End draw
//
void keyPressed() {
}//End keyPressed
//
void mousePressed() {
  rectON=false;
  ellipseON=false;
  if (mouseX>=buttonX1 && mouseX<=buttonX1+buttonWidth1 && mouseY>=ButtonY1 && mouseY<=ButtonY1+buttonHeight1) rectON=true;
  if (mouseX>=buttonX2 && mouseX<=buttonX1+buttonWidth2 && mouseY>=buttonY2 && mouseY<=buttonY2+buttonHeight2) rectON=true;

  
}//End
//
//End main
