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
song1 = minim.loadFile("music/ruel.mp3");//able to pass absulote path , file name and url 
}
//
void draw() {
if(song1.isLooping())println("there are",song1.loopCount(),"loops left");
if(song1.isPlaying() && !song1.isLooping() ) println("play once");
//
println("song position",song1.position(),"Songlength",song1.length());
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
  
  if(key>='2') println("I do not loop that much ! try again .");
   //alertnate play buttonand puase button 
   
    if (key=='p'|| key=='P')  {
    if(song1.isPlaying () ){
      song1.pause();
    } else{
      song1.play();
    }
    }
    //end play /puase button 
    //
  if (key =='m'||key=='M') {
    if (song1.isMuted() ) {
      song1.unmute();
    } else { 
      song1.mute();
    }
  }
     
  //end mute 
  
  //
  if((key =='s'||key=='S') ){//stop button 
  if (song1.isPlaying ()){
    song1.pause();
    song1.rewind();
  }else{
    song1.rewind();
  } 
  }//end stop button 
  
  
    
}//End keyPressed
//
void mousePressed() {
};//End mousePressed
//
//End MAIN
//
