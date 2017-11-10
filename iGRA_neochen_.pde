void setup () { size(600,400);}
float ballX=0;
float ballY=0;
float speedX=1;
float speedY=2;
int score=0;
void draw () {
float i=100;
text("score: "+score,10,10);
if(ballX<0 || ballX>width) speedX=-speedX;
if(ballY>height) { speedY=-speedY;
float d=abs(mouseX-ballX);
if (d<i) score+=1;
else exit();  }
else speedY+=3;
ballX+=speedX;
ballY+=speedY;
background(255);
ellipse(ballX,ballY,50,50);
rect(mouseX-i,height-10,i,10);
}

//игра требует доработки(это будет видно Вам сразу) Ps я хочу ее доделать позже
//так и не разобрался, почему не выводит "счет". 
//README: при запуске, держите мышь в левой части окна