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
        if(i%2==1){
          //色変化
          if(i<=36&&i>27){
            tint(135,135,135);
          }
          image(trpt[season],x,y);
        }else{
          noTint();
          image(trpt[season],x,y);
        }
  }
  
}
