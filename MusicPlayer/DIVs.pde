float backgroundX, backgroundY, backgroundWidth, backgroundHeight;
float albumCover1X, albumCover1Y, albumCover1Width, albumCover1Height;
float albumCover2X, albumCover2Y, albumCover2Width, albumCover2Height;
float albumCover3X, albumCover3Y, albumCover3Width, albumCover3Height;
float albumCover4X, albumCover4Y, albumCover4Width, albumCover4Height;
float albumCover5X, albumCover5Y, albumCover5Width, albumCover5Height;
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;

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
  
  albumCover1X = appWidth*10/100; 
  albumCover1Y = appHeight*20/100;
  albumCover1Width = appWidth*30/170;
  albumCover1Height = appHeight*30/100; 
  
  albumCover2X = appWidth*40/100; 
  albumCover2Y = appHeight*20/100;
  albumCover2Width = appWidth*30/170;
  albumCover2Height = appHeight*30/100;
  
  albumCover3X = appWidth*70/100; 
  albumCover3Y = appHeight*20/100;
  albumCover3Width = appWidth*30/170;
  albumCover3Height = appHeight*30/100;
  
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
  rect(albumCover1X, albumCover1Y, albumCover1Width, albumCover1Height);
  rect(albumCover2X, albumCover2Y, albumCover2Width, albumCover2Height);
  rect(albumCover3X, albumCover3Y, albumCover3Width, albumCover3Height);
  rect(albumCover4X, albumCover4Y, albumCover4Width, albumCover4Height);
  rect(albumCover5X, albumCover5Y, albumCover5Width, albumCover5Height);
}

void drawRects () {
rect(albumCover1X, albumCover1Y, albumCover1Width, albumCover1Height);
  rect(albumCover2X, albumCover2Y, albumCover2Width, albumCover2Height);
  rect(albumCover3X, albumCover3Y, albumCover3Width, albumCover3Height);
  rect(albumCover4X, albumCover4Y, albumCover4Width, albumCover4Height);
  rect(albumCover5X, albumCover5Y, albumCover5Width, albumCover5Height);
}

//END RECT
