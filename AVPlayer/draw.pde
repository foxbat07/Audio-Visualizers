
void draw()
{
  background(0);
  fill(0,100,255);
  
  
  if ( v_toggle1 == 1.0f)
      {
        
      if ( beat.isKick() ) kickSize = 32;
      if ( beat.isSnare() ) snareSize = 32;
      if ( beat.isHat() ) hatSize = 32;
      textSize(kickSize);
      text("KICK", width/2, height-50);
      textSize(snareSize);
      text("SNARE", width/2+100, height-50);
      textSize(hatSize);
      text("HAT", width/2 + 200, height-50);
      kickSize = constrain(kickSize * 0.95, 16, 32);
      snareSize = constrain(snareSize * 0.95, 16, 32);
      hatSize = constrain(hatSize * 0.95, 16, 32);
      
      }
  if ( v_toggle4 == 1.0f)
      {
        
      textSize(16);
      vGap = 210;
      text("v_fader1:"+ v_fader1, width-hGap , height- vGap);
      vGap-=20;
      text("v_fader2:"+ v_fader2, width-hGap , height- vGap);
      vGap-=20;
      text("v_fader3:"+ v_fader3, width-hGap , height- vGap);
      vGap-=20;
      text("v_fader4:"+ v_fader4, width-hGap , height- vGap);
      vGap-=20;
      text("v_fader5:"+ v_fader5, width-hGap , height- vGap);
      
      vGap-=20;
      text("v_toggle1:"+ v_toggle1, width-hGap , height- vGap);
      vGap-=20;
      text("v_toggle2:"+ v_toggle2, width-hGap , height- vGap);
      vGap-=20;
      text("v_toggle3:"+ v_toggle3, width-hGap , height- vGap);
      vGap-=20;
      text("v_toggle4:"+ v_toggle4, width-hGap , height- vGap);
      strokeWeight(0.5);
      
      }
      
      
  if ( v_toggle2 == 1.0f)
      {
      for(int i = 0; i < song.bufferSize() - 1; i++)
          {
            
            float x1 = map( i, 0, song.bufferSize(), 0, width );
            float x2 = map( i+1, 0, song.bufferSize(), 0, width );
            stroke(0,100,205);
            strokeWeight(0.8);
            line( x1, 50 + song.left.get(i)*50, x2, 50 + song.left.get(i+1)*50 );
            line( x1, 150 + song.right.get(i)*50, x2, 150 + song.right.get(i+1)*50 );
          }
      }
  
      
   if ( v_toggle3 == 1.0f)
      {   
        fft.forward( song.mix);
        stroke(0,100,205);
        strokeWeight(3);
        for ( int i = 0 ; i< fft.specSize() ; i++ )
            line ( i, height, i , height - fft.getBand(i)*3 );
      } 
  
  
  ps.addParticle();
  ps.run();
  
  
  
  
  if( frameCount%100==0)
      println( "fft spec size: "+ fft.specSize() + " fft  get band " + fft.getBand(0 )  + + fft.getBand(1 ) );
      
}
