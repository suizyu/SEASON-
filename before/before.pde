//ここに変数の宣言を書く。画像を動かしたのも参照
float x ;
float y ;

//単体木
int CQ =0;

int f =0;
int SB =0; 

int z =0;
int previousKey = 0;

//季節管理
int season =0;

//雪管理
int SNOW =0;
int SB =0;
int fall = 0;

//光管理
int right =0;


//フラグ追加用
int CQ =0;
int DX =0;
int HX =0;
int RX =0;

//フラグ管理
int step =0;


//画像ローディング
PImage BGS = null;
PImage BGSM = null;
PImage BGF =null;
PImage BGW =null;
PImage BG = null;
PImage renga = null;
PImage gir = null;
PImage SY = null;
PImage CC = null;
PImage NT = null;
PImage NTF =null;
PImage NTW = null;


void setup(){
  size(500,500);
  frameRate(60);
  noStroke();
  BGS = loadImage("BGS.png");
  BGSM = loadImage("BGSM.png");
  BGF = loadImage("BGF.png");
  BGW = loadImage("BGW.png");
  BG = loadImage("BG.png");
  renga = loadImage("renga.png");
  gir = loadImage("gir.png");
  CC =loadImage("CC.png");
  NT =loadImage("NT.png");
  NTW =loadImage("NTW.png");
  NTF =loadImage("NTF.png");
}

void draw(){
   CQ--; 
   x--;
   fall++;
   SB++;
  image(BG,x,0);
  noStroke();


switch(season){
  case 0:
          
          image(BGS,x,0);
          image(CC,100+CQ,0);
          image(CC,500+CQ,0);
          image(CC,1000+CQ,0);
          break;
  case 1:
          image(BGSM,x,0);
          strokeWeight(150);
          stroke(255,255,0,25);
          line(width,0,0,450);
          image(NT,100+CQ,0);
          image(NT,500+CQ,0);
          image(NT,1000+CQ,0);

          break;
  case 2:
          image(BGF,x,0);
          image(NTF,100+CQ,0);
          image(NTF,500+CQ,0);
          image(NTF,1000+CQ,0);
          break;
  case 3:          
          image(BGW,x,0);
           for(int SNOW=0; SNOW<5; SNOW++){
            fill(255,255,255);
            ellipse(100*SNOW,SB,10,10);
          }
          image(NTW,100+CQ,0);
          image(NTW,500+CQ,0);
          image(NTW,1000+CQ,0); 
          break; 
       
  default:
          break;
}
;
  image(renga,x,0);
  image(gir,25,250);

if(season ==1){
          strokeWeight(150);
          stroke(255,255,0,25);
          line(width,0,0,700);
}  
  
if(season == 3){
            for(int SNOW=0; SNOW<10; SNOW++){
            fill(255,255,255);
            ellipse(50*SNOW,-50+fall,10,10);
          }
}
  
 if(x<-1000){
   x=0;
   CQ =0;
   season++;
 }

if(fall-50>510){
  fall=0;
}
if(SB>450){
  SB=0;
}


if(season>=4){
  season =0;
  SNOW =0;
}


  PFont myFont =createFont("Meiryo",16);
  textFont(myFont);
  fill(0,0,0);
  text("Push RIGHTkey:acceleration",250,50);
  
}




void keyPressed(){
  previousKey = key;
  if(keyCode == RIGHT){  
    CQ = CQ*2;
    x = x*2;
  }
}

void keyReleased(){
  if(keyCode ==RIGHT){
    previousKey=0;
  }
}
