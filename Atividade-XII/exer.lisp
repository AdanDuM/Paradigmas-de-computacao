    (defun soma(lista)
      (if (null lista)
        0
      ( + (car lista ) (soma (cdr lista)))
      )
    )

    (defun media(lista)
      (if (null lista)
      0
      ( / (soma lista) (cumprimento lista))
      )
    )

    (defun cumprimento(lista)
      (if (null lista)
      0
      (+ 1 (cumprimento (cdr lista)))
      )
    )

    (defun menor(lista)
      (if (null lista)
      0
      (if (= 1 (cumprimento lista))
      (car lista)
      (if (< (car lista) (menor (cdr lista)))
        (car lista)
        (menor (cdr lista)))
        )
      )
    )

    (defun maior(lista)
      (if (null lista)
      0
      (if (= 1 (cumprimento lista))
      (car lista)
      (if (> (car lista) (maior (cdr lista)))
        (car lista)
        (maior (cdr lista)))
        )
      )
    )

    (defun diferencaMaiorMenor(lista)
      (- (maior lista) (menor lista))
    )

    (defun busca(lista n)
      (if (null lista)
        NIL
        (if (= n (car lista))
          T
          (busca (cdr lista) n)
        )
      )
    )

    (defun ocorrencia(lista n)
      (if (null lista)
        0
        (if (= n (car lista))
          (+ 1 (ocorrencia (cdr lista) n ))
          (ocorrencia (cdr lista) n)
        )
      )
    )

    (defun enesimo(lista n)
      (if (= n 0)
        (car lista)
        (enesimo (cdr lista) (- 1 n))
      )
    )

    (defun fatia(lista de ate)

    )

    (defun main()
      (write-line (concatenate 'string "exer 1 = " (write-to-string (soma '(1 2 3 9) ))))
      (write-line (concatenate 'string "exer 2 = " (write-to-string (media '(2 2 3 9) ))))
      (write-line (concatenate 'string "exer 3 = " (write-to-string (menor '(1 2 0 1) ))))
      (write-line (concatenate 'string "exer 4 = " (write-to-string (diferencaMaiorMenor '(1 9 0 1) ))))
      (write-line (concatenate 'string "exer 5 = " (write-to-string (busca '(1 9 0 1) 1))))
      (write-line (concatenate 'string "exer 6 = " (write-to-string (ocorrencia '(1 9 0 1) 1))))
      (write-line (concatenate 'string "exer 7 = " (write-to-string (enesimo '(1 9 0 1) 1))))
      (write-line (concatenate 'string "exer 8 = " (write-to-string (fatia '(1 9 0 1) 1) 2 4)))

    )

    (main)
