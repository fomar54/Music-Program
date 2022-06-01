import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//gobal virables 
Minim minim;//creates object tyo acess all functions 
AudioPlayer song1;//creat"play list " variables holding extenstions wav, aiff,au,snd.&
//
void setup (){
fullScreen();
minim = new Minim (this);//leads from data directiory,loadFile should also load from project floder just like loadiamge().
song1 = minim.loadFile("music/Ruel_-_GROWING_UP_IS_WEIRD_Forbesloaded.com.mp3");//able to pass absulote path , file name and url 
};
//
void draw() {
if(song1.isLooping())println("there are",song1.loopCount()-1,"loops left");
if(song1.isPlaying() && !song1.isLooping() ) println("play once");
}//End draw
//
void keyPressed()
{
  //Only press a number for this code below
  println(key);
  if (key=='1' || key =='9') {
    
    if(key == '1')println("looping 1 times ");
    if(key == '9')println("looping 9 times ");
    
  String keystr = String.valueOf(key);
  println("Number of Repeats is", keystr);
  int num = int(keystr);
  song1.loop(num);
  }//end loop
  if(key>='3') println("I do not loop that much ! try again .");
  
  /* Previous Play Button & Loop Button
  int loopNum = 2; //Local Variables plays once and loops twice
  //song1.play(); //Parameter is milli-seconds from start of audio file to start of playing
  if ( key=='l' || key=='L' ) song1.loop(loopNum); //Parameter is number of repeats;
  */
}//End keyPressed
//
void mousePressed() {
};//End mousePressed
//
//End MAIN
//
