import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;


Minim minim;
AudioPlayer player;
AudioInput input;
int m = millis();
int s = second();
void setup() {
  size(600,600);
  minim = new Minim(this);
  //player = minim.loadFile("gm.mp3");
  input = minim.getLineIn(Minim.MONO, 512);


  //player.play();
  //player.loop();
}

void draw() 
{
  
  effect001();
  //effect002();
  effect003();
  effect004();
}

void stop() 
{
  input.close();
  minim.stop();
  super.stop();
}



void keyPressed()
      {  
        if ( key == ' ')
            saveFrame("frame####.jpg");                       
      }      
