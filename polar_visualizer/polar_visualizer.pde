import ddf.minim.*;
Minim minim;
AudioPlayer player;

void setup() {
  size(600,600);
  minim = new Minim(this);
  player = minim.loadFile("gm.mp3");
  player.play();
  player.loop();
}

void draw() 
{
  PImage p = get();
  tint(180 , frameCount%360, frameCount%360 + 120, 15);
  image(p, -6, -6, 606+ 36* cos( frameCount%36 ), 606 + 36* sin( frameCount%36 ) );
  stroke(255);

  strokeWeight(1);
  float a = 0;
  float angle = (2*PI) / 300;
  int step = player.bufferSize() / 300;
  for(int i=0; i < player.bufferSize() - step; i+=step) {
    float x = 300 + cos(a) * (40 * player.mix.get(i)*3 + 60*2);
    float y = 300 + sin(a) * (40 * player.mix.get(i)*3 + 60*2);
    float x2 = 300 + cos(a + angle) * (40 * player.mix.get(i+step) *3+ 60*2);
    float y2 = 300 + sin(a + angle) * (40 * player.mix.get(i+step)*3 + 60*2);
    line(x,y,x2,y2);
    a += angle;
  }
}

void stop() 
{
  player.close();
  minim.stop();
  super.stop();
}



void keyPressed()
      {
        
        
        if ( key == ' ')
            saveFrame("frame####.jpg");
            
            
      }      
