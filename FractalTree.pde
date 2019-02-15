private double fractionLength = .78; 
private int smallestBranch = 5; 
private double branchAngle = .65;  
public void setup() 
{   
	size(630,600);    
	noLoop(); 
} 
public void draw() 
{   
	background(0);   
	stroke((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));   
	line(320,480,320,380);   
	drawBranches(320,380,100,3*Math.PI/2);  //will add later 
} 
public void drawBranches(int x,int y, double branchLength, double angle) 
{   
	//your code here  
	double angle1 = angle + branchAngle;
	double angle2 = angle - branchAngle;
	branchLength = branchLength * fractionLength;
	int endX1 = (int)(branchLength*Math.cos(angle1)+x);
	int endY1 = (int)(branchLength*Math.sin(angle1)+y);
	int endX2 = (int)(branchLength*Math.cos(angle2)+x);
	int endY2 = (int)(branchLength*Math.sin(angle2)+y);

	stroke((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));   
	line(x,y,endX1,endY1);
	stroke((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));   
	line(x,y,endX2,endY2);

	if(branchLength>smallestBranch){
		drawBranches(endX1,endY1,branchLength,angle1);
		drawBranches(endX2,endY2,branchLength,angle2);
	}

} 
