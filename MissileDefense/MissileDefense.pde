
Player thePlayer;
GameObject background;

ArrayList<Asteroid> asteroids = new ArrayList<Asteroid>();

//this function is called exactly once:
void setup(){
  size(700, 800);// set size of window

  thePlayer = new Player();
  background = new GameObject( loadImage("space.png"));
  background.position.x = width/2;
  background.position.y = height/2;
  
  for(int i = 0; i<10; i++){
   
    Asteroid a = new Asteroid();
    asteroids.add(a);
    
  }

}


// this function is called every 1/60th of a second
// We will use this to create the "game loop" design pattern.
// Each time this function is called, we can think of it as a "tick".
void draw(){
  
  // === Calc time ===
  // Calculates how much time has passed since the previous tick.
  
  // === Process Input ===
  // Get all input from all devices.
  
  // === Update ===
  // update all game objects
  
  //This is essentially the update design pattern.
  thePlayer.update();
  
  
  // === Draw ===
  // Render all game objects
  background(0);
  background.draw();
  for(Asteroid a: asteroids) a.draw;
  thePlayer.draw();

}

PImage GetRandomAstroidImage(){
  
     PImage img = null;
   
   int num = (int)random(0, 3);
   switch(num){
    case 0:
    img = loadImage("astriod1.png");
    break;
    case 1:
    img = loadImage("astriod2.png");
    break;
    case 2:
    img = loadImage("astriod3.png");
    default:
    break;
   }
   return img;
  
}
