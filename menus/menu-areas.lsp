(defun menu ()
  (princ "Seleccione la figura para calcular el área:
1. Círculo
2. Cuadrado
3. Elipse
4. Hexágono
5. Paralelogramo
6. Pentágono
7. Rectángulo
8. Rombo
9. Trapecio
10. Triángulo
Ingrese su opción: ")
  (let ((opcion (read)))
    (cond
      ((= opcion 1) (pedirDatosCirculo))
      ((= opcion 2) (pedirDatosCuadrado))
      ((= opcion 3) (pedirDatosElipse))
      ((= opcion 4) (pedirDatosHexagono))
      ((= opcion 5) (pedirDatosParalelogramo))
      ((= opcion 6) (pedirDatosPentagono))
      ((= opcion 7) (pedirDatosRectangulo))
      ((= opcion 8) (pedirDatosRombo))
      ((= opcion 9) (pedirDatosTrapecio))
      ((= opcion 10) (pedirDatosTriangulo))
      (t (princ "Opción inválida.")))))

(defun pedirDatosCirculo ()
  (princ "Dame el radio del Círculo: ")
  (let ((radio (read)))
    (format t "El resultado es ~,2F unidades cuadradas" (funcall *areacirculo* radio))))

(defun pedirDatosCuadrado ()
  (princ "Dame el lado del cuadrado: ")
  (let ((lado (read)))
    (format t "El resultado es ~A unidades cuadradas" (funcall *areacuadrado* lado))))

(defun pedirDatosElipse ()
  (princ "Dame el Radio Mayor: ")
  (let ((radio-mayor (read)))
    (princ "Dame el Radio Menor: ")
    (let ((radio-menor (read)))
      (format t "El resultado es ~,2F unidades cuadradas" (funcall *areaelipse* radio-mayor radio-menor)))))

(defun pedirDatosHexagono ()
  (princ "Dame el Perímetro: ")
  (let ((perimetro (read)))
    (princ "Dame la Apotema: ")
    (let ((apotema (read)))
      (format t "El resultado es ~,2F unidades cuadradas" (funcall *areahexagono* perimetro apotema)))))

(defun pedirDatosParalelogramo ()
  (princ "Dame la base del paralelogramo: ")
  (let ((base (read)))
    (princ "Dame la altura del paralelogramo: ")
    (let ((altura (read)))
      (format t "El resultado es ~A unidades cuadradas" (funcall *areaparalelogramo* base altura)))))

(defun pedirDatosPentagono ()
  (princ "Dame el Perímetro: ")
  (let ((perimetro (read)))
    (princ "Dame la Apotema: ")
    (let ((apotema (read)))
      (format t "El resultado es ~,2F unidades cuadradas" (funcall *areapentagono* perimetro apotema)))))

(defun pedirDatosRectangulo ()
  (princ "Dame la base del rectángulo: ")
  (let ((base (read)))
    (princ "Dame la altura del rectángulo: ")
    (let ((altura (read)))
      (format t "El resultado es ~A unidades cuadradas" (funcall *arearectangulo* base altura)))))

(defun pedirDatosRombo ()
  (princ "Dame la Diagonal Mayor: ")
  (let ((diagonal-mayor (read)))
    (princ "Dame la Diagonal Menor: ")
    (let ((diagonal-menor (read)))
      (format t "El resultado es ~,2F unidades cuadradas" (funcall *arearombo* diagonal-mayor diagonal-menor)))))

(defun pedirDatosTrapecio ()
  (princ "Dame la longitud de la base mayor: ")
  (let ((base-mayor (read)))
    (princ "Dame la longitud de la base menor: ")
    (let ((base-menor (read)))
      (princ "Dame la altura: ")
      (let ((altura (read)))
        (let ((area (funcall *calcular-area-trapecio* base-mayor base-menor altura)))
          (format t "El Area del trapecio es ~,2F unidades cuadradas" area))))))

(defun pedirDatosTriangulo ()
  (princ "Dame la base del triángulo: ")
  (let ((base (read)))
    (princ "Dame la altura del triángulo: ")
    (let ((altura (read)))
      (format t "El resultado es ~,2F unidades cuadradas" (funcall *areatriangulo* base altura)))))

;; Llamada al menú principal
(menu)
