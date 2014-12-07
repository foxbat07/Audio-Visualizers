void effect001 ()
      {
        PImage p = get();
        tint(180 , frameCount%360, frameCount%360 + 120, 15);
        image(p, -6, -6, 606+ 36* cos( frameCount%36 ), 606 + 36* sin( frameCount%36 ) );
        stroke(255);
      
        strokeWeight(1);
        float a = 0;
        float angle = (2*PI) / 300;
        //int step = player.bufferSize() / 300;
        int step = input.bufferSize() / 300;
        for(int i=0; i < input.bufferSize() - step; i+=step) 
            {
              float x = 300 + cos(a) * (40 * input.mix.get(i)*3 + 60*2);
              float y = 300 + sin(a) * (40 * input.mix.get(i)*3 + 60*2);
              float x2 = 300 + cos(a + angle) * (40 * input.mix.get(i+step) *3+ 60*2);
              float y2 = 300 + sin(a + angle) * (40 * input.mix.get(i+step)*3 + 60*2);
              line(x,y,x2,y2);
              a += angle;
            }
        
      }
      
      
