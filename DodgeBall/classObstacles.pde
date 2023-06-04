public class Obstacle
{
  float ox, oy; //Members
  float oSpeedX, oSpeedY; 
  PImage basketball, basketball1, basketball2, NRGdrink, NRGdrink1;
  float counter = 0;
  //float ballsArray[][];

  //Constructor

  Obstacle(float ox, float oy, float oSpeedY) //all obstacles have are x y and speed atm or essentially
  {
    this.ox = ox + random(0, 1050); 
    this.oy = oy + random(0, 720);
    this.oSpeedY = oSpeedY;
    basketball = loadImage("basketball.png");
    basketball1 = loadImage("basketball1.png");
    basketball2 = loadImage("basketball2.png");
    NRGdrink = loadImage("NRGdrink.png");
    NRGdrink1 = loadImage("NRGdrink1.png");
  }

  //Methods
  void shootObstacle()
  {
    oy = oy - oSpeedY;
    if (oy < height - 760)
    {
      oy =+ 720;
      ox = random(0, 1200);
    }
  }

  boolean collide(Dodger dodger)
  {
    if (abs(this.ox-dodger.dx) < 120 && abs(this.oy-dodger.dy) < 120)
    {
      return true;
    }
    return false;
  }

  void renderBasketball()
  {
    if (counter >= 0 && counter <10)
    {
      image(basketball, ox, oy);
    } else if (counter >=10 && counter <20)
    {
      image (basketball1, ox,oy);
    } else if (counter>=20 && counter <30)
    {
      image(basketball2, ox, oy);
    } else
    {
      counter = 0;
    }

    counter = counter + 2;
  }
  
  void renderNRGdrink()
  {
    if (counter >= 0 && counter <10)
    {
      image(NRGdrink, ox, oy);
    } else if (counter >=10 && counter <20)
    {
      image (NRGdrink1, ox,oy);
    }
    else
    {
      counter = 0;
    }
    counter = counter + 2;
  }
  

}
