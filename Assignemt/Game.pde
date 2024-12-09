class Game {
  boolean MenuUp;
  boolean GameRunning;
  boolean GameEnd;
  boolean dealt;

  PImage PlayButton;
  PImage Dealer;
  PImage Back;

  Game() {
    MenuUp = true;
    GameRunning = false;
    GameEnd = false;
    dealt = false;

    PlayButton = loadImage("Play.png");
    Dealer = loadImage("dealer.png");
    Back = loadImage("BACK.png");
  }


  void menu() {
    background(255);
    image(PlayButton, 102, 102);
  }

  void GameStart() {
    background(0);
    GameRunning = true;
    image(Dealer, 10, 40);
    fill(53, 101, 77);
    rect(-1, 255, 401, 401);

    //deal buttom
    image(PlayButton, 245, 175);
    deal(true);
    deal(true);
    deal(false);
    image(Back, 80, 0);

  }

  void deal(boolean Player) {
    if (Player == true) {
    Card NewCard = Deck.get( int(random( Deck.size() ) ));
    Pcards.add(NewCard);
    Deck.remove(NewCard);
    image(NewCard.cardIMG,Pcards.size()*40, 260);
    }
    
    else{
    Card NewCard = Deck.get( int(random( Deck.size() ) ));
    Dcards.add(NewCard);
    Deck.remove(NewCard);
    image(NewCard.cardIMG,Dcards.size()*40, 0); 
    }
  }
}
