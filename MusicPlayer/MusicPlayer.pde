import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//Global Variables
Minim minim; //creates object to access all functions
AudioPlayer soundEffects1;
AudioPlayer playList1; //creates "Play List" variable holding extensions WAV, AIFF, AU, SND, and MP3
//
int appWidth, appHeight;
int size;
PFont generalFont;
String quit="QUIT";
color backgroundColour, darkBackground=0, whiteBackground=255; //Gray Scale, note much smaller than COLOR
color foregroundColour;
color white=255, yellow=#FFFF00, black=0, purple=#FF00FF; //Hexidecimal, see Tools / Colour Selector
float songCoverRIGHT, songCoverCENTERED, songCoverLEFT;
void setup() {
  //size(400, 500); //width, height
  fullScreen(); //displayWidth, displayHeight
  appWidth = displayWidth;
  appHeight = displayHeight;
  //Landscape is HARDCODED
  String displayInstructions = ( appWidth >= appHeight ) ? "Good To Go" : "Bru, turn your phun";
  println(displayInstructions);
  //
 audioPath ();
  font ();
  imagecover1 ();
  divs();
  darkLightMode();
} 

//End setup
//
void draw() {
  darkLightMode();
  quitButton ();
    drawRects ();
  println(mouseX, mouseY);
  //
} //End draw
//
void keyPressed() { //Listener
keyButtons ();
} 


void mousePressed() { //Listener
  if ( mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight )
  {
    sound_effect_1 ();
  }
    if ( mouseX>lightModeButtonX && mouseX<lightModeButtonX+lightModeButtonWidth && mouseY>lightModeButtonY && mouseY<lightModeButtonY+lightModeButtonHeight )
  {
    sound_effect_1 ();
  }
} 
//End mousePressed
// End MAIN Program
