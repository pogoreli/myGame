class Circle
{
  float X;
  float Y;
  float speed;
  float d=random(width*0.15,width*0.4);
  float speedX;
  float speedY;
  float g=0.1;
  
  Circle(int score)
  {
    speedX=0.5+(score/100);
    speedY=0.5+(score/100);
  }
  
  void MoveCircle()
  {
    X=X+speedX;
    if(X>=width || X<=0)
    {
      speedX=speedX*(-1);
    }
    
    speedY=speedY+g;
     Y=Y+speedY;
     
     if(X>=paddleMin && X<=paddleMax)
     {
       if(Y<=paddleHigh)
       {
         speedY=speedY*(-1);
       }
     }
     
     if(Y<=0)
    {
      speedY=speedY*(-1);
    }
      
  }
  
  void DrawCircle()
  {
  fill(#fc037b);
  noStroke();
  ellipseMode(CENTER);
  ellipse(X,Y,d,d);
  }
  
}
