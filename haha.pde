int x, y ,r;
float alf;
PImage photo;
void setup()
{
  size(700,700);
  r=250;
  photo=loadImage("spiner.png");
}
void draw()
{
  background(255);
  alf=alf+10000000;
  x=350+round(r*cos(PI*alf/180));
  y=350+round(r*sin(PI*alf/180));
  image (photo,x-60,y-50);
  
  
  

}
  