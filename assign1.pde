int b, x, y, g, h, i;

PImage fighterImg;
PImage backgroundFormerImg;
PImage backgroundLaterImg;
PImage treasureImg;
PImage enemyImg;
PImage hpImg;

void setup(){
  size(640,480);
  b = 0;
  x = 0;
  y = 0;
  g = floor(random(200));
  h = floor(random(640));
  i = floor(random(480));
 
   
  hpImg = loadImage("img/hp.png");
  fighterImg = loadImage("img/fighter.png");
  treasureImg = loadImage("img/treasure.png");
  enemyImg = loadImage("img/enemy.png");
  backgroundFormerImg = loadImage("img/bg1.png");
  backgroundLaterImg = loadImage("img/bg2.png");
  
  
}

void draw(){
  background(0);
  
 
  b +=2; 
  b %=1280;

  image(backgroundFormerImg,b,0);
  image(backgroundLaterImg,b-640,0);
  image(backgroundFormerImg,b-1280,0);
  
//blood
  fill(#ff0000);
  rect(12,0,g,20);
  
  image(hpImg,0,0);
  image(fighterImg,400,200);
  image(treasureImg,h,i);
  
  x +=3;  // x = x+2;
  x %=640;
  image(enemyImg,x,100);
  
}
