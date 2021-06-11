import java.lang.String;

class AnimatedImage extends Image{
 ArrayList<PImage> frames;
 int frameCounter = 0;
 
 public AnimatedImage(String folderName, int amount){
   super(null);
   this.frames = new ArrayList<PImage>();
   for(int i=0; i<amount; i++){
     String fileName = folderName + "/frame_" + String.format("%02d", i)  + "_delay-0.02s.png";
     this.frames.add(loadImage(fileName));
   }
   
   image = frames.get(0);
 }
 
 public void update(){
   frameCounter = (frameCounter + 1) % frames.size();
   image = frames.get(frameCounter);
 }
}
