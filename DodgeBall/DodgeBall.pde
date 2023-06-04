PImage gym, menu;
Dodger dave;
Scores score;
//Obstacle tennis, basketball;
//Items doughnut, NRG;

Menu mainMenu;

Balls[] balls = new Balls[6]; //Declaring array
Items[] items = new Items[2];
//Dodger[] dave = new Dodger[1];


void setup()
{
  size(1200, 700);
  dave = new Dodger(500, 80, 15, 5);
  mainMenu = new Menu(0); //Initialise menu to 0 on start
  score = new Scores(0); //scores tally
  mainMenu.splashScreen();

  for (int i = 0; i < balls.length; i++) //Loading objects into array
  {
    balls[i] = new   Balls(0, 720, 8, 0.9);
  }

  for (int j = 0; j < items.length; j++)
  {
    items[j] = new Items(0, 720, 6, 1.1);
  }

  //  for (int k = 0; k<0; k++)
  // {
  //    dave[k] = new Dodger(500,80,15);
  // }
}

void draw()
{
  if (mainMenu.gameMode == 0)
  {   
    mainMenu.splashScreen();
  }

  //Main loop of program!
  if (mainMenu.gameMode == 1)
  {
    gym = loadImage("BasketballCourt.jpg");
    image(gym, 0, 0);
    dave.animation();
    for (int i = 0; i < balls.length; i++) //Performing methods on the loaded objects
    {
      balls[i].renderBasketball();
      balls[i].shootObstacle();     
      if (balls[i].collide(dave))
      {
        dave.dspeedX = dave.dspeedX * balls[i].bmodifier; //Slows dave down.
        balls[i].oy = - 800;
        dave.lives = dave.lives - 1;
        // mainMenu.gameMode = 0; currently jumps to main menu when colliding. Need to add score and go to an end game screen.
      }
    }

    for (int j = 0; j < items.length; j++)
    {
      items[j].renderNRGdrink();
      items[j].shootObstacle();
      if (items[j].collide(dave))
      {
        dave.dspeedX = dave.dspeedX * items[j].Imodifier; //Speeds dave up.
        items[j].oy = - 800;
        //dave.lives = dave.lives + 1;
        score.tally = score.tally + 5;
        //mainMenu.gameMode = 0;
      }
    }
    // for (int k = 0; k > dave.length; k++)
    // {
    // dave[k].animation(); 
    //}
  }

  if (dave.lives == 0)
  {
      mainMenu.gameOver(); 
  }
}

void keyPressed() //Moving character
{
  if (key == CODED) {
    if (keyCode == LEFT)

      dave.dx = dave.dx - dave.dspeedX;
  }

  if (keyCode == RIGHT)
  {
    dave.dx = dave.dx + dave.dspeedX;
  }
}
