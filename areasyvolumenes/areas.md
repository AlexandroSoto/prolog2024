# Funciones para cálculo de áreas de figuras geométricas

## Área Circulo
Calcula el área de un círculo dado el radio.

```lisp
(defvar *areacirculo* (lambda (radio) (* pi (* radio radio))))

(defun pedirDatos()
   (princ "Dame el radio del Circulo:")
   (setq radio (read))
   (format t "El resultado es ~,2F unidades cuadradas" (funcall *areacirculo* radio))
)
``` 

## Area cuadrado
Calcula el área de un cuadrado dados sus lados.

```lisp
(defvar *areacuadrado* (lambda (num1 num2) (* num1 num2)))

(defun pedirDatos()
   (princ "Dame el lado del cuadrado:")
   (setq num1 (read))
   (princ "Dame el otro lado del cuadrado:")
   (setq num2 (read))
   (format t "El resultado es ~A unidades cuadradas" (funcall *areacuadrado* num1 num2))
)

```

## Area elipse
Calcula el área de una elipse dados sus radios mayor y menor.

```lisp
(defvar *areaelipse* (lambda (radio-mayor radio-menor) (* pi radio-mayor radio-menor)))

(defun pedirDatos()
   (princ "Dame el Radio Mayor:")
   (setq radio-mayor (read))
   (princ "Dame el Radio Menor:")
   (setq radio-menor (read))
   (format t "El resultado es ~,2F unidades cuadradas" (funcall *areaelipse* radio-mayor radio-menor))
)
``` 

## Area Hexagono
Calcula el área de un hexágono dados su perímetro y apotema.

```lisp
(defvar *areahexagono* (lambda (perimetro apotema) (/ (* perimetro apotema) 2)))

(defun pedirDatos()
   (princ "Dame el Perimetro:")
   (setq perimetro (read))
   (princ "Dame la Apotema:")
   (setq apotema (read))
   (format t "El resultado es ~,2F unidades cuadradas" (funcall *areahexagono* perimetro apotema))
)
```

## Area paralelogramo
Calcula el área de un paralelogramo dados su base y altura.

```lisp
(defvar *areaparalelogramo* (lambda (base altura) (* base altura)))

(defun pedirDatos()
   (princ "Dame la base del paralelogramo:")
   (setq base (read))
   (princ "Dame la altura del paralelogramo:")
   (setq altura (read))
   (format t "El resultado es ~A unidades cuadradas" (funcall *areaparalelogramo* base altura))
)
```

## Area pentagono
Calcula el área de un pentágono dados su perímetro y apotema.

```lisp
(defvar *areapentagono* (lambda (perimetro apotema) (/ (* perimetro apotema) 2)))

(defun pedirDatos()
   (princ "Dame el Perimetro:")
   (setq perimetro (read))
   (princ "Dame la Apotema:")
   (setq apotema (read))
   (format t "El resultado es ~,2F unidades cuadradas" (funcall *areapentagono* perimetro apotema))
)
```

## Area rectangulo
Calcula el área de un rectángulo dados su base y altura.

```lisp
(defvar *arearectangulo* (lambda (base altura) (* base altura)))

(defun pedirDatos()
   (princ "Dame la base del rectangulo:")
   (setq base (read))
   (princ "Dame la altura del rectangulo:")
   (setq altura (read))
   (format t "El resultado es ~A unidades cuadradas" (funcall *arearectangulo* base altura))
)
```

## Area rombo
Calcula el área de un rombo dados sus diagonales.

```lisp
(defvar *arearombo* (lambda (diagonal-mayor diagonal-menor) (/ (* diagonal-mayor diagonal-menor) 2)))

(defun pedirDatos()
   (princ "Dame la Diagonal Mayor:")
   (setq diagonal-mayor (read))
   (princ "Dame la Diagonal Menor:")
   (setq diagonal-menor (read))
   (format t "El resultado es ~,2F unidades cuadradas" (funcall *arearombo* diagonal-mayor diagonal-menor))
)

```


## Area trapecio
Calcula el área de un trapecio dados sus bases y altura.

```lisp
(defvar *calcular-area-trapecio*
  (lambda (base-mayor base-menor altura)
    (* (/ (+ base-mayor base-menor) 2) altura)))

(defvar *pedir-datos-y-calcular-area*
  (lambda ()
    (princ "Dame la longitud de la base mayor: ")
    (setq base-mayor (read))
    (princ "Dame la longitud de la base menor: ")
    (setq base-menor (read))
    (princ "Dame la altura: ")
    (setq altura (read))
    (let ((area (funcall *calcular-area-trapecio* base-mayor base-menor altura)))
      (format t "El Area del trapecio es ~,2F unidades cuadradas" area))))


(funcall *pedir-datos-y-calcular-area*)  

## Área Triángulo
Calcula el área de un triángulo dados su base y altura.

```lisp
(defvar *areatriangulo* (lambda (base altura) (/ (* base altura) 2)))

(defun pedirDatos()
   (princ "Dame la base del triangulo:")
   (setq base (read))
   (princ "Dame la altura del triangulo:")
   (setq altura (read))
   (format t "El resultado es ~,2F unidades cuadradas" (funcall *areatriangulo* base altura))
)

```



