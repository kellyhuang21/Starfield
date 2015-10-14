//your code here
NormalParticle [] part;

void setup()
{
	//your code here
	size(800,800);
	part = new NormalParticle[100];
	for(int i=0; i<part.length;i++){
		part[i] = new NormalParticle(400);
	}
}
void draw()
{
	//your code here
	background(0);
	for(int i=0; i<part.length; i++){
		part[i].move();
		part[i].show();
	}

}
class NormalParticle
{
	//your code here
	double dX, dY, speed, angle;
	NormalParticle(int x){
		dX = x;
		dY = height/2;
		speed = 10;
		angle = Math.cos(2.03);
	}
	void move()
	{
		x=angle*speed;
		y=angle*speed;
	}
	void show()
{
	fill(255,0,0);
	ellipse(dX,dY,30,30);
}
}	

interface Particle
{
	//your code here
}
class OddballParticle //uses an interface
{
	//your code here
}
class JumboParticle //uses inheritance
{
	//your code here
}

