package fichas_medicas;

import com.fichas_medicas.domain.Area;
import com.fichas_medicas.domain.Usuario;

/**
 *
 * @author Usuario
 */
public class Fichas_medicas {

    /**
     * Primer cambio 6 noviembre 2024 Prueba Jose 7/11/2024 14:28pm Prueba Laura
     * 7/11/2024 14:43pm Prueba José Luis 7/11/2024 14:39 pm Prueba Victor Pico
     * 7/11/2024 14:45 pm Prueba Pablo Garcia 7/11/2024 02:52 pm Prueba Hector
     * Drouet 7/11/2024 14:47pm Prueba Alex Sanchez 7/11/2024 14:54pm Prueba
     * Leandro Cacao 7/11/2024 15:01pm
     */
    public static void main(String[] args) {
        System.out.println("Practicas Bernardino");  // Imprime un saludo
        // TODO code application logic here
        Usuario ob = new Usuario("ccvvv", "wwww", "jose", "lopez", "hhjh",
                0, "A");
        System.out.println(ob.toString());
        Usuario ob1 = new Usuario(10, "ccvvv", "wwww", "jose", "lopez", "hhjh",
                 0, "A");
        System.out.println(ob.toString());
        Area obA = new Area("Informatica", 1, "A");
        System.out.println(obA.toString());
    }
}
