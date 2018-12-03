// Ejemplo de como centrar y transladar un cubo
rotate([0,0,45])    // Las rotaciones SIEMPRE son alrededor del origen del eje de coordenadas
translate([50,0,0])                 // Translada 50mm en el eje X
    cube([20,20,20], center=true);  // Centra el cubo en el eje de coordenadas
    
    
// Ejemplo de como rotar un cubo
rotate([0,0,45])                    // Rotamos 45º en el eje Z
    cube([20,20,10], center= true); // Creamos otro cubo de prueba