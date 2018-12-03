// En este ejemplo veremos toda la potencia de OpenSCAD con la
//     parametrización de objetos. Partimos de la rueda con el agujero en
//     el centro de ejemplos atrás.

// Parámetros de la rueda
diametro = 50;  // Diametro
grosor = 20;    // Grosor
diam_eje = 20;  // Diametro del agujero

// Cilindro con agujero centrarl
difference(){
    // Cilindro exterior
    cylinder(r=diametro/2, h=grosor, $fn=100);
    // Cilindro taladro central.
    cylinder(r=diam_eje/2, h=grosor*3, $fn=20, center=true);
    // NOTA: Multiplicamos por 3 la altura para asegurar que se atraviesa completamente la figura.
    }