/*Purpose
 - introduce single and mutliple executed code
 - activity: do another rectangle with text in it
 - copy and paste to dynamic program
 */
//
//Global Variables
float titleX, titleY, titleWidth, titleHeigth;
float textX, textY, textWidth, textHeigth;
PFont titleFont;
String title="Yepiee";
int size;
color purple=#ff00ff;
//
//Display Geoemtry, Display Orientation: landscape, portrait, square
fullScreen();
//Concatenation & Inspection of Variables
println("Diaplay Monitor:", "width:" +displayWidth, "height:" +displayHeight);
int appWidth=displayWidth;
int appHeight=displayHeight;
//
//Population
titleX=appWidth*1/10;
titleY=appHeight*1/10;
titleWidth= appWidth*8/10;
titleHeigth=appHeight*1/10;
textX=appWidth*1/10;
textY=appHeight*8/10;
textWidth=appWidth*8/10;
textHeigth=appHeight*1/10;
//Single Executed Code: Font SETUP
String[] fontlist = PFont.list();
printArray(fontlist);
size = 80;
titleFont = createFont("Bookman Old Style", size);
//
//DIVs & rect()s rect(X,Y,Width,Heigth)
rect(titleX, titleY, titleWidth, titleHeigth, textX, textY, textWidth, textHeigth);
//rect(X,Y,Width,Heigth); //footer
//Repeated Code: draw()ing text
fill(purple);
textAlign(CENTER, CENTER);
size = 80;
textFont(titleFont, 80);
text(title, titleX, titleY, titleWidth, titleHeigth);
