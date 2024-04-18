/*Purpose
 - introduce single and mutliple executed code
 - activity: do another rectangle with text in it
 - copy and paste to dynamic program
 */
//
//Global Variables
float titleX, titleY, titleWidth, titleHeigth;
PFont titleFont;
String title='Yepiee';
//
//Display Geoemtry, Display Orientation: landscape, portrait, square
fullScreen();
//Concatenation & Inspection of Variables
println("Diaplay Monitor:", "width:" +displayWidth, "theight:" +displayHeight);
int appWidth=displayWidth;
int appHeight=displayHeight;
//
//Population
titleX=appWidth*1/10;
titleY=appHeight*1/10;
titleWidth= appWidth*8/10;
titleHeigth=appHeight*1/10;
//Single Executed Code: Font SETUP
String[] fontlist = PFont.list();
printArray(fontlist);
titleFont = createFont("Bookman Old Style", 55);
//
//DIVs & rect()s rect(X,Y,Width,Heigth)
rect(titleX,titleY,titleWidth,titleHeigth);
//rect(X,Y,Width,Heigth); //footer
//Repeated Code: draw()ing text
textFont(titleFont, 20)
text(title, titleX, titleY, titleWidth, titleHeigth);
