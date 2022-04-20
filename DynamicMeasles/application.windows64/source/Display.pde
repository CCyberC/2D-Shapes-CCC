void displaySetup() 
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
void displayButtonOrientation() 
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
