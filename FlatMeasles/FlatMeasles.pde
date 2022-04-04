//Global Variables
int reset, smallerDisplayDimension, mouthOpen;
float rectFaceX, rectFaceY, rectFaceWidth, rectFaceHeight;
float faceX, faceY, faceDiameter;
float leftEyeX, leftEyeY, rightEyeX, rightEyeY, eyeDiameter;
float mouthX1, mouthY1, mouthX2, mouthY2;
float xNose1, yNose1, xNose2, yNose2, xNose3, yNose3;
//
//Display Geometry
fullScreen(); //teacher is using size(600, 400); need to use displayWidth and displayHeight
//Landscape, not square or portrait
int appWidth = displayWidth, appHeight = displayHeight;
println(width, height, displayWidth, displayHeight); //Verification of values
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
leftEyeX = appWidth*2.8/8;
rightEyeX = appWidth*5.2/8;
leftEyeY = appHeight*1/4;  
rightEyeY = leftEyeY; //Best Practise: change one line of code
eyeDiameter = smallerDisplayDimension*1/4;
mouthX1 = leftEyeX; 
mouthY1 = appWidth*3/4; 
mouthX2 = rightEyeX; 
mouthY2 = mouthY1;
mouthOpen = smallerDisplayDimension*1/4;
xNose1 = faceX;
yNose1 = leftEyeY;
xNose2 = faceX - leftEyeY*1/2;
yNose2 = faceY;
xNose3 = faceX + leftEyeY*1/2;
yNose3 = faceY;

//
//Face: Circle = Inscribing a Circle in a Square
//Center a circle on display orientation
rect(rectFaceX, rectFaceY, rectFaceWidth, rectFaceHeight);
ellipse(faceX, faceY, faceDiameter, faceDiameter);
//
//Left Eye
//rect();
ellipse(leftEyeX, leftEyeY, eyeDiameter, eyeDiameter);
//
//Right Eye
//rect();
ellipse(rightEyeX, rightEyeY, eyeDiameter, eyeDiameter);
//
//Nose
//rect();
triangle(xNose1, yNose1, xNose2, yNose2, xNose3, yNose3);
//
//Mouth
//rect();
strokeWeight(mouthOpen); //testing: 100=400/4, mouthOpen=height*1/4
line(mouthX1, mouthY1, mouthX2, mouthY2);
strokeWeight(reset); //
//
//Measle
float measleX = appWidth*1/2;
float measleY = appHeight*1/2;
float measleDiameter = smallerDisplayDimension*1/100; //Very small measle
color red=#CE3636, measleColour=red; //Note: need range here too
//rect();
//random values given other variables (similar to button code)
fill(measleColour);
ellipse( measleX, measleY, measleDiameter, measleDiameter );
