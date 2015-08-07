float angleOffset;
float shapeRadius;
float shapeRadius2;
float insideShapeRadius;
float insideShapeRadius2;


void setup() {
  size(600,600);
  frameRate(25); 
  shapeRadius = width/4;
  shapeRadius2 = width/8;
  insideShapeRadius = width/5;
  insideShapeRadius2 = width/9;
 
  
};

void draw() {
  background(255); 
  
//  int weight = int(random(1,10));
  strokeWeight(2); 
 // create and set our variables for the polygon
  float sideIncrement = 0; 
  float insideSideIncrement = 0; 
  int numberOfSides = 5; 
  float radiusWeight = .5; 
  
 
  
  beginShape(); 
    fill(255,0,0); 
    while(sideIncrement< TWO_PI) {
      float sideIncrement2 = sideIncrement + (PI/4); 
      float angle = angleOffset + sideIncrement;
      float angle2 = angleOffset + sideIncrement2;  
      float xPos= sin(angle)*shapeRadius;
      float yPos= cos(angle)*shapeRadius; 
      float xPos2= sin(angle2)*shapeRadius2;
      float yPos2= cos(angle2)*shapeRadius2; 
      
      vertex(xPos+width*radiusWeight,yPos+height*radiusWeight); 
      vertex(xPos2+width*radiusWeight,yPos2+height*radiusWeight);     
      
      sideIncrement += TWO_PI/numberOfSides;

    };
  
  endShape(CLOSE); 

beginShape(); 
    fill(255,165,0); 
    while(insideSideIncrement< TWO_PI) {
      float insideSideIncrement2 = insideSideIncrement + (PI/4); 
      float insideAngle = angleOffset + insideSideIncrement + (PI/2);
      float insideAngle2 = angleOffset + insideSideIncrement2 + (PI/2);  
      float xPos= sin(insideAngle)*insideShapeRadius;
      float yPos= cos(insideAngle)*insideShapeRadius; 
      float xPos2= sin(insideAngle2)*insideShapeRadius2;
      float yPos2= cos(insideAngle2)*insideShapeRadius2; 
      
      vertex(xPos+width*radiusWeight,yPos+height*radiusWeight); 
      vertex(xPos2+width*radiusWeight,yPos2+height*radiusWeight);     
      
      insideSideIncrement += TWO_PI/numberOfSides;

    };
  
  endShape(CLOSE); 


  angleOffset += (TWO_PI/24); 
  shapeRadius += 8*sin(angleOffset);
  shapeRadius2 += 8*sin(angleOffset); 
  insideShapeRadius += 8*sin(angleOffset);
  insideShapeRadius += 8*sin(angleOffset);
};
