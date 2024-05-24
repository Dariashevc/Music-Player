void darkLightMode() {
  if ( hour()>=9 && hour()<=17 ) dayMode=true; //Day & Night Mode Clock Choice
  //println(dayMode);
  if ( dayMode==true && lightMode==true ) { //Light & Dark Modes, Logical Shortcut
    backgroundColour = whiteBackground;
    foregroundColour = black;
    backgroundImage = loadImage( pathLightBackgroundImage ); //Changing this Variable with 3 different images
  } else if ( lightMode==false ) {
    backgroundColour = black;
    foregroundColour = whiteBackground;
    backgroundImage = loadImage( pathDarkBackgroundImage );
  } else {
    backgroundColour = darkBackground;
    foregroundColour = yellow; //Note: if(hour()<9&&hour()>17)
    backgroundImage = loadImage( pathDarkBackgroundImage );
  }
}
