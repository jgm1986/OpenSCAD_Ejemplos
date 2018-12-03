// En este ejemplo convertiremos en un módulo la pieza de mecano anterior

// Ejemplo de una pieza de mecano paramétrico
//---------------------------------------------
// Definición del tamaño de taladro
//drill=4;
//d=10;
//n=10;    // Núnmero de agujeros
// Definición tamaño pieza
//anchura = 10;
//grosor = 3;

module pieza_mecano(drill=4, d=10, anchura=10, grosor=3){
    lx = n*d;
    // Dibujamos la figura
    translate([-lx/2, 0, 0])    // Centramos en el eje de coordenadas
    difference(){
        // Definimos la figura
        translate([lx/2, 0, 0])
        cube([lx, anchura, grosor], center = true);
        // Repetimos los taladros a lo largo de la figura
        for(i=[0:n-1]){
            translate([d*i+d/2,0, 0])
            cylinder(r=drill/2, h=grosor*2, $fn=30, center = true);
            }
    }
}


// Ejemplo de uso del módulo
pieza_mecano(n=4);

translate([0, 20, 0])
pieza_mecano(n=6);