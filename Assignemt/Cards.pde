class Cards{
  boolean dealt;
  PImage card;
  Cards(){
    dealt = false;
    card = loadImage("10-D.png");
  }
  
  void deal(){
    dealt = true;
    image(card,50,50);
  }
}
