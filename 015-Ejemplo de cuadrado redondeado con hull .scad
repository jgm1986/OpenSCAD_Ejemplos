// Ejemplo de caja con bordes redondeados. Caja de tamaño 20x10x5cm.
x=50;
y=50;
z=50;
r=5;   // Radio de curvatura.


// Definición de vector de posición
position =[
    [0, 0, 0],
    [x-(2*r), 0, 0],
    [0,y-(2*r),0],
    [x-(2*r),y-(2*r),0]
];

// Dibujamos el cuadrado
hull(){
    for(cur_pos = position){
        translate(cur_pos)
            box_element(r, z);
        }
    }


// Composición de esfera + cilindro + esfera que conformarían los
//     vertices verticales del cuadrado.
module box_element (r, z) {
    translate([r, r, r]){
        h_cylinder = z - (2*r);
        cylinder(r=r, h = h_cylinder, $fn=100);
        sphere(r=r, $fn=100);
        translate([0,0,h_cylinder])
            sphere(r=r, $fn=100);
    }
}