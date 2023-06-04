class Balls extends Obstacle
{
  float bmodifier;
  //float ox, oy, oSpeedY; 

  Balls(float ox, float oy, float oSpeedY, float bmodifier)
  {
    super(ox, oy, oSpeedY);
    this.bmodifier = bmodifier;
  }
}
