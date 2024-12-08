class Deck{ 
  int value, type;
  PImage cardIMG;
 
 Deck(int t, int v){
   type = t;
   value = v;
   
   
 }
 
 void deal(){
  //image(cardIMG, value*20, type*58);
  image(Card.cardIMG, CardList.get(5).type, CardList.get(5).value);
  println(CardList.get(5).type, CardList.get(5).value);
 }
  
}
