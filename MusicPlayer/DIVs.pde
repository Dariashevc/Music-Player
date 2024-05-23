float backgroundX, backgroundY, backgroundWidth, backgroundHeight;
float  songCover1X, songCover1Y, songCover1Width, songCover1Height, songCover1WidthAdjusted, songCover1HeightAdjusted;
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight, albumCoverWidthAdjusted, albumCoverHeightAdjusted;
float songName1X, songNameY,songNameWidth,songNameHeight;
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
  
  quitButtonX = appWidth*90/100;
  quitButtonY = appHeight*91/100;
  quitButtonWidth = appWidth*9/100;
  quitButtonHeight = appHeight*8/100;
  //Layout DIVs
  //rect(X, Y, Width, Height);
}
// END POPULATION


  void rects() {
    
  rect(backgroundX, backgroundY, backgroundWidth, backgroundHeight);
  rect(quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
  rect(songCover1X, songCover1Y, songCover1Width, songCover1Height);
  rect (songName1X, songNameY,songNameWidth,songNameHeight);
}

void drawRects () {
  
image( songCoverImage1, songCover1X, songCover1Y, songCover1Width, songCover1Height);
}

//END RECT
