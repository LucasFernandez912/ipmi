PImage img1, img2, img3, img4, img5, img6, img7, img8, img9, img10;
PFont fuente;
String text1, text2, text3, text4, text5, text6, text7, text8, text9, text10, Reiniciar;
int diapositiva;
int miTiempo;
float slideX = 640;
float slideY = 480;
float tam = 0;

void setup(){
  size (640, 480);
  fuente = createFont("Georgia", 28);
  
  diapositiva = 0;
  miTiempo = 0;
  
  //Imágenes
  img1 = loadImage("img1.jpg");
  img2 = loadImage("img2.jpg");
  img3 = loadImage("img3.jpg");
  img4 = loadImage("img4.jpg");
  img5 = loadImage("img5.jpg");
  img6 = loadImage("img6.jpg");
  img7 = loadImage("img7.jpg");
  img8 = loadImage("img8.jpg");
  img9 = loadImage("img9.jpg");
  img10 = loadImage("img10.jpg");
  
  //Textos
  text1 = "Devil May Cry: The animated Series nos sumerge en un mundo oscuro donde humanos y demonios coexisten en secreto. Dante un Cazador de demonios solitario y rebelde, lleva adelante su negocio: Devil May Cry.";
  text2 = "Mitad humano, mitad demonio. Hijo del legendario caballero oscuro Sparda. Carismático, sarcástico, amante de la pizza y el helado de fresa, pero letal en combate.";
  text3 = "Dante se convierte en el protector de Patty, una niña huérfana con un misterioso pasado. Aunque al principio la relación es distante, pronto surge un lazo casi paternal.";
  text4 = "Sus Aliadas, poderosas y decididas. Trish, creada a imagen de su madre humana. Lady, una cazadora de demonios humana. Ambas lo apoyan en diferentes momentos.";
  text5 = "A pesar de su poder, Dante vive endeudado. Sus trabajos apenas le alcanzan para pagar lo básico. El dinero nunca ha sido su prioridad: su lucha es más profunda.";
  text6 = "Cada capítulo presenta un nuevo enemigo o amenaza demoníaca. Dante enfrenta desde demonios menores hasta poderosos entes del inframundo.";
  text7 = "El plan del demonio Abigail amenaza con romper el equilibrio entre mundos. Su objetivo: usar a Patty para regresar al poder.";
  text8 = "Dante se enfrenta a Abigail en una batalla épica. Con la ayuda de sus aliados, logra salvar a Patty y evitar la catástrofe.";
  text9 = "Patty decide quedarse cerca de Dante, y aunque el peligro ha pasado, la lucha continúa. Dante sigue cazando demonios, como siempre, con una sonrisa irónica.";
  text10 = "Devil May Cry es más que acción demoníaca. Es una historia de redención, vínculos y humanidad en medio del caos.";
  Reiniciar = "Reiniciar";
  
  }

void draw(){
  miTiempo = miTiempo+1;
  if (miTiempo>0 && miTiempo<800) {diapositiva = 0;}
  else if(miTiempo>800 && miTiempo<1600) {diapositiva = 1;}
  else if(miTiempo>1600 && miTiempo<2400) {diapositiva = 2;}
  else if(miTiempo>2400 && miTiempo<3200) {diapositiva = 3;}
  else if(miTiempo>3200 && miTiempo<4000) {diapositiva = 4;}
  else if(miTiempo>4000 && miTiempo<4800) {diapositiva = 5;}
  else if(miTiempo>4800 && miTiempo<5600) {diapositiva = 6;}
  else if(miTiempo>5600 && miTiempo<6400) {diapositiva = 7;}
  else if(miTiempo>6400 && miTiempo<7200) {diapositiva = 8;}
  else if(miTiempo>7200 && miTiempo<8000) {diapositiva = 9;}
  
  
 //Diapositiva 1: Introducción
 
 if (diapositiva == 0){image(img1, 0, 0, 640, 480);
 textSize(28);
 text(text1, 0, 350, 640, tam);
 
 tam = tam+0.25;}

 //Diapositiva 2: Dante
 
 if (diapositiva == 1){image(img2, 0, 0, 640, 480);
 textSize(28);
 text(text2, 0, slideY, 640, 480);
 
 slideY = slideY- 0.75;}
 
 
 //Diapositiva 3: Patty Lowell
 
 else if (diapositiva == 2){image(img3, 0, 0, 640, 480);
 textSize(28);
 text(text3, 0, slideY, 640, 480);
 
 slideY = slideY + 0.75;}

 //Diapositiva 4: Trish y Lady
 
 else if (diapositiva == 3){image(img4, 0, 0, 640, 480);
 textSize(28);
 text(text4, slideX, 240, 350, 480);
 
 slideX = slideX-0.80;}

 //Diapositiva 5: Deudas
 
 else if (diapositiva == 4){image(img5, 0, 0, 640, 480);
 textSize(28);
 text(text5, 0, slideY, 640, 480);
 
 slideY = slideY-0.75;}
 
 //Diapositiva 6: Demonios
 
 else if (diapositiva == 5){image(img6, 0, 0, 640, 480);
 textSize(28);
 text(text6, 0, slideY, 640, 480);
 
 slideY = slideY+0.75;}

 //Diapositiva 7: Abigail
 
 else if (diapositiva == 6){image(img7, 0, 0, 640, 480);
 textSize(28);
 text(text7, slideX, 295, 330, 480);
 
 slideX = slideX+0.80; }

 //Diapositiva 8: Conflicto
 
 else if (diapositiva == 7){image(img8, 0, 0, 640, 480);
 textSize(28);
 text(text8, slideX, 295, 330, 480);
 
 slideX = slideX-0.80;}

 //Diapositiva 9: Desenlace
 
 else if (diapositiva == 8) {image(img9, 0, 0, 640, 480);
 textSize(28);
 text(text9, slideX, 270, 360, 480);
 
 slideX = slideX+0.80;}

 //Diapositiva 10: Final
 
 else if (diapositiva == 9) {image(img10, 0, 0, 640, 480);
 textSize(28);
 text(text10, 0, slideY, 640, 480);
 
 slideY = slideY - 0.75;
 
 //Botón Reiniciar
 textSize(13);
 text(Reiniciar, 555, 435, 50, 50);
  noFill();
  rect(540, 420, 80, 40);
 }
}
void mousePressed() {
  if (diapositiva == 9 && mouseX > 540 && mouseX < 620 && mouseY > 420 && mouseY < 460) {
    
    miTiempo = 0;
    diapositiva = 0;
    
    
    slideX = 640;
    slideY = 480;
    tam = 0;
  }
}
