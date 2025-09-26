// Flag billeder
PImage[] flagImages;
String[] flagFiles = {
  "Russia.png", "SaudiArabia.png", "Egypt.png", "Uruguay.png",
  "Portugal.png", "Spain.png", "Morocco.png", "Iran.png",
  "France.png", "Australia.png", "Peru.png", "Denmark.png",
  "Argentina.png", "Iceland.png", "Croatia.png", "Nigeria.png"
};

String[] countryNames = {
  "RUSSIA", "SAUDI ARABIA", "EGYPT", "URUGUAY",
  "PORTUGAL", "SPAIN", "MOROCCO", "IRAN", 
  "FRANCE", "AUSTRALIA", "PERU", "DENMARK",
  "ARGENTINA", "ICELAND", "CROATIA", "NIGERIA"
};

void setup() {
  size(1500, 600);  
  
  // Load flags
  flagImages = new PImage[flagFiles.length];
  for (int i = 0; i < flagFiles.length; i++) {
    flagImages[i] = loadImage(flagFiles[i]);
  }

  background(#1F1E43);
  stroke(#FFFFFF);
  strokeWeight(6);
  line(width / 2, 0, width / 2, height);
  fill(255);
  
  // Draw rectangle - Øverste 4 per side
  for (int i = 0; i < 4; i++) {
    rect(0, 40 + i * 67, 727, 50);       // Venstre
    rect(762, 40 + i * 67, 727, 50);     // Højre
  }
  
  // Nederste 4
  for (int i = 0; i < 4; i++) {
    rect(0, 342 + i * 67, 727, 50);      // Venstre
    rect(762, 342 + i * 67, 727, 50);    // Højre
  }

  // Lyseblå trim
  fill(#00CEFF);
  noStroke();
  
  for (int i = 0; i < 4; i++) {
    rect(712, 38 + i * 67, 18, 55);      // Venstre
    rect(1474, 38 + i * 67, 18, 55);     // Højre
  }
  fill(#FEFF31);
  noStroke();
  
  for (int i = 0; i < 4; i++) {
    rect(712, 340 + i * 67, 18, 55);      // Venstre
    rect(1474, 340 + i * 67, 18, 55);     // Højre
  }

  // Draw group headers and countries
  drawGroupHeaders();
  drawFlagsAndNames();
}

void drawGroupHeaders() {
  textAlign(CENTER, CENTER);
  textSize(24);
  
  // Group A header (top left)
  fill(#1F1E43);
  noStroke();
  rect(0, 0, 727, 35);
  fill(#41AFDC);
  text("GROUP A", 363.5, 17.5);
  
  // Group C header (top right)
  fill(#1F1E43);
  rect(762, 0, 727, 35);
  fill(#41AFDC);
  text("GROUP C", 1125.5, 17.5);
  
  // Group B header (bottom left)
  fill(#1F1E43);
  rect(0, 302, 727, 35);
  fill(#FFDC32);
  text("GROUP B", 363.5, 319.5);
  
  // Group D header (bottom right)
  fill(#1F1E43);
  rect(762, 302, 727, 35);
  fill(#FFDC32);
  text("GROUP D", 1125.5, 319.5);
}

void drawFlagsAndNames() {
  // Group A countries (top left)
  drawCountryWithFlag(0, countryNames[0], 0, 40);
  drawCountryWithFlag(1, countryNames[1], 0, 107);
  drawCountryWithFlag(2, countryNames[2], 0, 174);
  drawCountryWithFlag(3, countryNames[3], 0, 241);
  
  // Group B countries (bottom left)
  drawCountryWithFlag(4, countryNames[4], 0, 342);
  drawCountryWithFlag(5, countryNames[5], 0, 409);
  drawCountryWithFlag(6, countryNames[6], 0, 476);
  drawCountryWithFlag(7, countryNames[7], 0, 543);
  
  // Group C countries (top right)
  drawCountryWithFlag(8, countryNames[8], 762, 40);
  drawCountryWithFlag(9, countryNames[9], 762, 107);
  drawCountryWithFlag(10, countryNames[10], 762, 174);
  drawCountryWithFlag(11, countryNames[11], 762, 241);
  
  // Group D countries (bottom right)
  drawCountryWithFlag(12, countryNames[12], 762, 342);
  drawCountryWithFlag(13, countryNames[13], 762, 409);
  drawCountryWithFlag(14, countryNames[14], 762, 476);
  drawCountryWithFlag(15, countryNames[15], 762, 543);
}

void drawCountryWithFlag(int flagIndex, String name, int x, int y) {
  int flagSize = 50; 
  int flagX = x + 2;
  int flagY = y + 2;
  
  // Draw flag
  if (flagIndex < flagImages.length && flagImages[flagIndex] != null) {
    image(flagImages[flagIndex], flagX, flagY, flagSize, flagSize);
  } 
  
  // Draw country name
  fill(0); // Black text
  textAlign(LEFT, CENTER);
  textSize(20);
  text(name, x + flagSize + 15, y + 25);
}
