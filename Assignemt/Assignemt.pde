Game game;
ArrayList<Card> Deck = new ArrayList<Card>();
ArrayList<Card> Pcards = new ArrayList<Card>();
ArrayList<Card> Dcards = new ArrayList<Card>();
PImage Dealer;




void setup(){
  size(400,400);
  background(0,0,255);
  game = new Game();
  
  for (int i = 0; i<4; i++){
    for (int j = 0; j<13; j++){
       
     Card Card = new Card(i,j);
      Card.cardIMG = loadImage((j+1)+"-"+i+".png");
      
      Deck.add(Card);
    }
  }
  
  game.menu();
  Dealer = loadImage("dealer.png");
  
}
void draw(){

}

 void mousePressed(){
   //see if you clicked button in main menu
   if (game.MenuUp == true && mouseX>145 && mouseX<255 && mouseY>180 && mouseY<225 ){
      game.GameStart();
   }  
   if (game.GameRunning == true && mouseX>290 && mouseX<400 && mouseY>255 && mouseY<295){
     game.deal(true);
   }
   if (game.GameRunning == true && mouseX>290 && mouseX<400 && mouseY>295 && mouseY<335){
     game.deal(false);
      

 }
 }
