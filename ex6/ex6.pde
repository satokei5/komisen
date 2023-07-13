//キャンパスを作成
float v,w,x,y;
size(500,500);

background(0,0,0);//背景を黒にする

for(int i=0 ; i<200; i++){ //円を200個ランダムにかく
  //円の色を決める
       //あか　　　　　あお　　　　みどり　　 とうめい
  fill(random(255), random(255), random(255), 200); //パターン1
  //fill(random(255), 255, 255, 200); //パターン2
  
    x = random(0,width);  
    if(x < width/2){
      y = random(0,height);
      w = random(10,50);
      v = random(10,50);
      ellipse(x, y, w , w);//円(パターン1)
    }
    else{
      y = random(0,height);
      w = random(10,width);
      v = random(10,height);
      println(x);
      stroke(random(255), random(255), random(255), 200);
      strokeWeight(1);
      //strokeWeight(random(3,10));
     line(x, y, w, v);
  }
}
