void imagecover1 () {
  String songCover1 = "allmusic";
  String extensionJPG = ".jpg";
  String pathway = "../images/"; //Relative Pathway
  String songCoverImagePath = pathway + songCover1 + extensionJPG;
  songCoverImage1 = loadImage( songCoverImagePath );
  float smallerAlbumCoverDimension = ( songCover1Width < songCover1Height ) ? songCover1Width : songCover1Height ;
  float albumCoverImageWidthPixel = 100.0; //Origonally INTs, ratio will be decimal
  float albumCoverImageHeightPixel = 100.0; //CAUTION: must avoid truncation to ZERO Value
  float albumCoverAspectRatio = albumCoverImageWidthPixel/albumCoverImageHeightPixel;
  float largerAlbumCoverDimension = smallerAlbumCoverDimension*albumCoverAspectRatio; //Apsect Ratio
  if ( songCover1Width < largerAlbumCoverDimension ) { //Image will not fit into DIV rect()
    while ( songCover1Width < largerAlbumCoverDimension ) {
      largerAlbumCoverDimension -= 1;
      smallerAlbumCoverDimension -= 1;
      //NOTE: ratios like percent are not linear decreases in both directions
    }
  }
  songCover1WidthAdjusted = largerAlbumCoverDimension;
  songCover1HeightAdjusted = smallerAlbumCoverDimension;
   //
  /*Image can be centered, left justified, or right justified on the larger dimension
   LEFT: X-value of image same as rect()
   CENTERED: X-value of image = albumCoverX + (albumCoverWidth-albumCoverWidthAdjusted)/2;
   RIGHT: X-value of image = albumCoverX+albumCoverWidth-albumCoverWidthAdjusted;
   */
  songCoverRIGHT = songCover1X;
  songCoverCENTERED = songCover1X + (songCover1Width-songCover1WidthAdjusted)/2;
  songCoverLEFT =songCover1X+songCover1Width-songCover1WidthAdjusted;
}
