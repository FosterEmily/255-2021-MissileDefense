class Asteroid extends GameObject{
 
  Asteroid(){

   
    super(GetRandomAstroidImage());
    
    position.x = random(width);
    position.y = random(height);
  }
  
}
