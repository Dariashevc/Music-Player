void darkLightMode() {
  if ( lightMode==true ) { //Light & Dark Modes, Logical Shortcut
     backgroundColour = whiteBackground;
    foregroundColour = black;
  }
    else if ( lightMode==false ) {
    backgroundColour = black;
    foregroundColour = whiteBackground;
  }
}
void darkLightModeDraw() {
   if ( lightMode == true ) { //Boolean keyBind, Logical Shortcut
    fill(white); 
    fill(foregroundColour);
  }
  else if ( lightMode == false ) {
    fill(black);}
    fill(foregroundColour);
}
