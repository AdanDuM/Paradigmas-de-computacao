(defun fatorial (n)
  (if (= n 0)
    1
    (* n (fatorial (- n 1)))
  )
)

(defun main()
  (setq y (read))
  (write-line (write-to-string (fatorial y)))
)

(main)
