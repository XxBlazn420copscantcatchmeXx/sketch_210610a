class Verden{
  ArrayList<Terrain> terrain;
  ArrayList<Plant> plants;
  ArrayList<Animal> animals;
  
  public Verden(){
    terrain = new ArrayList<Terrain>();
    plants = new ArrayList<Plant>();
    animals = new ArrayList<Animal>();
  }
  
  void addTerrain(Terrain t){
    terrain.add(t);
  }
  
  void addPlant(Plant p){
    plants.add(p);
  }
  
  void addAnimal(Animal a){
    animals.add(a);
  }
  
  void clear(){
    terrain.clear();
    plants.clear();
    animals.clear();
  }
  
  Terrain getTerrainAtPosition(int x, int y){
    Terrain result = null;
    for(Terrain t : terrain){
      if(t.isColliding(x, y)){
        result = t;
      }
    }
    
    return result;
  }
  
  void draw(){
    for(Entity e : terrain){
      e.draw();
    }  
    for(Entity e : plants){
      e.draw();
    }
    for(Animal a : animals){
      a.draw();
      Terrain t = getTerrainAtPosition((int)a.getCenterX(), (int)a.getCenterY());
      a.move(t != null ? t.speedModifier : 1.0f);
    }
  }
}
