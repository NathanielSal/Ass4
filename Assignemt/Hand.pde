class Deck{ 
  int value, type;
  PImage cardIMG;
 
 Deck(int t, int v){
   type = t;
   value = v;
   
   
 }
 
 void display(){
  image(cardIMG, value*20, type*58);

  
 }
  
}
