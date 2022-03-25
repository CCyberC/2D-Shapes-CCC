//Global Variables
int smallerDisplayDimension;
float rectFaceX, rectFaceY, rectFaceWidth, rectFaceHeight;
float faceX, faceY, faceDiameter;
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
rectFaceX = displayWidth*0; 
rectFaceY = displayHeight*0;
rectFaceWidth = smallerDisplayDimension; //Square Shape
rectFaceHeight = smallerDisplayDimension; //Square Shape
faceX = displayWidth*1/2; 
faceY = displayHeight*1/2;
faceDiameter = smallerDisplayDimension; 

//
//Face: Circle = Inscribing a Circle in a Square
//Center a circle on display orientation
rect(rectFaceX, rectFaceY, rectFaceWidth, rectFaceHeight);
ellipse(faceX, faceY, faceDiameter, faceDiameter);
//
//Left Eye
//rect();
//
//Right Eye
//rect();
//
//Nose
//rect();
//
//Mouth
//rect();
//
//Measle
//rect();
//
//Measle
