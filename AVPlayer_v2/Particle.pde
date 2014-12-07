class Particle {
  PVector location;
  PVector velocity;
  PVector acceleration;
  float lifespan;

  Particle(PVector l) {
    acceleration = new PVector( random(-0.02,0.02),random(-0.02,0.02)  );
    velocity = new PVector(random(-2,2),random(-2,2));
    location = l.get();
    lifespan = 255.0;
  }

  void run() {
    update();
    display();
  }

  // Method to update location
  void update() {
    velocity.add(acceleration);
    velocity.add(new PVector( v_xy11,v_xy12));
    acceleration.add(new PVector( v_xy21,v_xy22) );
    
    if (!beat.isKick() )
        {
          location.add(velocity);
          location.add(velocity);
        }
    else
        location.sub(velocity);    
    
    lifespan -= 1.0;
  }

  // Method to display
  void display() {
    stroke(0,lifespan);
    //strokeWeight(0.2);
    noStroke();
    
    if (!beat.isKick() )
        fill(0,100,205,lifespan);
    else
        fill(255,100,205,lifespan);    
    
    
    if (!beat.isHat() )
      ellipse(location.x,location.y,12,12);
    else
      ellipse(location.x,location.y,18,18);
    
      
  }
  
  // Is the particle still useful?
  boolean isDead() {
    if (lifespan < 0.0) {
      return true;
    } else {
      return false;
    }
  }
}


