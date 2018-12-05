B=40;   // Base larga
b=20;   // Base corta
h=15;   // Altura

// Dibujamos la figura
rotate([90, 0, 0])      // Rotamos 90º en el eje X
linear_extrude(height= 80, center=true){    // Extruimos
    // Puntos para definir el poligono en sentido horario
    polygon (points = [
        [-B/2, -h/2],   // Vértice de base, lado izquierdo.
        [-b/2, h/2],    // Vértice superior izquierdo.
        [b/2, h/2],     // Vértice superior derecho.
        [B/2, -h/2]     // Vértice de la base, derecho.
    ]);
}