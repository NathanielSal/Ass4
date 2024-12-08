Game game;
ArrayList<Deck> CardList = new ArrayList<Deck>();
PImage Dealer;
PImage cardIMG;

int type = 4;
int value = 13;
void setup(){
  size(400,400);
  background(0,0,255);
  game = new Game();
  
  for (int i = 0; i<type; i++){
    for (int j = 0; j<value; j++){
       
     Deck Card = new Deck(i,j);
      Card.cardIMG = loadImage((j+1)+"-"+i+".png");
      
      CardList.add(Card);
    }
  }
  
  game.menu();
  Dealer = loadImage("dealer.png");
  
}
void draw(){
  for (Deck C : CardList){
    C.display();
  }
  
}

 void mousePressed(){
   //see if you clicked button in main menu
   if (game.MenuUp == true && mouseX>145 && mouseX<255 && mouseY>180 && mouseY<225 ){
      game.GameStart();
   }  
   if (game.GameRunning == true && mouseX > 300){
   }

 }
