# Funciones LISP

## holamundo
Imprime "Hola Mundo" en la consola.
 ```
   (defun holamundo()
    (print "Hola Mundo")
    )
 ```

## suma
Calcula la suma de dos números y muestra "Hola Mundo" antes de devolver el resultado.
 ```
   (defun suma(a b)
    (holamundo)
    (+ a b)    
    )
 ```

## factorial
Calcula el factorial de un número utilizando recursión.
 ```
   (defun factorial(a)
    (if ( = a 0)
        1
        (* a (factorial( - a 1)))
    )

    )
 ```

## dobledeunnumero
Calcula el doble de un número.
 ```
   (defun dobledeunnumero (x)
    (* 2 x)
    )
 ```

## numeropar
Verifica si un número es par utilizando recursión.
 ```
   (defun numeropar (x)
        (if (= x 0)
            t
            (if (< x 0)
                nil
          (numeropar (- x 2))
            )
         )
    )
 ```

## numeroalcuadrado
Calcula el cuadrado de un número.
 ```
   (defun numeroalcuadrado (x)
        (* x x)
    )
 ```

## cubodeunnumero
Calcula el cubo de un número.
 ```
   (defun cubodeunnumero (x)
        (* x x x)
    )
 ```

## promedio
Calcula el promedio de dos números.
 ```
   (defun promedio (x y)
        (/ (+ x y) 2)
    )
 ```

## espositivo
Verifica si un número es positivo.
 ```
   (defun espositivo (x)
        (> x 0)
    )
 ```

## esnegativo
Verifica si un número es negativo.
 ```
   (defun esnegativo (x)
        (< x 0)
    )
 ```

## valorabsoluto
Calcula el valor absoluto de un número.
 ```
   (defun valorabsoluto (x)
        (abs x)
    )
 ```

## maximo
Calcula el máximo entre dos números.
 ```
   (defun maximo (x y)
        (max x y)
    )
 ```

## minimo
Calcula el mínimo entre dos números.
 ```
   (defun minimo (x y)
        (min x y)
    )
 ```

## promediotresnumeros
Calcula el promedio de tres números.
 ```
   (defun promediotresnumeros (x y z)
        (/ (+ x y z) 3)
    )
 ```

## primerelemento
Obtiene el primer elemento de una lista.
 ```
   (defun primerelemento (lista)
        (car lista)
    )
 ```

## ultimoelemento
Obtiene el último elemento de una lista.
 ```
   (defun ultimoelemento (lista)
        (car (last lista))
    )
 ```

## arearectangulo
Calcula el área de un rectángulo.
 ```
   (defun arearectangulo (base altura)
        (* base altura)
    )
 ```

## areatriangulo
Calcula el área de un triángulo.
 ```
   (defun areatriangulo (base altura)
        (/ (* base altura) 2)
    )
 ```

## invertirlista
Invierte el orden de los elementos de una lista.
 ```
   (defun invertirlista (lista)
        (reverse lista)
    )
 ```
    
## concatenarlistas
Concatena dos listas.
 ```
   (defun concatenarlistas (lista1 lista2)
        (append lista1 lista2)
    )
 ```
