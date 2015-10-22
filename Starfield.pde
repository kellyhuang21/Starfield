Particle [] parts;
public void setup()
{
  size(800,800);
  parts = new Particle[300];
  for(int i = 0; i<parts.length; i++)
  {
    parts[i] = new NormalParticle();
  }
  //for(int i = 0; i<parts.length; i++)
  //{
  //  parts[i] = new JumboParticle();
  //}
   parts[0] = new OddballParticle();
   parts[1] = new JumboParticle();
}

public void draw()
{
  fill(0,0,0,40);
  rect(0,0,800,800);
  for(int i = 0; i < parts.length; i++)
  {
    parts[i].move();
    parts[i].show();
  }
}

class NormalParticle implements Particle
{
  double dX, dY, dTheta, dSpeed;
  int dColor;
  NormalParticle()
  {
    dX = width/2;
    dY = height/2;
    dTheta = (Math.random()*Math.PI*2);
    dSpeed = (Math.random()*2)+1;
    dColor = color((int)(Math.random()*255+1),(int)(Math.random()*255+1),0);
  }
  public void move()
  {
    dX = dX + Math.cos(dTheta) * dSpeed;
    dY = dY + Math.sin(dTheta) * dSpeed;
    dTheta = dTheta+.015;
  }
  public void show()
  {
    fill(dColor);
    ellipse((float)dX,(float)dY,10,10);
  }
}

interface Particle
{ 
  public void move();  
  public void show();
}

class OddballParticle implements Particle
{
  double myX, myY, myTheta, mySpeed;
  int myColor;
  
  OddballParticle()
  {
    myX = (width/2) ;
    myY = height/2;
    myTheta = (Math.random()*Math.PI*2);
    mySpeed = (Math.random()*3)+2;
    myColor = color((int)(Math.random()*255+1),0,(int)(Math.random()*255+1)); 
  }
  public void move()
  {
    //int choose=(int)(Math.random()*2);
    myX = myX + Math.cos(myTheta) * mySpeed;
    myY= myY + Math.sin(myTheta) * mySpeed;
    myTheta = myTheta-.015;
    // if(choose == 0){
    //   myTheta = myTheta-.015;
    // }
    // else if(choose == 1){
    //   myTheta = myTheta+.015;
    // }
  }
  public void show()
  {
    fill(myColor);
    ellipse((float)myX,(float)myY,10,10);
  }
}
class JumboParticle extends NormalParticle
{
  public void move()
  {    
    dX = dX + Math.cos(dTheta) * dSpeed+5;
    dY = dY + Math.sin(dTheta) * dSpeed+5;
    dTheta = dTheta + Math.random()*1- 1;
    if(dX<0||dX>1200){
      dX=0;
      dY=0;
    }
    
  }
public void show()
  {
    noStroke();
    fill(dColor);
    ellipse((float)dX,(float)dY,20,20);
  }
}


