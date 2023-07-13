//キャンパスを作成
float v,w,x,y;
size(500,500);

background(0,0,0);//背景を黒にする
noStroke();//図形のまわりをかかない


for(int i=0 ; i<200; i++){ //円を200個ランダムにかく
  
  //円の色を決める
       //あか　　　　　あお　　　　みどり　　 とうめい
  fill(random(255), random(255), random(255), 200); //パターン1
  //fill(random(255), 255, 255, 200); //パターン2
  
  //円を描く
   //円をかくためのランダムなばしょと大きさを変数に代入する
   x = random(0,width);
   y = random(0,height);
   w = random(10,50);
   v = random(10,50);
  ellipse(x, y, w , w);//円(パターン1)
  //ellipse(x, y, w , v);//円(パターン2)
}
