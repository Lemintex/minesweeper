class Death {
  boolean dead;
  Death() {
    dead = false;
  }

  void onDeath() {
    dead = true;
    
      fill(255,0,0);
      text("You died!", width/2, height/2);
      
  }
}
