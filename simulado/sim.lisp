(defun sequencia(n)
  (if (= n 0)
    5
    (+ (sequencia (- n 1)) (+ 6 (* 2 (- n 1))))
  )
)


(defun main()
  (write-line (write-to-string (sequencia 20)))
  (write-line (write-to-string (intessecao '(1 1) '(1 1))))
)

(main)
