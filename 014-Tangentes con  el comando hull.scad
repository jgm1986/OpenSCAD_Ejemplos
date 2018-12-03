// Este es un ejemplo de uso de las tangentes.
r1 = 40;        // Cilindro grande
r2 = 10;        // Cilindro pequeño
th = 5;         // Altura de los cilindros
d  = r1 +r2 + 100;   // Distancia entre los cilindros


hull(){
translate([-d/2, 0, 0])
    cylinder(r = r1, h = th, $fn = 100, center = true);
    
translate([d/2, 0, 0])
    cylinder(r = r2, h = th, $fn = 100, center = true);
    
}