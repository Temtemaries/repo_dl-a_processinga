void setup() {

size(600,400);}

void draw () {
background(255);}

void bubble (int array[], int sz) 
{
  int i,j;
  int tmp;
  for (i=0;i<sz-1;i++) 
  {
    for (j=0;i<sz-i-1;j++) 
    {
      if (array[j] > array [j+1]) 
      {
        /*swap arr[j] and arr[j+1]*/
        tmp=array[j];
        array[j]=array[j+1];
        array[j+1]=tmp;
      }}}}
      //zabil skoro sdelau