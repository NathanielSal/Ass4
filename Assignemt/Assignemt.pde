Game game;
Cards cards;
PImage Dealer;

void setup(){
  size(400,400);
  background(0,0,255);
  game = new Game();
  cards = new Cards();
  
  game.menu();
  Dealer = loadImage("dealer.png");
  
}
void draw(){
  //draws tha

}

 void mousePressed(){
   //see if you clicked button in main menu
   if (game.MenuUp == true && mouseX>145 && mouseX<255 && mouseY>180 && mouseY<225 ){
      game.GameStart();
   }  
   if (game.GameRunning == true && cards.dealt == false && mouseX > 300){
     cards.deal();
   }

 }
