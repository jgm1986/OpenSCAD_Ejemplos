// Este es un ejemplo de como crear texto en nuestros diseños.
texto = "Hola Mundo!";

// Muestra por consola el valor de una variable
echo("Vamos a imprimir este texto: ", texto);

linear_extrude(height = 5, $fn=100) 
text(texto, size = letter_size, font = "Arial", halign = "center", valign = "center", $fn = 16);