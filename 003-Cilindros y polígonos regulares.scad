// Vamos a crear un cilidro de radio 20mm y altura 20mm. Para suavizar
//     los polígonos de los lados, podemos incrementar el número de los
//     mismos con el parámetro $fn
translate([50, 0, 0])
    cylinder(r=20, h=20, $fn=100);
    
    
// Vamos a hacer un hexágono cambiando simplemente el número de lados.
translate([100, 0, 0])
    cylinder(r=40/2, h= 5, $fn=6);
// NOTA: Para nosotros, cualquier polígono regular, va a ser un cilindro.


// Hacemos una moneda
translate([150, 0, 0])
    cylinder(r=20, h=5, $fn=100);
    
    
// Hacemos un triángulo equilatero y lo desplazamos
translate([200, 0, 0])
    cylinder(r=40/2, h=5, $fn=3);