int size = 1;

public void setup()
{
size(485,485);
background(0);
}
public void draw()
{
sierpinski(0,485,size);
}
public void mousePressed()
{

if(size < 180){
size*=3;
background(0);}
else if (size < 360)
size*=2;
else if (size >= 360){
size = size/360;
background(0);
}}

public void sierpinski(int x, int y, int len) 
{

fill(x/2,56,206);
if (len <= 20)
triangle(x,y,x+len,y,x+len/2,y-len);
else{
sierpinski(x,y,len/2);
sierpinski(x+len/2,y,len/2);
sierpinski(x+len/4,y-len/2,len/2);}

}
