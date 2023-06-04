public class Dodger
{
  float dx, dy, dOther, lives;
  float dspeedX, dspeedY;
  PImage runner1, runner2, runner3, runner4, runner5, runner6, runner7, runner8, runner9; 
  float counter = 1;

  Dodger (float dx, float dy, float dspeedX, int lives)
  {
    this.dspeedX= dspeedX; //dodger speed denoted by 'd'
    this.dx = dx; //dodger position
    this.dy = dy;
    this.lives = lives;
    runner1 = loadImage("Runner1.png");
    runner2 = loadImage("Runner2.png");
    runner3 = loadImage("Runner3.png");
    runner4 = loadImage("Runner4.png");
    runner5 = loadImage("Runner5.png");
    runner6 = loadImage("Runner6.png");
    runner7 = loadImage("Runner7.png");
    runner8 = loadImage("Runner8.PNG");
    runner9 = loadImage("Runner9.PNG");
  }

  void animation()
  {
    if (counter >= 0 && counter <10)
    {
      image(runner5, dx, dy);
    } else if (counter >=10 && counter <20)
    {
      image (runner6, dx,dy);
    } else if (counter>=20 && counter <30)
    {
      image(runner7, dx, dy);
    } else if (counter>=30 && counter <40)
    {
      image(runner8, dx, dy);
    } else if (counter >=40 && counter <50)
    {
      image (runner9, dx, dy);
    } else
    {
      counter = 0;
    }

    counter = counter + 3;
  }
  

}
