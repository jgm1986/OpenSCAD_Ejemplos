// Ejemplo de uso de la recursividad y los condicionales.
// En este ejercicio, dibujaremos una pirámide de manera rápida utilizando
// la recursividad
module piramide(n, h=0, boxel=20){
    altura = boxel/2;
    translate([0,0,(altura/2)+h])
        cube([boxel*n, boxel*n, altura], center=true);
    if(n>1){
            piramide(n-1, altura+h);
        }
    }
  
// Ejemplo de uso  
piramide(10);