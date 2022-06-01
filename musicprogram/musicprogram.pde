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
void draw (){};
//

void keyPressed(){
  //song1.play();
  if ( key == 'l' || key == 'L') song1.loop(1);
};

void mousePressed (){};
