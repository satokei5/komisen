float x;
float y=100;
float w=40.0;
float h=40.0;

size(600, 300);
for(int i=0; i<10; i=i+1){
  x = random(10,300);
  println(x); //ランダムな値をコンソールに表示
  ellipse(x, y, w, h);
}
