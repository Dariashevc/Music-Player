//test
float albumCoverX, albumCoverY, albumCoverWidth, albumCoverHeight;
int appWidth, appHeight;
PImage albumCover;
String albumCoverPath; 
//GLOBAL VARIABLES
void setup() {
  //DISPLAY
  fullScreen ();
  appWidth=width;
  appHeight=height;
  //POPULATION
  albumCoverX=appWidth*18/100;
  albumCoverY=appHeight*15/100;
  albumCoverWidth=appWidth*64/100;
  albumCoverHeight=appHeight*6/16;
  //VARIABLE POPULATION
  String pathway = "../../../images/";
  String extensionJPEG = ".jpeg";
  String water="waterlightmode";
  albumCoverPath = pathway+water+extensionJPEG;
  albumCover = loadImage(albumCoverPath);
  //ratio calculation 
  float smallerAlbumCoverDimention = (albumCoverWidth > albumCoverHeight) ? albumCoverWidth : albumCoverHeight;
  int albumCoverImageWidthPixel =;
  float albumCoverAspectRatio =
  float largerAlbumCoverDimention = ( ) ?:;
  //DIVS 
  rect(albumCoverX, albumCoverY, albumCoverWidth, albumCoverHeight);
}
//END SETUP
void draw() {
  image(
  albumCover, albumCoverX, albumCoverY, albumCoverWidth, albumCoverHeight);
}
//END DRAW
void mousePressed () {
}
//END MOUSE PRESSED
void keyPressed () {
}
//END KEY PRESSED
//END MAIN PROGRAM
