/* Known ERRORs
 - TBA
 */
class Paddle {
  //
  //Global Variables
  float tableX, tableY, tableWidth, tableHeight;
  float netX, netY, netWidth, netHeight;
  float paddleX, paddleY, paddleWidth, paddleHeight, paddleStartHeight, paddleTravelDistance;
  color paddleColour;
  Boolean up=false, down=false;
  //
  //Overloaded Constructor
  //Purpose: left and right paddles
  Paddle ( float paddleStartParameter, float ballDiameterParameter ) {
    netWidth = ballDiameterParameter * 3;
    paddleWidth = ballDiameterParameter * 1/2; //Ball Radius
    tableY = height * 1/10;
    tableHeight = height * 8/10;
    //CAUTION: netX will have the same value
    if ( paddleStartParameter == 0 ) netX = paddleStartParameter; //Adding to the netX
    if ( paddleStartParameter == width ) {
      netX = paddleStartParameter - netWidth *2 - paddleWidth; //Subtracting the netX
    }
    this.paddleX = netX + netWidth; //CAUTION: netX has two values, ERROR
    if ( paddleStartParameter == width ) netX = paddleStartParameter - netWidth;
    this.paddleStartHeight = 0.25; //if Easter Egg number must be tracked
    this.paddleHeight = tableHeight * paddleStartHeight;
    this.paddleY = tableY + ( tableHeight * 1/2 ) - ( paddleHeight *1/2 );
    paddleColour = 0; //Grey Scale, not RGB, color ( int(random()), int(random()), int(random()) )
    this.paddleTravelDistance = 1; //Easter Egg: paddle speed is 1 pixel
  } //End Paddle Constructor
  //
  void draw() {
    fill(paddleColour);
    paddles();
    fill(0); //Reset Defaults
    //
    //Arithmetic for Paddles
    /*
    if ( up == true ) movePaddleUp();
    if ( down == true ) movePaddleDown();
    */
  } //End draw
  //
  //VOIDS and Returns
  //Draw Paddles
  void paddles() {
    rect(paddleX, paddleY, paddleWidth, paddleHeight);
  } //End Paddles
  /*
  void movePaddleDown() {
    paddleY += paddleTravelDistance;
    if ( paddleY > tableY+tableHeight-paddleHeight ) paddleY = tableY+tableHeight-paddleHeight; //ERROR Catch
    down = false;
  } //End Move Paddles
  void movePaddleUp() {
    paddleY -= paddleTravelDistance;
    if ( paddleY < tableY ) paddleY = tableY; //ERROR Catch
    up = false;
  } //End Move Paddles
  */
  //
} //End Paddle
