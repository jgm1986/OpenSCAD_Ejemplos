// Partiendo del ejemplo anterior de la rueda parametrizable, vamos a ver
//     cómo utilizar módulos en nuestros diseños.
//  Los módulos son muy importantes porque nos van a permitir reutilizar
//      nuestro código dentro y fuera del programa actual. Podemos por
//      tanto, tener nuestras propias bibliotecas de objetos.

module rueda_simple(grosor, diametro, diam_eje){
    // La definición de un módulo es muy sencilla, simplemente ponemos
    //     la palabra clave MODULE, seguido del nombre que queremos asignar
    //     para identificar el módulo, y los parámetros de nuestra función.


    // Cilindro con agujero centrarl
    difference(){
        // Cilindro exterior
        cylinder(r=diametro/2, h=grosor, $fn=100);
        // Cilindro taladro central.
        cylinder(r=diam_eje/2, h=grosor*3, $fn=20, center=true);
        // NOTA: Multiplicamos por 3 la altura para asegurar que se
        //     atraviesa completamente la figura.
        }
    }
    
// Utilizando el módulo anterior, generamos una rueda de ejemplo:
translate([50, 0, 0]){
    rueda_simple(grosor=5, diametro=50, diam_eje=8);
    // NOTA: Los parámetros de entrada podemos pasarlos en cualquier orden.
}

// Añadimos una segunda rueda de manera sencilla
translate([100, 0, 0]){
    rueda_simple(grosor=20, diametro=40, diam_eje=10);
    // NOTA: Los parámetros de entrada podemos pasarlos en cualquier orden.
}