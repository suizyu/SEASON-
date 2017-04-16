//クラス定義
class Tree{
  //座標
  int x,y,type; 
  
  //コンストラクタ定義
  Tree(int tx,int ty,int st){
    x=tx;
    y=ty;
    type=st;
    txlog[i]=tx;
  }
  
  //メソッド定義
  //アニメーション
  void move(){
    if(keyCode==RIGHT){
      x-=speed*3;
    }else{
      x-=speed;
    }
  }
  //表示
  void display(){
        image(trpt[season],x,y);
  }
}
