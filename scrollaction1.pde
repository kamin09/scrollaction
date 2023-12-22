PImage hari;
int x=100;
int[]a={0,0};
int min=0;
int max=5000;
int posi=0;
int wid=1000;
int hig=500;


void setup(){
  size(1000,500);
  background(255,255,255,255);
  fill(0,255,0);
  noStroke();
  rect(-1,393,1001,151);
  hari = loadImage("haribo.png");
  hari.resize(50,50);
}

void draw(){
  //draw stage
  if(x<min+wid/2){
    a[0] = 1;
    a[1] = 0;
    background(255,255,255,255);
    rect(-1,393,1001,151);
    //image(stage, 0, 0);
  }
  else if(x>max-wid/2){
    a[0] = 1;
    a[1] = 0;
    background(255,255,255,255);
    rect(-1,393,1001,151);
    //image(stage, 2900, 0);
  }
  else{
    a[0] = 0;
    a[1] = 1;
    background(255,255,255,255);
    rect(-1,393,1001,151);
    //image(stage, -x+400, 0);
  }
  //draw chara
  if(posi==0){
    if(x%2==0){
      //rect(x*a[0]+400*a[1],231,30,30);
      //image(hari1, x*a[0]+400*a[1], 231);
      image(hari,x*a[0]+500*a[1],351);
    }
    else{
      //rect(x*a[0]+400*a[1],230,30,30);
      //image(hari2, x*a[0]+400*a[1], 230);
      image(hari,x*a[0]+500*a[1],350);
    }  
  }  
  else{
    if(x%2==0){
      //rect(x*a[0]+400*a[1],231,30,40);
      //image(hari3, x*a[0]+400*a[1], 231);
      image(hari,x*a[0]+500*a[1],351);
    }
    else{
      //rect(x*a[0]+400*a[1],230,30,40);
      //image(hari4, x*a[0]+400*a[1], 230);
      image(hari,x*a[0]+500*a[1],350);
    }
  }
}

void keyPressed() {
  println(x);
  //if (key == CODED) {
    if (key == 'd') {
      if(x<max-wid/2){
          x = x+5;
          posi = 0;
      }
    } else if (key == 'a') {
      if(x>min){
          x = x-5;
          posi = 1;
      }
    }
  //}
}
