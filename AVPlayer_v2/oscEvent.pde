void oscEvent(OscMessage theOscMessage) {

    String addr = theOscMessage.addrPattern();
    float  val  = theOscMessage.get(0).floatValue();
    
   
    
    if(addr.equals("/1/multitoggle/1/1"))   { v_mt1 = val; 
                                              println("multi toggle 1");
                                            }
    else if(addr.equals("/1/multitoggle/2/1"))   { v_mt2 = val; }
    else if(addr.equals("/1/multitoggle/3/1"))  { v_mt3 = val; }
    else if(addr.equals("/1/multitoggle/4/1"))   { v_mt4 = val; }
    else if(addr.equals("/1/multitoggle/5/1"))   { v_mt5 = val; }
    
    else if(addr.equals("/1/xy1"))  { 
                                       float  val1  = theOscMessage.get(0).floatValue();
                                       float  val2  = theOscMessage.get(1).floatValue();
                                       v_xy11 = val1; 
                                       v_xy12 = val2; }
    else if(addr.equals("/1/xy2"))  {
                                      float  val1  = theOscMessage.get(0).floatValue();
                                      float  val2  = theOscMessage.get(1).floatValue();
                                      v_xy21 = val1; 
                                      v_xy22 = val2; }
                                      
                                      
    else if(addr.equals("/1/fader"))  { v_fader = val; }
    else if(addr.equals("/1/encoder"))  { v_encoder = val; }    
    
    else if(addr.equals("/1/multipush/1/1"))   { v_mp1 = val; }
    else if(addr.equals("/1/multipush/2/1"))   { v_mp2 = val; }
    else if(addr.equals("/1/multipush/3/1"))   { v_mp3 = val; }
    else if(addr.equals("/1/multipush/4/1"))   { v_mp4 = val; }
    else if(addr.equals("/1/multipush/5/1"))   { v_mp5 = val; }
    
    
    
    
    
    
    
    
}

