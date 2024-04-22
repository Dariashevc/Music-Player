/*Purpose
 - introduce single and mutliple executed code
 - activity: do another rectangle with text in it
 - copy and paste to dynamic program
 */
//
//Global Variables
float titleX, titleY, titleWidth, titleHeigth;
float paragraphX, paragraphY, paragraphWidth, paragraphHeigth;
PFont titleFont;
String title="Yepiee";
String paragraph="Now I know how to draw text!!!";
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

paragraphX=appWidth*1/10;
paragraphY=appHeight*8/10;
paragraphWidth=appWidth*8/10;
paragraphHeigth=appHeight*1/10;
//Single Executed Code: Font SETUP
String[] fontlist = PFont.list();
printArray(fontlist);
size = 80;
titleFont = createFont("Bookman Old Style", size);
//
//DIVs & rect()s rect(X,Y,Width,Heigth)
rect(titleX, titleY, titleWidth, titleHeigth);
rect(paragraphX, paragraphY, paragraphWidth, paragraphHeigth);
//rect(X,Y,Width,Heigth); //footer
//Repeated Code: draw()ing text

fill(purple);
textAlign(CENTER, CENTER);
size = 70;
textFont(titleFont, 70);
text(title, titleX, titleY, titleWidth, titleHeigth);

fill(purple);
textAlign(CENTER, CENTER);
size = 50;
textFont(titleFont, 50);
text(paragraph, paragraphX, paragraphY, paragraphWidth, paragraphHeigth);
