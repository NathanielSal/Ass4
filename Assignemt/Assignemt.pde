Game game;
PImage Dealer;

void setup(){
  size(400,400);
  background(0,0,255);
  game = new Game();
  game.menu();

  Dealer = loadImage("dealer.png");
  
}
void draw(){
  
}

 void mousePressed(){
   println("jack");
   //see if you clicked button in main menu
   if (game.MenuUp == true && mouseX>145 && mouseX<255 && mouseY>180 && mouseY<225 ){
      game.GameRunning();
      
   }

 }
