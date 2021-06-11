class Plant extends Entity{
  float growthFactor;
  
  public Plant(int x, int y, Image image, float scale, float growthFactor){
    super(x, y, image, scale);
    this.growthFactor = growthFactor;
  }
  
  public Plant(Image image, float scale, float growthFactor){
    super(image, scale);
    this.growthFactor = growthFactor;
  }
  
  public void draw(){
    super.draw();
    scale += growthFactor;
  }
}
