# Funciones para cálculo de volúmenes de figuras geométricas

## Volumen cilindro
Calcula el volumen de un cilindro dados el radio y la altura.

```lisp
(defvar *volumencilindro* (lambda (radio altura) (* pi (* radio radio) altura)))

(defun pedirDatos()
   (princ "Dame el Radio del Cilindro:")
   (setq radio (read))
   (princ "Dame la altura del Cilindro:")
   (setq altura (read))
   (format t "El resultado es ~,2F unidades cubicas" (funcall *volumencilindro* radio altura))
)
```

## Volumen cilindro hueco
Calcula el volumen de un cilindro hueco dados el radio exterior, el radio interior y la altura.
```lisp
(defvar *volumencilindrohueco* (lambda (radio-exterior radio-interior altura)   (* pi altura (- (expt radio-exterior 2) (expt radio-interior 2)))))

(defun pedirDatos()
   (princ "Dame el Radio Exterior:")
   (setq radio-exterior (read))
   (princ "Dame el Radio Interior:")
   (setq radio-interior (read))
   (princ "Dame la altura del cilindro hueco:")
   (setq altura (read))
   (format t "El resultado es ~,2F unidades cubicas" (funcall *volumencilindrohueco* radio-exterior radio-interior altura))
)
```

## Volumen Cono
Calcula el volumen de un cono dados el radio y la altura.

```lisp
(defvar *volumencono* (lambda (radio altura) (* (/ 1 3) pi (* (expt radio 2) altura))))

(defun pedirDatos()
   (princ "Dame el radio del Cono:")
   (setq radio (read))
   (princ "Dame la altura del Cono:")
   (setq altura (read))
   (format t "El resultado es ~,2F unidades cubicas" (funcall *volumencono* radio altura))
)
```

## Volumen cono truncado
Calcula el volumen de un cono truncado dados el radio de la base grande, el radio de la base pequeña y la altura.

```lisp
(defvar *volumenconotruncado* (lambda (radio-base-grande radio-base-pequena altura) (* (/ pi 3) altura (+ (expt radio-base-grande 2) (* radio-base-grande radio-base-pequena) (expt radio-base-pequena 2)))))

(defun pedirDatos()
   (princ "Dame la altura del Cono Truncado:")
   (setq altura (read))
   (princ "Dame el Radio de la base grande del Cono Truncado:")
   (setq radio-base-grande (read))
   (princ "Dame el Radio de la base pequeña del Cono Truncado:")
   (setq radio-base-pequena (read))
   
   (format t "El resultado es ~,2F unidades cubicas" (funcall *volumenconotruncado* radio-base-grande radio-base-pequena altura))
)

```

## Volumen cubo
Calcula el volumen de un cubo dado el lado.

``` 
(defvar *volumencubo* (lambda (lado) (* lado lado lado)))

(defun pedirDatos()
   (princ "Dame el lado del cuadrado:")
   (setq lado (read))
   (format t "El resultado es ~A unidades cubicas" (funcall *volumencubo* lado))
)

```

## Volumen esfera
Calcula el volumen de una esfera dado el radio.

```lisp
(defvar *volumenesfera* (lambda (radio) (* (/ 4 3) pi (expt radio 3))))

(defun pedirDatos()
   (princ "Dame el Radio de la Esfera:")
   (setq radio (read))
   (format t "El resultado es ~,2F unidades cubicas" (funcall *volumenesfera* radio))
)

```
## Volumen paralelepipedo
Calcula el volumen de un paralelepípedo dados el área de la base y la altura.

```lisp 
(defvar *volumenparalelepipedo* (lambda (area-base altura) (* area-base altura)))

(defun pedirDatos()
   (princ "Dame el Area de la Base del Paralelepidedo:")
   (setq area-base (read))
   (princ "Dame la Altura del Paralelepipedo:")
   (setq altura (read))
   (format t "El resultado es ~,2F unidades cubicas" (funcall *volumenparalelepipedo* area-base altura))
)
``` 


## Volumen piramide cuadrada
Calcula el volumen de una pirámide cuadrada dados el lado de la base y la altura.

```lisp
(defvar *volumenpiramidecuadrada* (lambda (lado-base altura) (/ (* (expt lado-base 2) altura) 3)))

(defun pedirDatos()
   (princ "Dame el lado de la base de la Piramide Cuadrada:")
   (setq lado-base (read))
   (princ "Dame la altura de la Piramide Cuadrada:")
   (setq altura (read))
   (format t "El resultado es ~,2F unidades cubicas" (funcall *volumenpiramidecuadrada* lado-base altura))
)
```

## Volumen prisma rectangular
Calcula el volumen de un prisma rectangular dados el área de la base y la altura.

```lisp
(defvar *volumenprismarectangular* (lambda (area-base altura) (* area-base altura)))

(defun pedirDatos()
   (princ "Dame el area de la base del prisma cuadrangular:")
   (setq area-base (read))
   (princ "Dame la altura del prisma cuadrangular:")
   (setq altura (read))
   (format t "El resultado es ~,2F unidades cubicas" (funcall *volumenprismarectangular* area-base altura))
)
```
## Volumen tetraedro
Calcula el volumen de un tetraedro dado el lado.

```lisp
(defvar *volumentetraedro* (lambda (lado) (/ (* (expt lado 3) (sqrt 2)) 12)))

(defun pedirDatos()
   (princ "Dame el Lado del Tetraedro:")
   (setq lado (read))
   (format t "El resultado es ~,2F unidades cubicas" (funcall *volumentetraedro* lado))
)
``` 

