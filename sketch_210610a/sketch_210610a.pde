Verden verden;

AnimatedImage tiger;
AnimatedImage rhino;

void setup(){
  size(1600, 900);
  verden = new Verden();
  
  tiger = new AnimatedImage("tiger", 24);
  rhino = new AnimatedImage("Rhino", 24);
}

void mouseClicked() {
  if(mouseButton == LEFT){
    verden.addPlant(new Plant(new Image(loadImage("fern.png")), random(0.4f), 0.00005f));
  }
  else if(mouseButton == RIGHT){
    verden.addPlant(new Plant(new Image(loadImage("plant.png")), random(0.4f), 0.00005f));
  }
}

void keyPressed() {
  if (key == ' ') {
    verden.addTerrain(new Terrain(new Image(loadImage("ground.jpg")), 0.2f, 2.0f));
  }
  else if(key == 'w'){
    verden.addTerrain(new Terrain(new Image(loadImage("dry.jpg")), 0.1f, 0.5f));
  }
  else if(key == 't'){
    verden.addAnimal(new Animal(tiger, 0.4f, 5.0f, new PVector(random(2f)-1f, random(2f)-1f)));
  }
  else if(key == 'e'){
    verden.addAnimal(new Animal(rhino, 0.4f, 3.0f, new PVector(random(2f)-1f, random(2f)-1f)));
  }
  else if(key == DELETE){
    verden.clear();
  }
}

void draw(){
  background(0);
  tiger.update();
  rhino.update();
  
  verden.draw();
}
