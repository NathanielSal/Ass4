Game game;
Deck [][] Card;
PImage Dealer;

int cols = 4;
int rows = 13;
void setup(){
  size(400,400);
  background(0,0,255);
  game = new Game();
  Card = new Deck[cols][rows];
  
  for (int i = 0; i<cols; i++){
    Cards.add(new Deck() );
  }
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
   if (game.GameRunning == true && mouseX > 300){
   }

 }
