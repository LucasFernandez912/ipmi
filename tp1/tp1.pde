PImage img;

void setup(){
size(800, 400);
img = loadImage("disyuntiva.jpg");
}

void draw(){
  background(251);
  image(img, 0, 0, 400, 400);

  //figura baja, parte superior
  noStroke();
  fill(180, 70, 30);
  
  triangle(595, 252, 670, 135, 768, 162);
  triangle(595, 252, 693, 289, 768, 162);
  
  //borra espacios
  stroke(180, 70, 30);
  strokeWeight(3);
  line(598, 250, 764, 163);
  
  //figura baja, parte inferior izquierda
  noStroke();
  fill(120, 40, 10);
  triangle(595, 252, 693, 289, 613, 300);
  triangle(613, 300, 707, 341, 693, 289);
  
  //borra espacios
  stroke(120, 40, 10);
  strokeWeight(3);
  line(615, 298, 691, 290);
  
  //figura baja, parte inferior derecha
  noStroke();
  fill(180, 70, 30);
  triangle(703, 305, 728, 305, 710, 330);
  fill(70, 30, 10);
  triangle(703, 305, 699, 291, 728, 305);
  
  //borra espacios
  stroke(75, 35, 15);
  strokeWeight(3);
  line(701, 291, 725, 303);
  
  noStroke();
  fill(70, 30, 10);
  triangle(699, 291, 708, 275, 728, 305);
  
  //borra espacios
  stroke(70, 30, 10);
  strokeWeight(3);
  line(710, 277, 725, 303);
  
  noStroke();
  fill(75, 35, 15);
  triangle(708, 275, 718, 278, 728, 305);
  
  //lineas 3D
  stroke(100);
  strokeWeight(0);
  line(722,272,707,268);
  line(768, 162, 770, 167);
  line(770, 167, 698, 290);
  line(718, 278, 722, 272);
  line(728, 305, 734, 305);
  line(707,341,734,305);
  line(734,305,722,272);
   
  //relleno para lineas 3D
  noStroke();
  fill(200, 100, 60);
  triangle(768, 162, 770, 167, 765, 169);
  triangle(698, 290, 693, 289, 695, 296);
  triangle(704, 331, 710, 330, 707, 341);
  triangle(734, 305, 728, 305, 730, 311);
  triangle(734, 305, 728, 305, 731, 299);
  triangle(718, 278, 722, 272, 712, 271);
  triangle(718, 278, 722, 272, 721, 284);
  triangle(712, 270, 709, 275, 718, 278);
  stroke(200, 100, 60);
  strokeWeight(6);
  line(695, 290, 767, 168);
  line(697, 294, 707, 330);
  line(707, 337, 730, 304);
  line(730, 302, 719, 273);
  line(709, 270, 718, 273);
  
  //figura alta
  noStroke();
  fill(150, 60, 20);
  triangle(493, 183, 584, 59, 632, 212);
  triangle(493, 183, 549, 339, 632, 212);
  
  //borra espacios
  stroke(150, 60, 20);
  strokeWeight(3);
  line(495, 183, 630, 212);
  
  noStroke();
  fill(75, 35, 15);
  triangle(530, 53, 547, 101, 575, 61);
  
  //lineas 3D
  stroke(160 ,60, 20);
  strokeWeight(0);
  line(530, 53, 534, 50);
  line(584, 59, 534, 50);
  line(493, 183, 486, 182);
  line(486, 182, 547, 101);
  line(542, 339, 549, 339);
  line(486, 182, 542, 339);
  
  //relleno para lineas 3D
  noStroke(); 
  fill(200, 100, 50);
  triangle(530, 53, 534, 50, 538, 53);
  triangle(578, 58, 575, 61, 584, 59);
  triangle(577, 67, 575, 61, 584, 59);
  triangle(486, 182, 493, 175, 493, 183);
  fill(120, 40, 10);
  triangle(486, 182, 491, 192, 493, 183);
  triangle(542, 339, 543, 333, 549, 339);
  stroke(200, 100, 50);
  strokeWeight(6);
  line(534, 52, 578, 60);
  line(577, 62, 490, 181);
  stroke(75, 35, 15);
  strokeWeight(6);
  line (491, 185, 545, 335);
  
  //sombra
  noStroke();
  fill(177);
  triangle(543, 339, 417, 313, 460, 264);
  triangle(431, 246, 460, 264, 518, 263);
  triangle(516, 263, 460, 264, 544, 340);
  triangle(578, 296, 613, 300, 599, 263);
  triangle(655, 332, 707, 341, 613, 300);
  triangle(578, 296, 613, 300, 655, 332);
  
  //borra espacios
  stroke(177);
  strokeWeight(3);
  line(460, 264, 541, 337);
  line(460, 264, 515, 264);
  line(580, 295, 610, 299);
  line(612, 300, 655, 330);
  
  //detalles de bordes, figura baja
  stroke(100);
  strokeWeight(1);
  line(768, 162, 693, 289);
  line(693, 289, 604, 256);
  line(599, 263, 613, 300);
  line(613, 300, 707, 341);
  line(707, 341, 734, 305);
  line(734, 305, 722, 272);
  line(722, 272, 712, 270);
  line(718, 278, 728, 305);
  line(708, 275, 718, 278);
  line(718, 278, 722, 272);
  line(769, 162, 770, 169);
  line(698, 291, 770, 169);
  
  //detalles de bordes, figura alta
  line(493, 183, 584, 59);
  line(493, 183, 487, 181);
  line(549, 338, 599, 262);
  line(487, 181, 573, 62);
  line(573, 62, 531, 55);
  line(534, 50, 584, 59);
  line(584, 59, 628, 199);}
