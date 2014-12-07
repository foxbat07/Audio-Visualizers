void effect002()
      {
        
       //for( int i = 0 ; i < 100 ; i++)
           {
             noStroke();
             
             int size = frameCount %45;
             fill( random(128),0,205);
             ellipse(width/2, height/2 , size* size/2,size*size/2 );
             
             fill( 255,0,random(128) );
             ellipse(width/2, height/2 , size,size);
             
             fill( random(128),0,205);
             ellipse(width/2, height/2 , size* size/2- size,size*size/2-size );
             
           }
      }
 
      
