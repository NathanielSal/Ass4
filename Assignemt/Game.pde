class Game{
  boolean MenuUp;
  boolean GameRunning;
  boolean GameEnd;
  
  PImage PlayButton;
  PImage Dealer;
  
  Game(){
   MenuUp = true;
   GameRunning = false;
   GameEnd = false;
   
   PlayButton = loadImage("Play.png");
   Dealer = loadImage("dealer.png");
   
  }
  
  
  void menu(){
    background(255);
    image(PlayButton,102,102);
   
  }

  void GameStart(){
   background(0); 
   GameRunning = true;
   image(Dealer,10,40);
   fill(53,101,77);
   rect(-1,255, 401,401);
  }


}
