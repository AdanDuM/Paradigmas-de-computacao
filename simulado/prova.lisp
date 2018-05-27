(defun sequencia(n)
  (if (= n 0)
    1000
    (+ (sequencia (- n 1)) (* -10 n))
  )
)
; f(0) = 1000, passo base
; f(1) = f(0) - 10 = 990
; f(2) = f(1) - 10 - 10 = 970
; f(3) = f(2) - 10 - 10 -10 = 940
; f(n) = f(n-1) (-10 * n)
; usado para definir o passo recursivo


(defun main()
  (write-line (write-to-string (sequencia 100)))
)

(main)
