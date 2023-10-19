/*
size(500,500);
int i,k;
for(i=0; i<=10; i++){
  for(k=0; k<=10; k++){
    rect(10*i*3, k*10*3, 30, 30);
    
    if(k%2 == 0){
     if(i%2==0){
      fill(0,0,0);
      } else{
      fill(255,255,255);
      }
     } 
     
     if(k%2 == 1){   
       if(i%2 == 0){
        fill(255,255,255);
       } else{
      fill(0,0,0);
       }
     }
  }
}



fill(255,0,0);
rect(0,0,30,30);
fill(0,0,0);
rect(30,0,60,30);
rect(0,60,30,30);
fill(255,255,255);
rect(0,30,30,30);
rect(30,30,30,30);
rect(30,60,30,30);
fill(0,0,255);
rect(60,60,30,30);

 
int a;
void setup(){
 size(300,200);
 frameRate(1);
 a=0;
 }
 void draw(){
background(200,200,200);
 int i;
for(i=0; i<10; i++){
 if((i+a)%2==0){
 fill(255,0,0);
rect(30*i, 0, 30, 30);
 }
else{
fill(0,0,255);
ellipse(15+30*i, 15, 30, 30);
}
 }
 a=a+1;
 } 
 

int a;
void setup(){
  size(300,30);
  frameRate(1);
  a=0;
}
void draw(){
  background(255,255,255);
  int i;
  for(i=0; i<10; i++){
    if(a%10==a){
      fill(255,255,255);
      rect(10,0,30,30);
    } else{
      fill(255,0,0);
      rect(i*10,0,30,30);
    }
  }
}

*/


//p7の例
/*
int squareSize = 40;
int redSquareIndex = 0; 

void setup() {
  size(400, 400);
  frameRate(2);
}

void draw() {
  background(255); 
  
  if (redSquareIndex % 20 < 10){
    for (int i = 0; i < 10; i++) {
      int x = i * squareSize;
      if (i == redSquareIndex) {
        fill(255, 0, 0);
      } else {
        fill(255); 
      }
    rect(x, height / 2 - squareSize / 2, squareSize, squareSize);
    }
  } 
  if( redSquareIndex % 20 >= 10){
    for (int k = 9; k >= 0; k--) {
      int x = k * squareSize;
      if (redSquareIndex + k == 19) {
        fill(255, 0, 0); 
      } else {
        fill(255); 
      }
    rect(x, height / 2 - squareSize / 2, squareSize, squareSize);
    }
  }
    
  redSquareIndex++;
  redSquareIndex = redSquareIndex % 20;
}
*/


//以下p8の例

int a,b;
int [][] s= {{0,1,0,1,1,1,0,0,0,0},
{0,1,0,0,0,1,1,1,0,1},
{0,1,1,1,0,1,0,0,0,0},
{0,0,0,1,0,1,0,1,1,0},
{1,1,0,1,0,1,0,1,0,0},
{0,1,0,1,0,0,0,1,0,0},
{0,1,0,1,0,1,1,1,0,1},
{0,0,0,1,0,1,0,0,0,1},
{0,1,1,1,0,1,0,1,1,1},
{0,0,0,0,0,1,0,0,0,0}};

 
void setup() {
 size(300,300);
 frameRate(5);
 a=0;
 b=0;
 }
void draw() {
background(200,200,200);
 int i;
 int j;
 
for(i=0; i<100; i++){
  for(j=0; j<10; j++){
   int k = i/10;
   int c = a/10;
if(s[k][j]==1){
 fill(0,0,0);
 }
else if(k == c){
  if (j == b){
    fill(255,0,0);
  } else {
    fill(255);
  }
}
else{
  fill(255,255,255);
}
rect(30*j, 30*k, 30, 30);
 }
}
 a=a+1;
 if(a>99){
 a=0;
}
 b=b+1;
 if(b>9){
 b=0;
 } 
}
