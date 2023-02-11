public void setup(){
  size(1000,1000);
  background(0,0,0);
  stroke(255,255,255);
  noFill();
  strokeWeight(2);
  fractal(500,500,250);
}

public void fractal(int x,int y, int len){
  if(len <= 50){
    ellipse(x,y,len,len);
    rect(x-len,y-len,2*len,2*len);
  } else {
    fractal(x,y,len-25);
    fractal(x+len,y-len,len/2);
    fractal(x-len,y+len,len/2);
    fractal(x+len,y+len,len/2);
    fractal(x-len,y-len,len/2);
  }
}
