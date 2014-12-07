void setup()
    {
      
      size ( 800,800);
      background( 0);
      frameRate(20);
      
    }
void draw()
      {
        
        background(0);
        
        drawCircle ( 400,400,1200);
        
      }
      
void drawCircle(float x , float y , float radius)
                {
                  ellipse( x,y,radius, radius);
                  if ( radius > 2)
                      {
                        radius *=0.8f;
                        noStroke();
                        if ( frameCount%2 ==0) 
                          fill(0,random(255),255,random(255));
                        else
                          fill(0,0,0,255);
                        
                        drawCircle( x, y, radius);
                      }
                }
                
                  
        
    
