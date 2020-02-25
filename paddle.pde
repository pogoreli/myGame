float paddleMin;
float paddleMax;
float paddleHigh;

void paddle()
{
 noStroke();
 rectMode(CENTER);
 fill(3,123,252);
 float lenght=width*0.2;
 float paddleHeight=0.05*height;
 float X=mouseX;
 
 if(X>=width-(lenght/2))
 {
   X=width-(lenght/2);
 }
 
 if(X<=lenght/2)
 {
   X=lenght/2;
 }
 
paddleMin=mouseX-lenght/2;
paddleMax=mouseX+lenght/2;
paddleHigh=Y-(paddleHeight/2);
 
 float Y=height*0.85;
 
 rect(X,Y,lenght,paddleHeight);
}
