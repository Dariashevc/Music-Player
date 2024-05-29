float backgroundX, backgroundY, backgroundWidth, backgroundHeight;
float  songCover1X, songCover1Y, songCover1Width, songCover1Height, songCover1WidthAdjusted, songCover1HeightAdjusted;
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight, albumCoverWidthAdjusted, albumCoverHeightAdjusted;
float songName1X, songNameY,songNameWidth,songNameHeight;
float artistName1X, artistName1Y, artistName1Width, artistName1Height;
float lightModeButtonX, lightModeButtonY, lightModeButtonWidth, lightModeButtonHeight;
float playButtonX, playButtonY, playButtonWidth, playButtonHeight;
float forwardButtonX, forwardButtonY, forwardButtonWidth, forwardButtonHeight;
float backwardButtonX, backwardButtonY, backwardButtonWidth, backwardButtonHeight;
PFont songName1;
PImage songCoverImage1;
String name="Happy Together";
void divs() {
    population ();
    rects();
    drawRects ();
}



void population () {
//Population
  backgroundX = appWidth*0;
  backgroundY = appHeight*0;
  backgroundWidth = appWidth-1;
  backgroundHeight = appHeight-1;
  
  songCover1X = appWidth*30/100; 
  songCover1Y = appHeight*5/100;
  songCover1Width = appWidth*60/170;
  songCover1Height = appHeight*60/100; 
  
  songName1X = appWidth*30/100; 
  songNameY  = appHeight*68/100;
  songNameWidth = appWidth*60/170;
  songNameHeight  = appHeight*6/100; 
  
  artistName1X =appWidth*41.5/100; 
  artistName1Y =appHeight*75/100;
  artistName1Width =appWidth*21/170;
  artistName1Height =appHeight*3/100; 
  
  lightModeButtonX =appWidth*90/100; 
  lightModeButtonY =appHeight*2/100;
  lightModeButtonWidth =appWidth*15/170; 
  lightModeButtonHeight =appHeight*8/100;
  
  quitButtonX = appWidth*90/100;
  quitButtonY = appHeight*91/100;
  quitButtonWidth = appWidth*9/100;
  quitButtonHeight = appHeight*8/100;
  
  playButtonX =appWidth*44.5/100;
  playButtonY =appHeight*82/100;
  playButtonWidth =appWidth*12/170;
  playButtonHeight =appHeight*12/100;
  
  forwardButtonX =appWidth*53/100;
  forwardButtonY =appHeight*84/100;
  forwardButtonWidth =appWidth*8/170;
  forwardButtonHeight =appHeight*8/100;

      backwardButtonX =appWidth*38/100;
  backwardButtonY =appHeight*84/100;
  backwardButtonWidth =appWidth*8/170;
  backwardButtonHeight =appHeight*8/100;
  //Layout DIVs
  //rect(X, Y, Width, Height);
}
// END POPULATION


  void rects() {
  rect(backgroundX, backgroundY, backgroundWidth, backgroundHeight);
  rect(quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
  rect(songCover1X, songCover1Y, songCover1Width, songCover1Height);
  //rect (songName1X, songNameY,songNameWidth,songNameHeight);
  //rect (artistName1X, artistName1Y, artistName1Width, artistName1Height);
  rect (lightModeButtonX, lightModeButtonY, lightModeButtonWidth, lightModeButtonHeight);
    rect (playButtonX, playButtonY, playButtonWidth, playButtonHeight);
    rect (forwardButtonX, forwardButtonY, forwardButtonWidth, forwardButtonHeight);
    rect (backwardButtonX, backwardButtonY, backwardButtonWidth, backwardButtonHeight);
}

void drawRects () {
 
image( songCoverImage1, songCover1X, songCover1Y, songCover1Width, songCover1Height);
fill(black);
    size = 50;
    textAlign(CENTER, CENTER);
textFont (generalFont, 50);
text(songName, songName1X, songNameY,songNameWidth,songNameHeight);
fill(black);
    size = 20;
    textAlign(CENTER, CENTER);
textFont (generalFont, 20);
text(artistName, artistName1X, artistName1Y, artistName1Width, artistName1Height);

}

//END RECT
