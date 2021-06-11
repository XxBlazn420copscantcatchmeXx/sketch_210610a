class Terrain extends Entity{
  float speedModifier = 1.0f;
  
  public Terrain(int x, int y, Image image, float scale, float speedModifier){
    super(x, y, image, scale);
    this.speedModifier = speedModifier;
  }
  
  public Terrain(Image image, float scale, float speedModifier){
    super(image, scale);
    this.speedModifier = speedModifier;
  }
}
