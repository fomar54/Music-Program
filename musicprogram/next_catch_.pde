void nextButtonArrayCatch() {
  if ( currentSong >= song.length-1 ) { //CATCH ArrayIndexOutOfBoundsException
    currentSong -= currentSong; //Beginning of Play List
  } else {
    currentSong++;
  }//End of CATCH
}//End nextButtonArrayCatch
