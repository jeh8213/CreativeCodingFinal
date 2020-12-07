class Dog {
  
  float xDog;
  float restX;
  
  Dog() {
  //different x positions for the dog in different scenes
  xDog = 600;
  restX = 300;
  }
  
  //straight face first scene
  void straight() {
    image(dog1, xDog, 400, 325, 400);
  }
  
  //happy face first scene
  void happy() {
    image(dog2, xDog, 400, 325, 400);
  }
  
  //sad face first scene
  void sad() {
    image(dog3, xDog, 400, 325, 400);
  }
  
  //straight face restaurant scene
   void straightRest() {
    image(dog1, restX, 400, 325, 400);
  }
  
  //happy face restaurant scene
   void happyRest() {
    image(dog2, restX, 400, 325, 400);
  }
  
  //sad face restaurant scene
   void sadRest() {
    image(dog3, restX, 400, 325, 400);
  }
}
