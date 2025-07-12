// VIDEO EXPLICATIVO: https://youtu.be/nDrC6jwjy7w
// Paracomenzar la interacción primero hacer click en cualquier imagen
PImage imagen;

float centroX = 600;  
float centroY = 200;  


float radio1 = 180;
float radio2 = 135;
float radio3 = 95;
float radio4 = 55;


int cantidad1 = 54;
int cantidad2 = 42;
int cantidad3 = 30;
int cantidad4 = 18;


float giro1 = 0;
float giro2 = 0;
float giro3 = 0;
float giro4 = 0;


boolean giraAnillo1 = false;
boolean giraAnillo2 = false;
boolean giraAnillo3 = false;
boolean giraAnillo4 = false;


int direccion1 = 1;
int direccion2 = 1;
int direccion3 = 1;
int direccion4 = 1;


float velocidad = 0.01;                      
float tamaño = 14;                          
float inclinacion = radians(10);           
float giroParaAlinear = radians(90);       
float separacionEntreAnillos = radians(12); 

void setup() {
  size(800, 400);                      
  imagen = loadImage("D_18.jpg");     
}

void draw() {
  background(128);                     
  image(imagen, 0, 0, 400, 400);       

  if (giraAnillo1) giro1 += direccion1 * velocidad;
  if (giraAnillo2) giro2 += direccion2 * velocidad;
  if (giraAnillo3) giro3 += direccion3 * velocidad;
  if (giraAnillo4) giro4 += direccion4 * velocidad;

  dibujarAnillo(radio1, cantidad1, inclinacion, giro1, 0);
  dibujarAnillo(radio2, cantidad2, -inclinacion, giro2, 1);
  dibujarAnillo(radio3, cantidad3, inclinacion, giro3, 2);
  dibujarAnillo(radio4, cantidad4, -inclinacion, giro4, 3);
}

 void dibujarAnillo(float radio, int cantidad, float inclinacionAnillo, float rotacion, int numero) {
  for (int i = 0; i < cantidad; i++) {               
    float angulo = map(i, 0, cantidad, 0, radians(360)) + rotacion + numero * separacionEntreAnillos;

    float x = centroX + cos(angulo) * radio;        
    float y = centroY + sin(angulo) * radio;       
    
    if (i % 2 == 0) {
      fill(140);
      stroke(0);
    } else {
      fill(120);
      stroke(255);
    }

    pushMatrix();
    translate(x, y);                               
    rotate(angulo + giroParaAlinear + inclinacionAnillo); 
    rectMode(CENTER);
    rect(0, 0, tamaño, tamaño);                    
    popMatrix();
  }
}

boolean clicEnImagen(float x, float y) {
  return x < 400 && y < 400;                      
}

void mousePressed() {
  if (clicEnImagen(mouseX, mouseY)) {
    giro1 = giro2 = giro3 = giro4 = 0;
    giraAnillo1 = giraAnillo2 = giraAnillo3 = giraAnillo4 = false;
    direccion1 = direccion2 = direccion3 = direccion4 = 1;
  }
}

void keyPressed() {
  if (key == '1') giraAnillo1 = !giraAnillo1;
  if (key == '2') giraAnillo2 = !giraAnillo2;
  if (key == '3') giraAnillo3 = !giraAnillo3;
  if (key == '4') giraAnillo4 = !giraAnillo4;

  if (key == 'q') direccion1 *= -1;
  if (key == 'w') direccion2 *= -1;
  if (key == 'e') direccion3 *= -1;
  if (key == 'r') direccion4 *= -1;
} 
