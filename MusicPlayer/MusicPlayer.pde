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
Boolean whiteMode=false;
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
  String songCover1 = "allmusic";
  String extensionJPG = ".jpg";
  String pathway = "../images/"; //Relative Pathway
  String songCoverImagePath = pathway + songCover1 + extensionJPG;
  songCoverImage1 = loadImage( songCoverImagePath );
  float smallerAlbumCoverDimension = ( songCover1Width < songCover1Height ) ? songCover1Width : songCover1Height ;
  float albumCoverImageWidthPixel = 100.0; //Origonally INTs, ratio will be decimal
  float albumCoverImageHeightPixel = 100.0; //CAUTION: must avoid truncation to ZERO Value
  float albumCoverAspectRatio = albumCoverImageWidthPixel/albumCoverImageHeightPixel;
  float largerAlbumCoverDimension = smallerAlbumCoverDimension*albumCoverAspectRatio; //Apsect Ratio
  if ( songCover1Width < largerAlbumCoverDimension ) { //Image will not fit into DIV rect()
    while ( songCover1Width < largerAlbumCoverDimension ) {
      largerAlbumCoverDimension -= 1;
      smallerAlbumCoverDimension -= 1;
      //NOTE: ratios like percent are not linear decreases in both directions
    }
  }
  songCover1WidthAdjusted = largerAlbumCoverDimension;
  songCover1HeightAdjusted = smallerAlbumCoverDimension;
   //
  /*Image can be centered, left justified, or right justified on the larger dimension
   LEFT: X-value of image same as rect()
   CENTERED: X-value of image = albumCoverX + (albumCoverWidth-albumCoverWidthAdjusted)/2;
   RIGHT: X-value of image = albumCoverX+albumCoverWidth-albumCoverWidthAdjusted;
   */
  songCoverRIGHT = songCover1X;
  songCoverCENTERED = songCover1X + (songCover1Width-songCover1WidthAdjusted)/2;
  songCoverLEFT =songCover1X+songCover1Width-songCover1WidthAdjusted;
  divs();
  darkLightMode();
} 

//End setup
//
void draw() {
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
} 
//End mousePressed
// End MAIN Program
