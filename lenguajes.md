# Funciones fibbonacci, factorial y palindroma en distintos lenguajes.

## Lenguaje Pyhton
Python es un lenguaje de programación dinámico y de tipado fuerte. Esto significa que las variables no tienen un tipo de dato estático y el tipo de dato de una variable se determina en tiempo de ejecución. Sin embargo, una vez que una variable ha sido asignada, su tipo no cambia.
Python es un lenguaje de programación multiparadigma, lo que significa que admite diferentes estilos de programación, incluidos el imperativo, el orientado a objetos y el funcional. Sin embargo, su paradigma principal es el de programación orientada a objetos.
Python fomenta un estilo de programación limpio y legible. Se enfatiza el uso de la indentación y la simplicidad del código.

### Codigo

```fibonacci
def fibonacci(n):
    if n <= 1:
        return n
    else:
        return fibonacci(n-1) + fibonacci(n-2)

# Ejemplo de uso
n = 10
print("Fibonacci de", n, "es:", fibonacci(n))
```

```factorial
def factorial(n):
    if n == 0:
        return 1
    else:
        return n * factorial(n-1)

n = 5
print("Factorial de", n, "es:", factorial(n))

```

```palindroma
def es_palindroma(palabra):
    palabra = palabra.lower()
    if len(palabra) <= 1:
        return True
    elif palabra[0] != palabra[-1]:
        return False
    else:
        return es_palindroma(palabra[1:-1])

palabra = "reconocer"
print("¿Es", palabra, "palíndroma?", es_palindroma(palabra))

```

## Lenguaje C
C es un lenguaje de programación estáticamente tipado y de tipado fuerte. Esto significa que los tipos de datos de las variables deben ser declarados explícitamente y el tipo de dato de una variable no puede cambiar durante su vida útil.
C es un lenguaje de programación imperativo y estructurado. Se centra en la manipulación de datos mediante estructuras como funciones y estructuras de control de flujo.
El estilo de programación en C tiende a ser más cercano al hardware y al nivel de la máquina. Se enfatiza la eficiencia y el control directo sobre los recursos del sistema.
 
### Codigo 

```fibonacci
#include <stdio.h>

int fibonacci(int n) {
    if (n <= 1)
        return n;
    else
        return fibonacci(n-1) + fibonacci(n-2);
}

int main() {
    int n = 10;
    printf("Fibonacci de %d es: %d\n", n, fibonacci(n));
    return 0;
}
```

```factorial
#include <stdio.h>

int factorial(int n) {
    if (n == 0)
        return 1;
    else
        return n * factorial(n-1);
}

int main() {
    int n = 5;
    printf("Factorial de %d es: %d\n", n, factorial(n));
    return 0;
}
```

```palindroma
#include <stdio.h>
#include <string.h>
#include <stdbool.h>

bool es_palindroma(char *palabra, int inicio, int fin) {
    if (inicio >= fin)
        return true;
    if (palabra[inicio] != palabra[fin])
        return false;
    return es_palindroma(palabra, inicio+1, fin-1);
}

int main() {
    char palabra[] = "reconocer";
    int n = strlen(palabra);
    printf("¿Es '%s' palíndroma? %s\n", palabra, es_palindroma(palabra, 0, n-1) ? "Sí" : "No");
    return 0;
}
```

## Lenguaje JAVA 

Java es un lenguaje de programación estáticamente tipado y de tipado fuerte. Esto significa que el tipo de dato de cada variable debe ser declarado explícitamente y se realiza una verificación de tipo en tiempo de compilación para garantizar la seguridad y la integridad del tipo.
Java es un lenguaje de programación orientado a objetos. Está diseñado en torno al concepto de clases y objetos, y sigue los principios de encapsulamiento, herencia y polimorfismo.
Java promueve un estilo de programación limpio y modular. Se enfatiza el uso de clases y métodos bien definidos, así como la separación de preocupaciones a través de la modularidad y la reutilización de código.

### Codigo

```fibonacci 
public class Fibonacci {
    public static int fibonacci(int n) {
        if (n <= 1)
            return n;
        else
            return fibonacci(n-1) + fibonacci(n-2);
    }

    public static void main(String[] args) {
        int n = 10;
        System.out.println("Fibonacci de " + n + " es: " + fibonacci(n));
    }
}

```

```factorial
public class Factorial {
    public static int factorial(int n) {
        if (n == 0)
            return 1;
        else
            return n * factorial(n-1);
    }

    public static void main(String[] args) {
        int n = 5;
        System.out.println("Factorial de " + n + " es: " + factorial(n));
    }
}
```

```palindroma
public class Palindromo {
    public static boolean esPalindroma(String palabra) {
        palabra = palabra.toLowerCase();
        if (palabra.length() <= 1)
            return true;
        else if (palabra.charAt(0) != palabra.charAt(palabra.length() - 1))
            return false;
        else
            return esPalindroma(palabra.substring(1, palabra.length() - 1));
    }

    public static void main(String[] args) {
        String palabra = "reconocer";
        System.out.println("¿Es '" + palabra + "' palíndroma? " + esPalindroma(palabra));
    }
}

```

## Lenguaje Perl
Perl es un lenguaje de programación dinámico y de tipado débil. Esto significa que las variables no tienen un tipo de dato estático y pueden cambiar de tipo durante la ejecución del programa.
Perl es un lenguaje de programación multiparadigma, con soporte para programación imperativa, orientada a objetos y funcional. Es conocido por su flexibilidad y expresividad.
Perl es a menudo asociado con un estilo de programación expresivo y conciso. Fomenta el uso de expresiones regulares y ofrece una amplia gama de características para manipular texto y datos de manera eficiente.

### Codigo 

```fibonacci
sub fibonacci {
    my $n = shift;
    return $n if $n <= 1;
    return fibonacci($n-1) + fibonacci($n-2);
}

my $n = 10;
print "Fibonacci de $n es: ", fibonacci($n), "\n";
```

```factorial
sub factorial {
    my $n = shift;
    return 1 if $n == 0;
    return $n * factorial($n-1);
}

my $n = 5;
print "Factorial de $n es: ", factorial($n), "\n";
```

```palindroma
sub es_palindroma {
    my $palabra = lc $_[0];
    return 1 if length($palabra) <= 1;
    return 0 if substr($palabra, 0, 1) ne substr($palabra, -1, 1);
    return es_palindroma(substr($palabra, 1, -1));
}

my $palabra = "reconocer";
print "¿Es '$palabra' palíndroma? ", es_palindroma($palabra) ? "Sí\n" : "No\n";

```

## Lenguaje Rust

Rust es un lenguaje de programación estáticamente tipado y de tipado fuerte. Las variables en Rust deben tener un tipo de dato declarado y no pueden cambiar de tipo durante la ejecución del programa. Además, Rust cuenta con un sistema de tipos muy avanzado que garantiza la seguridad y la ausencia de errores en tiempo de compilación.
Rust es un lenguaje de programación multiparadigma que combina aspectos de programación imperativa, funcional y orientada a objetos. Está diseñado para ser seguro, concurrente y práctico.
Rust promueve un estilo de programación seguro y eficiente. Se enfatiza el control sobre los recursos del sistema, la gestión segura de la memoria y la prevención de errores en tiempo de compilación. El código Rust tiende a ser explícito y bien estructurado.

### Codigo 

```fibonacci
fn fibonacci(n: i32) -> i32 {
    if n <= 1 {
        return n;
    }
    return fibonacci(n-1) + fibonacci(n-2);
}

fn main() {
    let n = 10;
    println!("Fibonacci de {} es: {}", n, fibonacci(n));
}

```

```factorial
fn factorial(n: i32) -> i32 {
    if n == 0 {
        return 1;
    }
    return n * factorial(n-1);
}

fn main() {
    let n = 5;
    println!("Factorial de {} es: {}", n, factorial(n));
}

```

```palindroma
fn es_palindroma(palabra: &str) -> bool {
    let palabra = palabra.to_lowercase();
    if palabra.len() <= 1 {
        return true;
    } else if palabra.chars().next() != palabra.chars().last() {
        return false;
    } else {
        return es_palindroma(&palabra[1..palabra.len() - 1]);
    }
}

fn main() {
    let palabra = "reconocer";
    println!("¿Es '{}' palíndroma? {}", palabra, es_palindroma(palabra));
}

```

## Lenguaje Go.

Go es un lenguaje de programación estáticamente tipado y de tipado fuerte. Las variables en Go deben tener un tipo de dato declarado y no pueden cambiar de tipo durante la ejecución del programa.
Go es un lenguaje de programación concurrente, compilado y de tipado estático. Está diseñado para ser eficiente en tiempo de compilación y en tiempo de ejecución, con soporte integrado para la concurrencia.
Go fomenta un estilo de programación claro y conciso. Se enfatiza la legibilidad y la simplicidad del código, con una sintaxis clara y un conjunto reducido de características de lenguaje.

### Codigo

```fibonacci
package main
import "fmt"

func fibonacci(n int) int {
    if n <= 1 {
        return n
    }
    return fibonacci(n-1) + fibonacci(n-2)
}

func main() {
    n := 10
    fmt.Printf("Fibonacci de %d es: %d\n", n, fibonacci(n))
}

```

```factorial
package main
import "fmt"

func factorial(n int) int {
    if n == 0 {
        return 1
    }
    return n * factorial(n-1)
}

func main() {
    n := 5
    fmt.Printf("Factorial de %d es: %d\n", n, factorial(n))
}

```

```fibonacci
package main
import "fmt"
import "strings"

func esPalindroma(palabra string) bool {
    palabra = strings.ToLower(palabra)
    if len(palabra) <= 1 {
        return true
    } else if palabra[0] != palabra[len(palabra)-1] {
        return false
    } else {
        return esPalindroma(palabra[1 : len(palabra)-1])
    }
}

func main() {
    palabra := "reconocer"
    fmt.Printf("¿Es '%s' palíndroma? %t\n", palabra, esPalindroma(palabra))
}

```