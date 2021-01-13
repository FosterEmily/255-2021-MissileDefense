class GameObject {
  
  PImage img;
  
  //this store the position to render the sprite, measured in pixels
  PVector position = new PVector();
  
  //This store the angle to render the sprite, measured in degrees
  float rotation = 0;
  
  GameObject(PImage img){
   this.img = img;
    
    
  }
  void update(){
    
  }
  
  void draw(){
    
    pushMatrix();
    translate(position.x, position.y);
    rotate(radians(rotation));
    
    image(img, -img.width/2, -img.height/2);
    
    popMatrix();
  }
}
