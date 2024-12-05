PImage Dealer;
void setup(){
  size(400,400);
  background(0);
  Dealer = loadImage("PokerMan.png");
  float x = 3;
  float y = 10;
  for( int i=0; i<180; i++){
      x = x + random(9,17);
      y = 0;
    for( int u=0; u<180;u++){
      circle(x,y, 3);
      y = y + random(14,17); 
      
   
    }
    
  }
}

void draw(){
fill(180,130,240);
rect(-1,260, 401,401);
image(Dealer, 200,100);
  
}
