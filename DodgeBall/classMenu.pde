import java.util.ArrayList;

public class Menu {
  PImage menu;
  int gameMode;
  ArrayList<Float> highScore = new ArrayList<Float>();
  
  Menu(int gameMode)
  {
    this.gameMode = gameMode;  
    menu = loadImage("MenuImage.jpg");
  }

  boolean splashScreen()
  {
    if (gameMode == 0)
    {
      gameMode = 0;
      menu = loadImage("MenuImage.jpg");
      image(menu, 0, 0);
      size(1200, 700);
      fill(0);
      textSize(35);
      text("Left Click to begin!", 50, 50);

      if (mousePressed == true)
      {
        mainMenu.gameMode = 1;
      }
    } 
    return false;
  }
  
  void finalScore()
  {
    if(gameMode == 0);
    {
      highScore.add((float)score.tally);
    }
  }


  void gameOver()
  {
    gameMode = 2;
    menu = loadImage("MenuImage.jpg");
    image(menu, 0, 0);
    size(1200, 700);
    fill(0);
    textSize(35);
    text("GAME OVER - Your score: " + score.tally, 50, 50);
    text("Click to try and beat your score!", 50, 100);
    
    if (mousePressed == true)
    {
     setup();
    }
  }
}
