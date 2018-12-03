// Vamos a ver como repetir figuras periódicamente utilizando un bucle FOR

d=5;        // Diametro del taladro.
h=15;       // Algura del taladro
n=6;         // Número de taladros
dist=10;    // Distancia entre taladros

for(i=[0:n-1]){
    translate([dist*i, 0, 0])
        cylinder(d=5, h=15, $fn=40);
}