// Ejemplos de uso de extrusiones lineales y extrusioens axiales


// Extrusión de un rectángulo
translate([0, 0, 0])
linear_extrude(height = 50, twist = 90, $fn=100)
square([40, 20], center = true);

// Extrusión de un círculo (hacemos que sea un triángulo)
translate([50, 0, 0])
linear_extrude(height = 50, twist = 90, $fn=100)
circle(d=40, $fn=3);

// Extrusión de un círculo (hacemos que sea un hexágono)
translate([100, 0, 0])
linear_extrude(height = 50, twist = 90, $fn=100)
circle(d=40, $fn=6);


// Extrusión de un círculo (hacemos una hélice)
translate([-50, 0, 0])
linear_extrude(height = 50, twist = 360, $fn=100)
translate([15, 0, 0])
circle(d=20, $fn=100);

// Extrusión de un toro
translate([-100, 0,15/2])
rotate_extrude($fn=100)
// Dibujamos el círculo en el plano sin rotarlo ni nada, y ya la función se
//     encarga de hacernos la extrusión como debe ser.
translate([15, 0,0])
circle(d=15, $fn=100);