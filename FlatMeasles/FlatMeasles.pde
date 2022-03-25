//Global Variables
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
if ( orientation=="Portrait" ) {
  //Empty IF
/*
if ( orientation=="Landscape or Square" ) {
  //Empty IF
} else { 
  println("Turn your phone");
}
*/
//
//Variable Population
//
//Face
//Center a circle on display orientation
rect();
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
