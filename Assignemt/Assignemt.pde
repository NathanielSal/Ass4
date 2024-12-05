PImage Dealer;
void setup(){
  size(400,400);
  background(0);
  Dealer = loadImage("dealer.png");
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
fill(53,100,75);
image(Dealer, 0,30);
rect(-1,260, 401,401);

  
}
