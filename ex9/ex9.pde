//さんぎたんを動かす

// 画像を読み込むための変数
PImage img_sangitan;
PImage img_bg;

//画像を配置するための座標
int x = 0, y = 0;
int vx;

// 初期設定
void setup(){
    size(1100, 620); //キャンパスのサイズを指定
    vx = 10; //左右に動く速度
    // 各種画像の読み込み
    img_sangitan = loadImage("sangitan_small.png"); //さんぎたん(小サイズ)
    img_bg = loadImage("bg.jpg");   //産技短の建物の写真
    
     //フレームレートは60[フレーム/秒]で動画再生
     frameRate(60);    
}

//産技短の建物を背景にさんぎたんを水平方向に移動表示-------
void draw(){
    y = height/2 + 100;  //さんぎたんのタテの座標を決める
    image(img_bg,0,0);   //産技短の建物の画像を追加
    image(img_sangitan, x, y);//さんぎたんイラストを座標(x,y)に配置
    
    //左右に動き回る
    x = x + vx;
    if(x > width || x < 0){ // 画面外に出たら
      vx = -vx; // 速度を逆向きにする
    }
}
