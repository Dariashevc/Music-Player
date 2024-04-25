void audioPath () {
    minim = new Minim(this); //load from data directory, loadFile should also load from project folder, like loadImage
  String extension = ".mp3";
  String quitButtonSound = "CarDoorClosing";
  String pathwaySoundEffects = "../Audio/SoundEffect/"; //Relative Path
  //println ( pathwaySoundEffects+quitButtonSound+extension );
  String path = sketchPath( pathwaySoundEffects + quitButtonSound + extension ); //Absolute Path
  //println ( path );
  soundEffects1 = minim.loadFile( path );
  //playList1 = minim.loadFile( path );
  //
}
