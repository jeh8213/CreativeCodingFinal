//IMAGES AND FONT
//backdrop of the first few scenes
PImage backdrop;
PImage backdropTwo;
PImage restaurant;
PImage restaurantTwo;
//straight face duck
PImage duck1;
//happy duck
PImage duck2;
//sad duck
PImage duck3;
//straight face dog
PImage dog1;
//happy dog
PImage dog2;
//sad dog
PImage dog3;
//font of all the dialogue text
PFont comicsans;

//VARIABLS
float duckMove;
float xDuck;
float xDuckTwo;
float xDuckThree;
int num;
int score;

//OBJECTS
Dog d;
Dialogue quote;



void setup() {
  size(1000, 1000);
  //load in images
  backdrop = loadImage("backgroundone.png");
  backdropTwo = loadImage("backgroundtwo.png");
  restaurant = loadImage("eggharbor.png");
  restaurantTwo = loadImage("mcdonalds.png");
  duck1 = loadImage("duck0.png");
  duck2 = loadImage("duck1.png");
  duck3 = loadImage("duck2.png");
  dog1 = loadImage("dog0.png");
  dog2 = loadImage("dog1.png");
  dog3 = loadImage("dog2.png");
  
  //create a new dog and dialogue object
  d = new Dog();
  quote = new Dialogue();
  
  //load font, comic sans
  comicsans = createFont("Comic Sans MS.ttf", 18);
  textFont(comicsans);
  
  //original position of the duck
  duckMove = 150;
  //number to indicate the scene based on user interactivity
  num = 1;
  //user score to determine the ending of the game
  score = 0;
  
}

//DISPLAY CERTAIN SCENES DEPENDING ON USER INTERACTIVITY
//keep score count in the top right of the screen
void draw() {
  if(num == 1) {
    sceneOne();
    scoreCount();
  }
  
  if(num == 2) {
    sceneTwo();
    scoreCount();
  }
  
  if(num == 3) {
    sceneThree();
    scoreCount();
  }
  
  if(num == 4) {
    sceneFour();
    scoreCount();
  }
  
  if(num == 5) {
    sceneFive();
    scoreCount();
  }
  
  if(num == 6) {
    sceneSix();
    scoreCount();
  }
  
  if(num == 7) {
    sceneSeven();
    scoreCount();
  }
  
  if(num == 8) {
    sceneEight();
    scoreCount();
  }
  
  if(num == 9) {
    finalScene();
    scoreCount();
  }
  
  
  
  
}

//keep count of the score on the top right of the screen
void scoreCount() {
  fill(0);
  textSize(18);
  text("Score: " + score + ".", 800, 100);
}

//---------------------------------------------
// DISPLAY DUCK EMOTIONS
//STRAIGHT
void displayDuck(float xDuck) {
  //display duck
  image(duck1, xDuck, 400, 240, 400);
}

//HAPPY
void happyDuck(float xDuckTwo) {
  //display happy duck
  image(duck2, xDuckTwo, 400, 240, 400);
}

//SAD
void sadDuck(float xDuckThree) {
  //display happy duck
  image(duck3, xDuckThree, 400, 240, 400);
}
//----------------------------------------------

//INTERACTIVITY
void keyPressed() {
  //PRESS D TO GO RIGHT
  if(key == 100) {
    duckMove += 5;
  }
  //PRESS A TO GO LEFT
  if(key == 97) {
    duckMove -= 5;
  }
  //PRESS 1 
  if(key == 49) {
    score += 5;
    num = 2;
  }
  //PRESS 2
  if(key == 50) {
    num = 3;
  }
  //PRESS 3 OR 4
  if(key == 51 || key == 52) {
    num = 4;
  }
  //PRESS 5
  if(key == 53) {
    score += 5;
    num = 5;
  }
  //PRESS 6
  if(key == 54) {
    num = 6;
  }
  //PRESS 7
  if(key == 55) {
    score += 5;
    num = 7;
  }
  //PRESS 8 OR SPACE
  if(key == 56 || key == 32) {
    num = 8;
  }
  //PRESS C
  if(key == 99) {
    num = 9;
  }
  //PRESS BACKSPACE TO RESTART THE GAME
  if(key == 8) {
    num = 1;
  }

}

void sceneOne() {
  image(backdrop, 0, 0, width, height);
  //display the duck character
  d.straight();
  displayDuck(duckMove);
  //display the dog character
  quote.one();
  //show available responses to the dog after moving towards the dog
  if(duckMove < 350 && duckMove > 280) {
  quote.responseOne();
  }
}

void sceneTwo() {
  image(backdrop, 0, 0, width, height);
  //display the duck character
  happyDuck(duckMove);
  //display the dog character
  d.happy();
  quote.two();
  //show responses on screen
  if(duckMove < 350 && duckMove > 280) {
    quote.responseTwo();
  }
}
  
void sceneThree() {
  image(backdrop, 0, 0, width, height);
  //display the duck character
  sadDuck(duckMove);
  //display the dog character
  d.sad();
  quote.three();
  //show responses on screen
  if(duckMove < 350 && duckMove > 280) {
    quote.responseTwo();
  }
}

void sceneFour() {
  image(backdrop, 0, 0, width, height);
  //display the duck character
  displayDuck(duckMove);
  //display the dog character
  d.straight();
  quote.four();
  //show responses on screen
  if(duckMove < 350 && duckMove > 280) {
    quote.responseFour();
  }
}

void sceneFive() {
  image(backdrop, 0, 0, width, height);
  //display the duck character
  happyDuck(duckMove);
  //display the dog character
  d.happy();
  quote.five();
  //show responses on screen
  if(duckMove < 350 && duckMove > 280) {
    quote.responseFive();
  }
}

void sceneSix() {
  image(backdrop, 0, 0, width, height);
  //display the duck character
  displayDuck(duckMove);
  //display the dog character
  d.sad();
  quote.six();
  //show responses on screen
  if(duckMove < 350 && duckMove > 280) {
    quote.responseSix();
  }
}

//EGG HARBOR
void sceneSeven() {
  //backdrop of the restaurants 
  image(backdropTwo, 0, -40, width, 700);
  //only display dog
  d.straightRest();
  quote.seven();
  //eggharbor overlay
  eggHarbor();
  //show responses
  fill(255);
  noStroke();
  rect(50, 780, 900, 300);
  quote.responseEight();
}

//MCDONALDS
void sceneEight() {
  //backdrop of the restaurants
  image(backdropTwo, 0, -40, width, 700);
  //only display dog
  d.sadRest();
  quote.eight();
  //eggharbor overlay
  mcDonalds();
  //show responses
  fill(255);
  noStroke();
  rect(50, 780, 900, 300);
  quote.responseEight();
}

void eggHarbor() {
  image(restaurant, 0, 600, width, 400);
}

void mcDonalds() {
  image(restaurantTwo, 0, 450, width, 600);
}

//FINAL SCENE DEPENDING ON YOUR SCORE
void finalScene() {
  //outside now
  image(backdrop, 0, 0, width, height);
  
  //IF SCORE IS 15
  if(score == 15) {
  //dog is happy
  d.happyRest();
  //response from the dog
  fill(255);
  noStroke();
  rect(50, 780, 900, 300);
  quote.finalOne();
  }
  
  //IF SCORE IS 5-10
  if(score == 5 || score == 10) {
    //dog is straight face
    d.straightRest();
    //response from the dog
    fill(255);
    noStroke();
    rect(50, 780, 900, 300);
    quote.finalTwo();
  }
  
  //IF SCORE IS 0
  if(score == 0) {
    //dog is sad
    d.sadRest();
    //response from the dog
    fill(255);
    noStroke();
    rect(50, 780, 900, 300);
    quote.finalThree();
  }
  
}
