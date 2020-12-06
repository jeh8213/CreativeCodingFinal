//images
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

//variables
float duckMove;
float xDuck;
float xDog;
float xDuckTwo;
float xDogTwo;
float xDuckThree;
float xDogThree;
int num;
int score;


void setup() {
  size(1000, 1000);
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
  //original position of the duck
  duckMove = 150;
  num = 1;
  score = 0;
  
}

void draw() {
  if(num == 1) {
    sceneOne();
    //scoreCount();
  }
  
  if(num == 2) {
    score = score + 5;
    sceneTwo();
    //scoreCount();
  }
  
  if(num == 3) {
    sceneThree();
    //scoreCount();
  }
  
  if(num == 4) {
    sceneFour();
    //scoreCount();
  }
  
  if(num == 5) {
    score += 5;
    sceneFive();
    //scoreCount();
  }
  
  if(num == 6) {
    score -= 5;
    sceneSix();
    //scoreCount();
  }
  
  
}

void scoreCount() {
  fill(0);
  textSize(18);
  text("Score: " + score + ".", 100, 100);
}

void displayDuck(float xDuck) {
  //display duck
  image(duck1, xDuck, 400, 240, 400);
}

void displayDog(float xDog) {
  //display dog
  image(dog1, xDog, 400, 325, 400);
}

void happyDuck(float xDuckTwo) {
  //display happy duck
  image(duck2, xDuckTwo, 400, 240, 400);
}

void sadDog(float xDogThree) {
  //display happy dog
  image(dog3, xDogThree, 400, 325, 400);
}

void sadDuck(float xDuckThree) {
  //display happy duck
  image(duck3, xDuckThree, 400, 240, 400);
}

void happyDog(float xDogTwo) {
  //display happy dog
  image(dog2, xDogTwo, 400, 325, 400);
}

void dialogueOne() {
  fill(0);
  textSize(18);
  text("Hey, are you able to talk right now?", 630, 350);
}

void responseOne() {
  fill(0);
  textSize(18);
  text("1 - Of course!", 350, 330);
  text("2 - Um...okay...", 350, 350);
  text("(Press or 1 or 2 keys to select)", 350, 370);
}

void dialogueTwo() {
  fill(0);
  textSize(18);
  text("Great! I'm new to this area and I'm ", 630, 350);
  text("looking for someone to hang with.", 630, 370);
}

void responseTwo() {
  fill(0);
  textSize(18);
  text("3 - Nice to meet you!", 350, 330);
  text("4 - Cool.", 350, 350);
  text("(Press or 3 or 4 keys to select)", 350, 370);
}

void dialogueThree() {
  fill(0);
  textSize(18);
  text("Okay. I just wanted someone to talk ", 630, 350);
  text("to since I'm all alone and I'm new here...", 630, 370);
}

void dialogueFour() {
  fill(0);
  textSize(18);
  text("I'm so hungry right now though...", 630, 350);
}

void responseFour() {
  fill(0);
  textSize(18);
  text("5 - Let's go eat!", 350, 330);
  text("6 - Oh. I'm not. I'm full.", 350, 350);
  text("(Press or 5 or 6 keys to select)", 350, 370);
}

void dialogueFive() {
  fill(0);
  textSize(18);
  text("Great! Take me somewhere nice since ", 630, 350);
  text("I don't know anything around here.", 630, 370);
}

void responseFive() {
  fill(0);
  textSize(18);
  text("7 - Let's go to Egg Harbor Cafe", 350, 330);
  text("8 - Let's go to McDonalds", 350, 350);
  text("(Press or 7 or 8 keys to select)", 350, 370);
}

void dialogueSix() {
  fill(0);
  textSize(18);
  text("Okay. We can go to that McDonalds across ", 610, 350);
  text("the street so I can eat some lunch at least.", 610, 370);
}

void responseSix() {
  fill(0);
  textSize(18);
  text("Press space to continue", 350, 330);
}


void keyPressed() {
  
  if(key == 100) {
    duckMove += 5;
  }
  
  if(key == 97) {
    duckMove -= 5;
  }
  
  if(key == 49) {
    num = 2;
  }
  
  if(key == 50) {
    num = 3;
  }
  
  if(key == 51 || key == 52) {
    num = 4;
  }
  
  if(key == 53) {
    num = 5;
  }
  
  if(key == 54) {
    num = 6;
  }
  
  if(key == 55) {
    num = 7;
  }
  
  if(key == 56 || key == 32) {
    num = 8;
  }

}

void sceneOne() {
  image(backdrop, 0, 0, width, height);
  displayDuck(duckMove);
  //display the dog character
  displayDog(600);
  dialogueOne();
  //show available responses to the dog after moving towards the dog
  if(duckMove < 330 && duckMove > 280) {
  responseOne();
  }
}

void sceneTwo() {
  image(backdrop, 0, 0, width, height);
  happyDuck(duckMove);
  //display the dog character
  happyDog(600);
  dialogueTwo();
  //show responses on screen
  if(duckMove < 330 && duckMove > 280) {
    responseTwo();
  }
}
  
void sceneThree() {
  image(backdrop, 0, 0, width, height);
  sadDuck(duckMove);
  //display the dog character
  sadDog(600);
  dialogueThree();
  //show responses on screen
  if(duckMove < 330 && duckMove > 280) {
    responseTwo();
  }
}

void sceneFour() {
  image(backdrop, 0, 0, width, height);
  displayDuck(duckMove);
  //display the dog character
  displayDog(600);
  dialogueFour();
  //show responses on screen
  if(duckMove < 330 && duckMove > 280) {
    responseFour();
  }
}

void sceneFive() {
  image(backdrop, 0, 0, width, height);
  happyDuck(duckMove);
  //display the dog character
  happyDog(600);
  dialogueFive();
  //show responses on screen
  if(duckMove < 330 && duckMove > 280) {
    responseFive();
  }
}

void sceneSix() {
  image(backdrop, 0, 0, width, height);
  displayDuck(duckMove);
  //display the dog character
  sadDog(600);
  dialogueSix();
  //show responses on screen
  if(duckMove < 330 && duckMove > 280) {
    responseSix();
  }
}
