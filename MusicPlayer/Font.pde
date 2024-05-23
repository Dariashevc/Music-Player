void font () {
 //Fonts from OS (Operating System)
  String[] fontList = PFont.list(); //To list all fonts available on OS
  printArray(fontList); //For listing all possible fonts to choose from, then createFont
  size = ( appWidth > appHeight ) ? appHeight : appWidth ; // Font size starts with smaller dimension
  generalFont = createFont("Bookman Old Style", size);
  //bottomFont = createFont("", size); //Note: more than one font allowed
  // Tools / Create Font / Find Font / Use size field / Do not press "OK", known bug
}
