
int n = 350; 
int[] sort_arr = new int[n]; 

void setup() 
{ 
size(700, 700); 

sort_arr = create_random_array(n, width ); 
} 

int[] create_random_array(int n, int max) 
{ 
int[] x = new int[n]; 
for (int i = 0; i < n; i++) 
{ 
x[i] = int(random(max)); 
} 
return x; 
} 

void draw() 
{  
background(255);

for (int i=0; i<n-1; i++) 
{ 
int k=1;
for (int j=i+1; j<n; j++) 
{ 
if(sort_arr[j] < sort_arr[k]) 
{ 
k = j; 
} 
} 
int tmp = sort_arr[i]; 
sort_arr[i] = sort_arr[k]; 
sort_arr[k] = tmp; 
} 
plot_array(sort_arr, n); 
} 

void plot_array(int[] x, int s) 
{  
for (int i = 0; i < s; i++) 
{
rect(0, height / s * i, x[i], height / s); 
fill(125,105);

} 
} 

void mouseClicked() 
{ 
sort_arr = create_random_array(n, width ); 
}