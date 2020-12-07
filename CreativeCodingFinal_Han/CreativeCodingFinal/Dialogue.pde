class Dialogue {
  
  Dialogue() {
  }
  
  //ALL OF THE DIALOGUE FROM THE DOG
  void one() {
    fill(0);
    textSize(18);
    text("Hey, are you able to talk right now?", 630, 350);
  }
  
  void two() {
    fill(0);
    textSize(18);
    text("Great! I'm new to this area and I'm ", 630, 350);
    text("looking for someone to hang with.", 630, 370);
  }
  
  void three() {
    fill(0);
    textSize(18);
    text("Okay. I just wanted someone to talk ", 630, 350);
    text("to since I'm all alone and I'm new here...", 630, 370);
  }
  
  void four() {
    fill(0);
    textSize(18);
    text("I'm so hungry right now though...", 630, 350);
  }
  
  void five() {
    fill(0);
    textSize(18);
    text("Great! Take me somewhere nice since ", 630, 350);
    text("I don't know anything around here.", 630, 370);
  }
  
  void six() {
    fill(0);
    textSize(18);
    text("Okay. We can go to that McDonalds across ", 610, 350);
    text("the street so I can eat some lunch at least.", 610, 370);
  }
  
  void seven() {
    fill(0);
    textSize(18);
    text("Yum! I actually just moved here with a friend, but...", 300, 350);
    text("she's been out all day, leaving me to pay for our expenses.", 300, 370);
  }
  
  void eight() {
    fill(0);
    textSize(18);
    text("This is my eighth time here since I moved here with a friend...", 250, 350);
    text("It's starting to taste bad. She only lets me come here to eat.", 250, 370);
  }


//USER RESPONSE
void responseOne() {
  fill(0);
  textSize(18);
  text("1 - Of course!", 350, 330);
  text("2 - Um...okay...", 350, 350);
  text("(Press or 1 or 2 keys to select)", 350, 370);
}



void responseTwo() {
  fill(0);
  textSize(18);
  text("3 - Nice to meet you!", 350, 330);
  text("4 - Cool.", 350, 350);
  text("(Press or 3 or 4 keys to select)", 350, 370);
}



void responseFour() {
  fill(0);
  textSize(18);
  text("5 - Let's go eat!", 350, 330);
  text("6 - Oh. I'm not. I'm full.", 350, 350);
  text("(Press or 5 or 6 keys to select)", 350, 370);
}



void responseFive() {
  fill(0);
  textSize(18);
  text("7 - Let's go to Egg Harbor Cafe", 350, 330);
  text("8 - Let's go to McDonalds", 350, 350);
  text("(Press or 7 or 8 keys to select)", 350, 370);
}


void responseSix() {
  fill(0);
  textSize(18);
  text("Press space to continue", 350, 350);
}


void responseSeven() {
  fill(0);
  textSize(24);
  text("q - She's using you. Drop her.", 300, 840);
  text("w - You must be rich.", 300, 880);
  text("(Press q or w keys to select)", 300, 920);
}

void responseEight() {
  fill(0);
  textSize(24);
  text("Do you think we can hangout again?", 300, 880);
  text("(Press c to continue)", 300, 920);
}

void finalOne() {
  fill(0);
  textSize(24);
  text("Of course. Let's be friends! Maybe you can show me around?", 150, 880);
  text("(Press DEL to play again)", 250, 920);
}

void finalTwo() {
  fill(0);
  textSize(24);
  text("I'm going to be a little busy. I'll let you know when we can", 120, 880);
  text("see each other again.", 300, 920);
  text("(Press DEL to play again)", 300, 960);
}

void finalThree() {
  fill(0);
  textSize(24);
  text("I don't think so. I'm sorry.", 300, 880);
  text("(Press backspace to play again)", 300, 920);
}
}
