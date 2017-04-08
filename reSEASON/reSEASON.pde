//季節効果用
  //春
  int sakura=0;
  //冬
  int snow=0;
  //夏
  int sunl=0;

//季節管理
int season=0;

//添え字
int i=0;

//インスタンス数
  int num=36;
  //座標記憶
  int[] txlog=new int[num];
//オブジェクト宣言
Tree tr[]=new Tree[num];


//道、背景x座標
int br=0;

//変数宣言
PImage Back=null;
PImage SpT=null;
PImage SuT=null;
PImage AuT=null;
PImage WiT=null;
PImage road=null;
PImage gir=null;





//初期設定
void setup(){
//画面サイズ、フレームレート、線なし
  size(500,500);
  frameRate(60);
  noStroke();
  
//画像読み込み
  //背景
  Back=loadImage("BG.png");
  //木；春～冬
  SpT=loadImage("CC.png");
  SuT=loadImage("NT.png");
  AuT=loadImage("NTF.png");
  WiT=loadImage("NTW.png");
  //レンガ道
  road=loadImage("renga.png");
  //少女
  gir=loadImage("gir.png");

//フォント読み込み,色指定
  PFont myFont=createFont("Meiryo",16);
  textFont(myFont);
  fill(0,0,0);
  
//インスタンス作成
int pos=0;
  //春：1,夏：2，秋：3,冬:4
  for(i=0;i<num;i++){
    tr[i]=new Tree(pos,0,2);
    pos+=200;
  }
}

//描写
//背景→奥木→季節効果→手前木→（手前季節効果）→レンガ→少女
void draw(){
  
  //背景
  image(Back,br,0);


  //インスタンステスト
  for(i=0;i<num;i++){
  tr[i].display();
  tr[i].move();
  }
  //テスト

  text("テスト",250,50);
  
  //レンガ
  image(road,br,0);
  //少女
  image(gir,20,250);
  //背景、レンガ移動
  br--;
  
  if(br<-1000){
    reset();
  }
}

//倍速化(→入力)
void keyPressed(){
}
void keyReleased(){
}

//座標リセット
void reset(){
  br=0;
  for(i=0;i<36;i++){
    tr[i].x=txlog[i];
   }
}

