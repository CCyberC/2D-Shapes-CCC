//Global Variables
String Ttitle = "Here We Go Again";
float TtitleX, TtitleY, TtitleWidth, TtitleHeight;
PFont TtitleFont;
color Tpurple=#A18AE0, TresetDefaultInk=#FFFFFF;
//
void texter() 
{
  rect(TtitleX, TtitleY, TtitleWidth, TtitleHeight); 
  fill(Tpurple); 
  textAlign(CENTER, CENTER); 
  textFont(TtitleFont, 120); 
  text(Ttitle, TtitleX, TtitleY, TtitleWidth, TtitleHeight);
  fill(TresetDefaultInk);
}//End text
