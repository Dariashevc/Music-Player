void keyButtons () {
    if (key=='Q' || key=='q')
  {
    sound_effect_1 ();
  }
  if (key==CODED && keyCode==ESC) //Hardcoded QUIT, no sound available
  {
    sound_effect_1 ();
  }
  //soundEffects1.loop(0);
}
