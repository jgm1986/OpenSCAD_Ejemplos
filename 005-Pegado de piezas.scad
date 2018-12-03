// Vamos a hacer una rueda de un robot que va a tener un porta ejes
translate([50,0,0]) // Podemos aplicar una translación a la unión de los cilindros
difference() {
    union(){    // Con el operador Union los pegamos lo que será la rueda y el portaeje
        cylinder(r=50/2, h=5, $fn=100);     // Rueda
        cylinder(r=20/2, h=20, fn=80);      // Porta Eje
    }

    cylinder(r=8/2, h=80 , $fn=30, center=true);    // Taladro del portaeje
}