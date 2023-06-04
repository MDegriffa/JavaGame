class Items extends Obstacle
{
  float Imodifier = 1.1; //only this in the new class because its unique. the modifier is whats going to change the speed. but not all obstaces have that
  //float ox, oy, oSpeedY; these are not needed only this

  Items(float ox, float oy, float oSpeedY, float Imodifier)
  {
    super(ox, oy, oSpeedY);
    this.Imodifier = Imodifier;
  }
  
      boolean collision(Items other) //detecting if a collision has occured
  {
    if(abs(this.ox-other.ox)<85 && abs(this.oy-other.oy)<85)
    {
      this.ox = 0;
      this.oy = 0;
      return true;
    }
      return false;
  }
  
}
