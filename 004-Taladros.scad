// En este ejemplo vamos a hacer taladros. 
translate([50, 0, 0])
difference(){
    // En primer lugar vamos a hacer una rueda con un agujero en medio
    cylinder(r=50/2, h=5, $fn=100); // Cilindro grande
    // Vamos a hacerle un agujero de M8 con 20 lados.
    // Para que atraviese completamente el cilindro grande, la centramos
    //     en el eje.
    cylinder(r=8/2, h=20, $fn=20, center=true);  
}