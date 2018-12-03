// Ejemplo de un portacanicas
dc = 16;    // Diametro de la canica. Defecto: 16mm
d = dc+3;   // Separación de la canica. Defecto 2mm
N = 4;      // Número de canicas por lado. Defecto 3.


difference(){
    // Dibujamos la caja
    box_size = N*d;
    box_h = (dc /2) + 2;

    translate([0, 0, -box_h/2])
        cube([box_size, box_size, box_h], center=true);
    
    // Dibujamos el array de canicas
    size = (N-1) * d;
    translate([-size/2, -size/2, 0])
        for(ix=[0:N-1]){
            for(iy=[0:N-1]){
                translate([d*ix, d*iy, 0])
                sphere(r=dc/2, $fn=100);
                }
        }

    
    }