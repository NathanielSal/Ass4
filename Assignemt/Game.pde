class Game {
  boolean MenuUp;
  boolean GameRunning;
  boolean GameEnd;
  boolean dealt;
  boolean acePlayed;
  boolean Pbust;
  boolean Dbust;

  PImage PlayButton;
  PImage Dealer;
  PImage Back;
  PImage lose;
  PImage win;
  int Ptotal, Dtotal;

  String Pscore;
  Game() {
    //sets all booleans
    MenuUp = true;
    GameRunning = false;
    GameEnd = false;
    dealt = false;
    acePlayed = false;
    Pbust = false;
    Dbust = false;
    //names all PImage
    PlayButton = loadImage("Play.png");
    Dealer = loadImage("dealer.png");
    Back = loadImage("BACK.png");
    lose = loadImage("You_lose.png");
    win = loadImage("You_win.png");
    
    Ptotal = 0;
    Dtotal = 0;

    //text(Ptotal, 100,370);
  }

  //plays menu screen
  void menu() {
    background(255);
    image(PlayButton, 102, 102);
  }

  //plays game
  void GameStart() {
    background(0);
    GameRunning = true;
    image(Dealer, 10, 40);
    fill(53, 101, 77);
    rect(-1, 255, 401, 401);

    //deal buttom
    image(PlayButton, 245, 175);
    //plays starting cards
    deal(true);
    deal(true);
    deal(false);
    image(Back, 80, 0);
    Pbust = false;
  }

  void deal(boolean Player) {
    //manage playercards
    if (Player == true) {
      Card NewCard = Deck.get( int(random( Deck.size() ) ));
      Pcards.add(NewCard);
      Deck.remove(NewCard);
      image(NewCard.cardIMG, Pcards.size()*40, 260);
      //makes card value more human friendly (before ace was valued at 0)
      NewCard.value++;
      Ptotal = Ptotal + NewCard.value;
            if (Ptotal >= 21) {
        Pbust = true;
      }
      //sets all face cards to 10
      if (NewCard.value > 10) {
        NewCard.value = 10;
      }
      //Sets aces that dont make you bust to 11
      if (NewCard.value == 1 && Ptotal < 21) {
        NewCard.value = 11;
        acePlayed = true;
      }
      //checks total
      
      //sets aces that make you bust to 1
      if (acePlayed == true && Ptotal >= 22) {
        Ptotal = Ptotal - 10;
        
      }
      //Pscore = text(Ptotal, 100,370);
      fill(255);


    }

    //manage dealers cards
    else {
 
        Card NewCard = Deck.get( int(random( Deck.size() ) ));
        Dcards.add(NewCard);
        Deck.remove(NewCard);
        image(NewCard.cardIMG, Dcards.size()*40, 0);
        //makes card value more human friendly (before ace was valued at 0)
        NewCard.value++;
        Dtotal = Dtotal + NewCard.value;
        //sets all face cards to 10
        if (NewCard.value > 10) {
          NewCard.value = 10;
        }
        //Sets aces that dont make you bust to 11
        if (NewCard.value == 1 && Dtotal < 21) {
          NewCard.value = 11;
          acePlayed = true;
        }
        //checks total
        
        //sets aces that make you bust to 1
        if (acePlayed == true && Dtotal > 21) {
          Dtotal = Dtotal - 10;
        
      }
    }
    
    if (Pbust == true){
      if (Ptotal > Dtotal){
        GameEnd = true;
        background(0);
        image(win,0,0);
      if(Dtotal >= Ptotal) {
        GameEnd = true;
        image(lose,0,112.5);
      }
    }
  }
}
}
