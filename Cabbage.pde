class Cabbage extends Item {
	// Requirement #1: Complete Cabbage Class
  Cabbage(float x,float y){
    super(x,y);   
  }

  void display(){
    
    
    
			// Display Cabbage
		if(isAlive == true){	
    image(cabbage,x,y);
  }
  }

	void checkCollision(Player player){		// Check collision with player
			if(isAlive == true){
  if(player.health < player.PLAYER_MAX_HEALTH
			&& isHit(x, y, w, h, player.x, player.y, player.w, player.h)){

				player.health ++;
				isAlive =false;// Now that they're objects, toggle isAlive instead of throwing them away from screen

			}
		}
}
}
