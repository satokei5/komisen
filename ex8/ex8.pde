//フクロウを動かす
float x, centerX;
float y, centerY;
int vx;

void setup() {
size(600, 600);
centerX = width/2;
centerY = height/2;
x = centerX;
y = centerY;
vx = 10; //左右に動く速度
//フレームレートは10[フレーム/秒]で動画再生
frameRate(10);
}

void draw() {

//残像をなくす
fill(128);
noStroke();
rect(0, 0, 600, 600);  

translate(x,y); 

//左右に動き回る
x = x + vx;
if(x > width || x < 0){ // 画面外に出たら
    vx = -vx; // 速度を逆向きにする
}

//ランダムに動き回る(ランダムウォーク)
//x = x + random(-20,20);
//y = y + random(-20,20);

//フクロウの絵をかく
//茶色のフクロウ
stroke(185,60,20);
//カラフルなフクロウ
//stroke(random(255),random(255),random(255));
strokeWeight(70);
line(0,-35,0,-65);
noStroke();
fill(255);
ellipse(-17.5,-65,35,35);
ellipse(17.5,-65,35,35);
arc(0,-65,70,70,0,PI);
fill(0);
ellipse(-14,-65,8,8);
ellipse( 14,-65,8,8);
quad(0,-58,4,-51,0,-44,-4,-51);
}
