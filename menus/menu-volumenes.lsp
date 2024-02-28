(defun menu-volumenes ()
  (princ "Seleccione la figura para calcular el volumen:
1. Cilindro
2. Cilindro Hueco
3. Cono
4. Cono Truncado
5. Cubo
6. Esfera
7. Paralelepipedo
8. Piramide Cuadrada
9. Prisma Rectangular
10. Tetraedro
Ingrese su opción: ")
  (let ((opcion (read)))
    (case opcion
      ((1) (pedirDatosCilindro))
      ((2) (pedirDatosCilindroHueco))
      ((3) (pedirDatosCono))
      ((4) (pedirDatosConoTruncado))
      ((5) (pedirDatosCubo))
      ((6) (pedirDatosEsfera))
      ((7) (pedirDatosParalelepipedo))
      ((8) (pedirDatosPiramideCuadrada))
      ((9) (pedirDatosPrismaRectangular))
      ((10) (pedirDatosTetraedro))
      (t (princ "Opción inválida.")))))


;; Volumen de cilindro
(defvar *volumen-cilindro* (lambda (radio altura) (* pi (* radio radio) altura)))

(defun pedirDatosCilindro ()
  (princ "Dame el Radio del Cilindro: ")
  (let ((radio (read)))
    (princ "Dame la altura del Cilindro: ")
    (let ((altura (read)))
      (format t "El resultado es ~,2F unidades cúbicas" (funcall *volumen-cilindro* radio altura)))))

;; Volumen de cilindro hueco
(defvar *volumen-cilindro-hueco* (lambda (radio-exterior radio-interior altura) (* pi altura (- (expt radio-exterior 2) (expt radio-interior 2)))))

(defun pedirDatosCilindroHueco ()
  (princ "Dame el Radio Exterior: ")
  (let ((radio-exterior (read)))
    (princ "Dame el Radio Interior: ")
    (let ((radio-interior (read)))
      (princ "Dame la altura del cilindro hueco: ")
      (let ((altura (read)))
        (format t "El resultado es ~,2F unidades cúbicas" (funcall *volumen-cilindro-hueco* radio-exterior radio-interior altura))))))

;; Volumen de cono
(defvar *volumen-cono* (lambda (radio altura) (* (/ 1 3) pi (* (expt radio 2) altura))))

(defun pedirDatosCono ()
  (princ "Dame el radio del Cono: ")
  (let ((radio (read)))
    (princ "Dame la altura del Cono: ")
    (let ((altura (read)))
      (format t "El resultado es ~,2F unidades cúbicas" (funcall *volumen-cono* radio altura)))))

;; Volumen de cono truncado
(defvar *volumen-cono-truncado* (lambda (radio-base-grande radio-base-pequena altura) (* (/ pi 3) altura (+ (expt radio-base-grande 2) (* radio-base-grande radio-base-pequena) (expt radio-base-pequena 2)))))

(defun pedirDatosConoTruncado ()
  (princ "Dame la altura del Cono Truncado: ")
  (let ((altura (read)))
    (princ "Dame el Radio de la base grande del Cono Truncado: ")
    (let ((radio-base-grande (read)))
      (princ "Dame el Radio de la base pequeña del Cono Truncado: ")
      (let ((radio-base-pequena (read)))
        (format t "El resultado es ~,2F unidades cúbicas" (funcall *volumen-cono-truncado* radio-base-grande radio-base-pequena altura))))))

;; Volumen de cubo
(defvar *volumen-cubo* (lambda (lado) (* lado lado lado)))

(defun pedirDatosCubo ()
  (princ "Dame el lado del cubo: ")
  (let ((lado (read)))
    (format t "El resultado es ~A unidades cúbicas" (funcall *volumen-cubo* lado))))

;; Volumen de esfera
(defvar *volumen-esfera* (lambda (radio) (* (/ 4 3) pi (expt radio 3))))

(defun pedirDatosEsfera ()
  (princ "Dame el Radio de la Esfera: ")
  (let ((radio (read)))
    (format t "El resultado es ~,2F unidades cúbicas" (funcall *volumen-esfera* radio))))

;; Volumen de paralelepipedo
(defvar *volumen-paralelepipedo* (lambda (area-base altura) (* area-base altura)))

(defun pedirDatosParalelepipedo ()
  (princ "Dame el Area de la Base del Paralelepidedo: ")
  (let ((area-base (read)))
    (princ "Dame la Altura del Paralelepipedo: ")
    (let ((altura (read)))
      (format t "El resultado es ~,2F unidades cúbicas" (funcall *volumen-paralelepipedo* area-base altura)))))

;; Volumen de piramide cuadrada
(defvar *volumen-piramide-cuadrada* (lambda (lado-base altura) (/ (* (expt lado-base 2) altura) 3)))

(defun pedirDatosPiramideCuadrada ()
  (princ "Dame el lado de la base de la Piramide Cuadrada: ")
  (let ((lado-base (read)))
    (princ "Dame la altura de la Piramide Cuadrada: ")
    (let ((altura (read)))
      (format t "El resultado es ~,2F unidades cúbicas" (funcall *volumen-piramide-cuadrada* lado-base altura)))))

;; Volumen de prisma rectangular
(defvar *volumen-prisma-rectangular* (lambda (area-base altura) (* area-base altura)))

(defun pedirDatosPrismaRectangular ()
  (princ "Dame el area de la base del prisma cuadrangular: ")
  (let ((area-base (read)))
    (princ "Dame la altura del prisma cuadrangular: ")
    (let ((altura (read)))
      (format t "El resultado es ~,2F unidades cúbicas" (funcall *volumen-prisma-rectangular* area-base altura)))))

;; Volumen de tetraedro
(defvar *volumen-tetraedro* (lambda (lado) (/ (* (expt lado 3) (sqrt 2)) 12)))

(defun pedirDatosTetraedro ()
  (princ "Dame el Lado del Tetraedro: ")
  (let ((lado (read)))
    (format t "El resultado es ~,2F unidades cúbicas" (funcall *volumen-tetraedro* lado)))) 

;; Llamada al menú principal
(menu-volumenes)
