import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class DynamicMeasles extends PApplet {

//Global Variables
int appWidth, appHeight;
int reset, smallerDisplayDimension, mouthOpen;
int whiteReset;
Boolean nightMode=false;
//
float eyeDiameter;
float iDiameter;
float pDiameter;
float faceX, faceY, faceDiameter;
//
int iris;
int pupil;
//
public void setup() 
{
   //teacher is using size(600, 400); need to use displayWidth and displayHeight
  displaySetup();
  population();
  faceSetup();
  displayButtonOrientation();
  hat();
  texter();
}//End setup
//
public void draw() 
{ 
  leftEyeDraw();
  rightEyeDraw();
  noseDraw();
  mouthDraw();
  measleDraw();
  quitButtonDraw();
}//End setup
//
public void keyPressed() 
{
  quitButtonkeyPressed();
}//End setup
//
public void mousePressed() 
{
  quitButtonmousePressed();
}//End setup
public void displaySetup() 
{
  //Display Geometry
  //Landscape, not square or portrait
  println(width, height, displayWidth, displayHeight); //Verification of values
  appWidth = displayWidth; 
  appHeight = displayHeight;
  println(appWidth, appHeight); //Canvas Flexibility
  //
  //Display Orientation
  //Purpose: a few comparisons of IFs to ID orientation (similar to image() aspect ratio calculations)
  //Computer Tells us the orientation, important for Cell Phone Orientaation
  //-tell user specific orientation
  //if (appWidth >= appWidth ) {println("Landscape or Square");} else {println("Portrait");}
  String ls="Landscape or Square", p="Portrait", DO="Display Orientation", instruct="Bro, turn your phone";
  String orientation = (appWidth >= appHeight ) ? ls : p; //Ternary Operator, repeats IF-ELSE
  //String orientation = (appWidth >= appHeight ) ? "Landscape or Square": "Portrait"; //Ternary Operator, repeats IF-ELSE
  println(DO, orientation);
  //println("Display Orientation:", orientation); //Verify variables
  if ( orientation==p ) println(instruct);
  //With Strings, easier to print to console or canvas
  //if ( orientation=="Portrait" ) println("Turn your phone");
    //Empty IF
  /*
  if ( orientation=="Landscape or Square" ) {
   //Empty IF
   } else { 
   println("Turn your phone"); //FUN
   }
   */
  //
}//End displaySetup
//
public void displayButtonOrientation() 
{
  //Landscape, not portrait nor square
  String landscape = "You are good to go!";
  String portrait = "Bruh, turn your phone!";
  String displayOrientation = ( displayWidth >= displayHeight ) ? landscape : portrait ;
  if ( displayOrientation==portrait ) println ( displayOrientation ); //Portrait Display Orientation
  if ( displayOrientation==landscape ) appWidth = displayWidth; //option diplayWidth
  if ( displayOrientation==landscape ) appHeight = displayHeight; //option displayHeight
  println (appWidth, appHeight); //Will be NULL if portrait ... until landscape (future lesson)
}//End displayOrientation
//Global Variables
float rectFaceX, rectFaceY, rectFaceWidth, rectFaceHeight;
//
public void faceSetup() 
{
  //Face: Circle = Inscribing a Circle in a Square
  //Center a circle on display orientation
  //rect(rectFaceX, rectFaceY, rectFaceWidth, rectFaceHeight);
  ellipse(faceX, faceY, faceDiameter, faceDiameter);
}//End faceSetup
//Global Variables
float hatX1, hatY1, hatX2, hatY2;
float hatX, hatY, hatWidth, hatHeight;
float rectXHat, rectYHat, rectWidthHat, rectHeightHat;
PImage hat;
int hatintWidth = 860; 
int hatintHeight = 641;
int largerHatDimension, smallerHatDimension;
float hatWidthRatio=0.0f, hatHeightRatio=0.0f;
Boolean widthHatLarger=false, heightHatLarger=false;
float hatWidthAdjusted, hatHeightAdjusted;
int hatColor;
//
public void hat() 
{
  hatX = rectXHat;
  hatY = rectYHat;
  hatWidth = rectWidthHat;
  hatHeight = rectHeightHat;
  if ( hatintWidth >= hatintHeight ) { //ID Larger Dimension: Landscape and Square
    largerHatDimension = hatintWidth;
    smallerHatDimension = hatintHeight;
    widthHatLarger = true;
  } else { //ID Larger Dimension: Portrait mode
    largerHatDimension = hatintHeight;
    smallerHatDimension = hatintWidth;
    heightHatLarger = true;
  } //End pic1 larger dimension
  //
  println(smallerHatDimension, largerHatDimension);
  //
  if ( widthHatLarger == true ) hatWidthRatio = PApplet.parseFloat (largerHatDimension) / PApplet.parseFloat (largerHatDimension);
  if ( widthHatLarger == true ) hatHeightRatio = PApplet.parseFloat (smallerHatDimension) / PApplet.parseFloat (largerHatDimension);
  if ( heightHatLarger == true ) hatWidthRatio = PApplet.parseFloat (smallerHatDimension) / PApplet.parseFloat (largerHatDimension);
  if ( heightHatLarger == true ) hatHeightRatio = PApplet.parseFloat (largerHatDimension) / PApplet.parseFloat (largerHatDimension);
  println(hatWidthRatio, hatHeightRatio);
  //
  rectXHat = hatX; 
  rectYHat = hatY; 
  rectWidthHat = hatWidth; 
  rectHeightHat = hatHeight;
  /*
  rectXHat = rectFaceX; 
  rectYHat = rectFaceY; 
  rectWidthHat = rectFaceWidth; 
  rectHeightHat = rectFaceHeight*1/4;
  */
  //
  hatWidthAdjusted = rectWidthHat * hatWidthRatio;
  hatHeightAdjusted = rectHeightHat * hatHeightRatio;
  println(hatintWidth, hatintHeight);
  println (hatWidthAdjusted, hatHeightAdjusted);
  //
  image(hat, rectXHat, rectYHat, hatWidthAdjusted, hatHeightAdjusted);
}//End hat
public void hatTitle() 
{
  //rect(HtitleX, HtitleY, HtitleWidth, HtitleHeight); 
  fill(purple); //Ink, hexidecimal copied from Color Selector
  textAlign(CENTER, CENTER); //Align X&Y, see Processing.org / Reference
  //Values: [ LEFT | CENTER | RIGHT ] & [ TOP | CENTER | BOTTOM | BASEMENT ]
  textFont(titleFont, 125); //Change the number until it fits
  text(title, titleX, titleY, titleWidth, titleHeight);
  fill(resetDefaultInk);
}//End quitButtonTitle
//Global Variables
float leftEyeX, leftEyeY;
float rectLEX, rectLEY, rectLEWidth, rectLEHeight;
float ileftEyeX, ileftEyeY;
float pleftEyeX, pleftEyeY;
//
public void leftEyeDraw() 
{
  //Left Eye
  rectLEX = leftEyeX*6.1f/8;
  rectLEY = leftEyeY*1/2;
  //rectLEWidth = eyeDiameter;
  rectLEHeight = eyeDiameter;
  //rect(rectLEX, rectLEY, rectLEWidth, rectLEHeight);
  ellipse(leftEyeX, leftEyeY, eyeDiameter, eyeDiameter);
  //
  noStroke();
  fill(iris);
  ellipse(ileftEyeX, ileftEyeY, iDiameter, iDiameter);
  stroke(reset);
  fill(whiteReset);
  //
  noStroke();
  fill(pupil);
  ellipse(pleftEyeX, pleftEyeY, pDiameter, pDiameter);
  stroke(reset);
  fill(whiteReset);
  //
}//End leftEyeDraw
//Global Variables
float rectXLips, rectYLips, rectWidthLips, rectHeightLips;
PImage lips;
int lipsWidth = 3000;
int lipsHeight = 2075;
int largerLipsDimension, smallerLipsDimension;
float lipsWidthRatio=0.0f, lipsHeightRatio=0.0f;
Boolean widthLipsLarger=false, heightLipsLarger=false;
float lipsWidthAdjusted, lipsHeightAdjusted;
//
public void lipsDraw() 
{
  if ( lipsWidth >= lipsHeight ) { //ID Larger Dimension: Landscape and Square
    largerLipsDimension = lipsWidth;
    smallerLipsDimension = lipsHeight;
    widthLipsLarger = true;
  } else { //ID Larger Dimension: Portrait mode
    largerLipsDimension = lipsHeight;
    smallerLipsDimension = lipsWidth;
    heightLipsLarger = true;
  } //End pic1 larger dimension
  //
  println(smallerLipsDimension, largerLipsDimension);
  //
  if ( widthLipsLarger == true ) lipsWidthRatio = PApplet.parseFloat (largerLipsDimension) / PApplet.parseFloat (largerLipsDimension);
  if ( widthLipsLarger == true ) lipsHeightRatio = PApplet.parseFloat (smallerLipsDimension) / PApplet.parseFloat (largerLipsDimension);
  if ( heightLipsLarger == true ) lipsWidthRatio = PApplet.parseFloat (smallerLipsDimension) / PApplet.parseFloat (largerLipsDimension);
  if ( heightLipsLarger == true ) lipsHeightRatio = PApplet.parseFloat (largerLipsDimension) / PApplet.parseFloat (largerLipsDimension);
  println(lipsWidthRatio, lipsHeightRatio);
  //
  rectXLips = MX; 
  rectYLips = MY; 
  rectWidthLips = MWidth; 
  rectHeightLips = MHeight;
  /*
  rectXLips = displayWidth*1/4; 
  rectYLips = displayHeight*0; 
  rectWidthLips = displayWidth*1/2; 
  rectHeightLips = displayHeight*1/2;
  */
  //
  lipsWidthAdjusted = rectWidthLips * lipsWidthRatio;
  lipsHeightAdjusted = rectHeightLips * lipsHeightRatio;
  println(lipsWidth, lipsHeight);
  println (lipsWidthAdjusted, lipsHeightAdjusted);
  //
  image(lips, rectXLips, rectYLips, lipsWidthAdjusted, lipsHeightAdjusted);
}//End mouthDraw
//Global Variables
float measleDiameter, measleRadius, measleX, measleY, measleX2, measleY2, measleX3, measleY3, measleX4, measleY4, measleX5, measleY5, measleX6, measleY6, measleX7, measleY7, measleX8, measleY8;
float RMX, RMY, RMWidth, RMHeight;
int measleColour;
public void measleDraw() 
{
  //Measle
  //ellipse(measleX, measleY, measleDiameter, measleDiameter);
  measleDiameter = random( smallerDisplayDimension*1/100, smallerDisplayDimension*1/25); //Range of mesle size: small=1/100, large=*1/25(4 times bigger)
  measleRadius = measleDiameter*1/2;
  //measleX = random( rectFaceX+measleRadius, (( rectFaceX+rectFaceWidth ) - measleRadius ));
  //measleY = random( rectFaceY+measleRadius, (( rectFaceY+rectFaceHeight ) - measleRadius));
  measleX2 = random( rectLEX+measleRadius, (rightEyeX+eyeDiameter*1/2)-measleRadius);
  measleY2 = random( rectLEY+measleRadius, MY+MHeight*1/2 );
  measleX3 = random( (rectFaceX+measleRadius)+measleRadius*2, ((( rectFaceX+rectFaceWidth ) - measleRadius ))-measleRadius*2);
  measleY3 = random( (rectLEY+rectLEHeight)+measleRadius, MY-measleRadius);
  measleX4 = random(( rectFaceX+(rectFaceWidth*1/16) )+measleRadius, (( rectFaceX+(rectFaceWidth*15/16) ) - measleRadius ));
  measleY4 = random( pleftEyeY+measleRadius, (( MY+MHeight*1/2 ) - measleRadius));
  measleX5 = random( rectLEX+measleRadius, (rightEyeX+eyeDiameter*1/2)-measleRadius);
  measleY5 = random( MY, (( rectFaceHeight*14/16 ) - measleRadius));
  measleX6 = random( (pleftEyeX-(eyeDiameter*1/8)) + measleRadius, (prightEyeX+(eyeDiameter*1/8)) - measleRadius );
  measleY6 = random( mouthY2, (( rectFaceHeight*15/16 ) - measleRadius) );
  measleX7 = random( (leftEyeX+(eyeDiameter*1/2))+(measleRadius*2), (rightEyeX-(eyeDiameter*1/2)) - (measleRadius*2) );
  measleY7 = random( (leftEyeY - measleRadius), rectFaceHeight - (measleRadius*3/2) );
  measleX8 = random( (rectLEX+(eyeDiameter*1/8))+(measleRadius*2), ((rectREX+eyeDiameter)-(eyeDiameter*1/8))-(measleRadius*2));
  measleY8 = random( leftEyeY-(eyeDiameter*1/4), (( rectFaceHeight*14/16 ) - measleRadius) );
  /*float RMX, RMY, RMWidth, RMHeight;
   RMWidth = measleDiameter;
   RMHeight = measleDiameter;
   RMX = measleX-measleDiameter*1/2;
   RMY = measleY-measleDiameter*1/2;
   rect(RMX, RMY, MeWidth, MeHeight);
   */
  println ( measleRadius );
  nightMode=false; //Note: IF-ELSE similar to ternary operator
  //color red=#CE3636, measleColour=red, blackReset=#000000; //Note: need range here too
  measleColour = ( nightMode==false ) ? color(255, random(0, 50), random(0, 120)) : color(255, random(0, 50), random(0, 0)) ; //ternary operator for day:night
  whiteReset=0xffFFFFFF; //Note: need range here too
  //color measleColour = ( nightMode==false ) ? day : night ; //ternary operator for day:night
  //color measleColour = () ? : ; //this is a ternary operator
  //
  //rect();
  //random values given other variables (similar to button code)
  noStroke(); //Shape outline
  fill(measleColour);
  //ellipse( measleX, measleY, measleDiameter, measleDiameter );
  ellipse( measleX2, measleY2, measleDiameter, measleDiameter );
  ellipse( measleX3, measleY3, measleDiameter, measleDiameter );
  ellipse( measleX4, measleY4, measleDiameter, measleDiameter );
  ellipse( measleX5, measleY5, measleDiameter, measleDiameter );
  ellipse( measleX6, measleY6, measleDiameter, measleDiameter );
  ellipse( measleX7, measleY7, measleDiameter, measleDiameter );
  ellipse( measleX8, measleY8, measleDiameter, measleDiameter );
  stroke(reset); //reset to 1 pixel
  fill(whiteReset); //reset to first colour
}//End measleDraw
//Global Variables
float mouthX1, mouthY1, mouthX2, mouthY2;
float MX, MY, MWidth, MHeight;
//
public void mouthDraw() 
{
  //Mouth
  MX = rectLEX;
  MY = mouthY1*1/1.2f;
  MWidth = mouthX1*10.66f/8;
  MHeight = mouthOpen;
  //rect(MX, MY, MWidth, MHeight);
  /*
  strokeWeight(mouthOpen); //testing: 100=400/4, mouthOpen=height*1/4
  line(mouthX1, mouthY1, mouthX2, mouthY2);
  strokeWeight(reset); //reset to 1 pixel
  */
  lipsDraw();
}//End mouthDraw
//Global Variables
float xNose1, yNose1, xNose2, yNose2, xNose3, yNose3;
float NX, NY, NWidth, NHeight;
//
public void noseDraw() 
{
  //Nose
  //rect(NX, NY, NWidth, NHeight);
  triangle(xNose1, yNose1, xNose2, yNose2, xNose3, yNose3);
  //
}//End noseDraw
public void population() 
{
  //Variable Population: notice using appWidth & appHeight to move between size() & fullScreen()
  smallerDisplayDimension = appHeight; //ALWAYS in Landscape
  reset = smallerDisplayDimension / smallerDisplayDimension; //returns "1"
  rectFaceX = (appWidth*1/2) - (smallerDisplayDimension*1/2); 
  rectFaceY = appHeight*0;
  rectFaceWidth = smallerDisplayDimension; //Square Shape
  rectFaceHeight = smallerDisplayDimension; //Square Shape
  faceX = appWidth*1/2; 
  faceY = appHeight*1/2;
  faceDiameter = smallerDisplayDimension; 
  leftEyeX = appWidth*2.8f/8;
  rightEyeX = appWidth*5.2f/8;
  leftEyeY = appHeight*1/4;  
  rightEyeY = leftEyeY; //Best Practise: change one line of code
  eyeDiameter = smallerDisplayDimension*1/4;
  mouthX1 = leftEyeX; 
  mouthY1 = appHeight*3/4; 
  mouthX2 = rightEyeX; 
  mouthY2 = mouthY1;
  mouthOpen = smallerDisplayDimension*1/4;
  xNose1 = faceX;
  yNose1 = leftEyeY;
  xNose2 = faceX - leftEyeY*1/2;
  yNose2 = faceY;
  xNose3 = faceX + leftEyeY*1/2;
  yNose3 = faceY;
  NX = xNose2;
  NY = yNose1;
  NWidth = leftEyeY;
  NHeight = faceY*1/2;
  ileftEyeX = appWidth*2.8f/8;
  irightEyeX = appWidth*5.2f/8;
  ileftEyeY = appHeight*1/4;  
  irightEyeY = leftEyeY;
  pleftEyeX = appWidth*2.8f/8;
  prightEyeX = appWidth*5.2f/8;
  pleftEyeY = appHeight*1/4;  
  prightEyeY = leftEyeY;
  iDiameter = eyeDiameter*1/2;
  pDiameter = eyeDiameter*1/3;
  iris=0xffD68F00;
  pupil=0xff000000;
  hatColor=0xffED7300;
  whiteReset=0xffFFFFFF;
  lips = loadImage("5b135831a2c9179fd8d44131a4dd7e28.png");
  rectXLips = MX; 
  rectYLips = MY;
  rectWidthLips = MWidth;
  rectHeightLips = MHeight;
  hat = loadImage("476-4764599_baseball-cap-png-image-background-baseball-cap-transparent.png");
  rectXHat = rectFaceX; 
  rectYHat = rectFaceY; 
  rectWidthHat = rectFaceWidth; 
  rectHeightHat = rectFaceHeight*1/4;
  hatX1 = rectXHat; 
  hatY1 = rectYHat; 
  hatX2 = rectWidthHat+rectXHat; 
  hatY2 = appHeight;
  //QuitButton
  quitButtonSetupPopulation(); 
  //QuitButtonTitle
  /*
  titleX = displayWidth*1/5;
  titleY = displayHeight*1/10;
  titleWidth = displayWidth*3/10; //Rect ends at 4/5's of width
  titleHeight = displayHeight*1/10; //Rect ends at 2/10's of height
  */
  titleX = quitButtonX;
  titleY = quitButtonY;
  titleWidth = quitButtonWidth;
  titleHeight = displayHeight*1/10;
  titleFont = createFont("Cambria-Bold-48", 55);
  //
  TtitleX = displayWidth*11/16;
  TtitleY = displayHeight*1/40;
  TtitleWidth = displayWidth*3/10; 
  TtitleHeight = displayHeight*1/10; 
  TtitleFont = createFont("BookAntiqua-Italic-48", 55);
}//End population
//Global Variables
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
int red=0xffB43C00, blue=0xffE0F6FC, buttonColour; //Notice nightMode Blue Values
String title = "Exit";
float titleX, titleY, titleWidth, titleHeight;
PFont titleFont;
int purple=0xffA18AE0, resetDefaultInk=0xffFFFFFF;
//
public void quitButtonSetupPopulation() 
{
  quitButtonX = appWidth*1/50; 
  quitButtonY = appHeight*13/16;
  quitButtonWidth = appWidth*1/5;
  quitButtonHeight = appHeight*1/7;
}//End quitButtonSetup
//
public void quitButtonDraw() 
{
  if ( mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight ) {
    buttonColour = red;
  } else {
    buttonColour = blue;
  }//End Hover-Over Effect
  //Verifying of mouse on the button/Alternate Verification that mouseX&Y is on the button
  println("X-Value", quitButtonX, mouseX, quitButtonX+quitButtonWidth, "/t/t Look at the middle value");
  println("Y-Value", quitButtonY, mouseY, quitButtonX+quitButtonHeight, "/t/t Look at the middle value");
  //
  fill(buttonColour);
  rect( quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight );
  fill(whiteReset);
  //
  quitButtonTitle();
}//End quitButtonDraw
//
public void quitButtonkeyPressed() 
{
  ///*
  //Quit KeyBoard Button
  if ( key=='Q' || key=='q' ) exit();//KeyBoard is separated on key-Variables: key & keyCode
  //
  //*/
}//End quitButtonkeyPressed
//
public void quitButtonmousePressed() 
{
  if (  mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight ) exit();
}//End quitButtonmousePressed
//
public void quitButtonTitle() 
{
  //rect(titleX, titleY, titleWidth, titleHeight); 
  fill(purple); //Ink, hexidecimal copied from Color Selector
  textAlign(CENTER, CENTER); //Align X&Y, see Processing.org / Reference
  //Values: [ LEFT | CENTER | RIGHT ] & [ TOP | CENTER | BOTTOM | BASEMENT ]
  textFont(titleFont, 125); //Change the number until it fits
  text(title, titleX, titleY, titleWidth, titleHeight);
  fill(resetDefaultInk);
}//End quitButtonTitle
//Global Variables
float rightEyeX, rightEyeY;
float rectREX, rectREY, rectREWidth, rectREHeight;
float irightEyeX, irightEyeY;
float prightEyeX, prightEyeY;
//
public void rightEyeDraw() 
{
  //Right Eye
  rectREX = rightEyeX*6.97f/8;
  /*
  rectREY = rightEyeY*1/2;
  rectREWidth = eyeDiameter;
  rectREHeight = eyeDiameter;
  */
  //rect(rectREX, rectREY, rectREWidth, rectREHeight);
  ellipse(rightEyeX, rightEyeY, eyeDiameter, eyeDiameter);
  //
  noStroke();
  fill(iris);
  ellipse(irightEyeX, irightEyeY, iDiameter, iDiameter);
  stroke(reset);
  fill(whiteReset);
  //
  noStroke();
  fill(pupil);
  ellipse(prightEyeX, prightEyeY, pDiameter, pDiameter);
  stroke(reset);
  fill(whiteReset);
  //
}//End rightEyeDraw
//Global Variables
String Ttitle = "Here We Go Again";
float TtitleX, TtitleY, TtitleWidth, TtitleHeight;
PFont TtitleFont;
int Tpurple=0xffA18AE0, TresetDefaultInk=0xffFFFFFF;
//
public void texter() 
{
  rect(TtitleX, TtitleY, TtitleWidth, TtitleHeight); 
  fill(Tpurple); 
  textAlign(CENTER, CENTER); 
  textFont(TtitleFont, 120); 
  text(Ttitle, TtitleX, TtitleY, TtitleWidth, TtitleHeight);
  fill(TresetDefaultInk);
}//End text
  public void settings() {  fullScreen(); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "--present", "--window-color=#666666", "--hide-stop", "DynamicMeasles" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
