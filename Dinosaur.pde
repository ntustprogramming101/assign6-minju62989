class Dinosaur extends Enemy{
	// Requirement #4: Complete Dinosaur Class
  float currentSpeed = 2f;
	final float TRIGGERED_SPEED_MULTIPLIER = 2;

	// HINT: Player Detection in update()
	/*
	float currentSpeed = speed
	If player is on the same row with me AND (it's on my right side when I'm going right OR on my left side when I'm going left){
		currentSpeed *= TRIGGERED_SPEED_MULTIPLIER
	}
	*/
  void display(){
    
    int direction = (currentSpeed > 0) ? RIGHT : LEFT;
  
  pushMatrix();
  translate(x, y);
  if (direction == RIGHT) {
    scale(1, 1);
    image(dinosaur, 0, 0, w, h); 
  } else {
    scale(-1, 1);
    image(dinosaur, -w, 0, w, h); 
  }
  popMatrix();
  }

  void update(Player player){
    x += currentSpeed;
    if(x < 0 || x > width - w){
      currentSpeed *= -1;
    }
    
  
    
      if(y== player.y&&currentSpeed >0 &&player.x > x) {currentSpeed = 10f;}
      else if(y == player.y&&currentSpeed <0 &&player.x < x) {currentSpeed = -10f;}
      else if(currentSpeed >0) {currentSpeed = 2f;}
      else{currentSpeed = -2f;}
    
    
  }

  Dinosaur(float x, float y){
    super(x, y);
  }

}
