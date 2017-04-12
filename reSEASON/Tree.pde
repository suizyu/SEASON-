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
    x-=1;
  }
  //表示
  void display(){
    //種類
    switch(type){
      case 0://春
        image(SpT,x,y);
        break;
      case 1://夏
        image(SuT,x,y);
        break;
      case 2://秋
        image(AuT,x,y);
        break;
      case 3://冬
        image(WiT,x,y);
        break;
      default://1～4以外
         break;
    }
  }

}
