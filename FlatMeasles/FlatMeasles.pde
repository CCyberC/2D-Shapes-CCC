//Global Variables
int smallerDisplayDimension;
float rectFaceX, rectFaceY, rectFaceWidth, rectFaceHeight;
float faceX, faceY, faceDiameter;
float leftEyeX, leftEyeY, rightEyeX, rightEyeY, eyeDiameter;
float xNose1, yNose1, xNose2, yNose2, xNose3, yNose3;
float mouthX1, mouthY1, mouthX2, mouthY2;
//
//Display Geometry
fullScreen(); //teacher is using size(600, 400); need to use displayWidth and displayHeight
//Landscape, not square or portrait
println(width, height, displayWidth, displayHeight); //Verification of values
//Display Orientation
//Conputer Tells us the orientation, important for Cell Phone Orientaation
//if ( width >= height ) {println("Landscape or Square";} else {println("Portrait");}
String orientation = (width >= height ) ? "Landscape or Square": "Portrait"; //Ternary Operator, repeats IF-ELSE
println("Display Orientation:", orientation); //Verify variables
if ( orientation=="Portrait" ) println("Turn your phone");
  //Empty IF
/*
if ( orientation=="Landscape or Square" ) {
  //Empty IF
} else { 
  println("Turn your phone"); //FUN
}
*/
//
//Variable Population
smallerDisplayDimension = displayHeight; //ALWAYS in Landscape
rectFaceX = (displayWidth*1/2) - (smallerDisplayDimension*1/2); 
rectFaceY = displayHeight*0;
rectFaceWidth = smallerDisplayDimension; //Square Shape
rectFaceHeight = smallerDisplayDimension; //Square Shape
faceX = displayWidth*1/2; 
faceY = displayHeight*1/2;
faceDiameter = smallerDisplayDimension; 
leftEyeX = displayWidth*2.8/8;
rightEyeX = displayWidth*5.2/8;
leftEyeY = displayHeight*1/4;  
rightEyeY = leftEyeY; //Best Practise: change one line of code
eyeDiameter = smallerDisplayDimension*1/4;
mouthX1 = leftEyeX; 
mouthY1 = displayWidth*3/4; 
mouthX2 = rightEyeX; 
mouthY2 = displayWidth*3/4;
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
line(mouthX1, mouthY1, mouthX2, mouthY2);
//
//Measle
//rect();
//
//Measle
