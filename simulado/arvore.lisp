(defstruct no
    n
    esq
    dir
)

(setq minhaArvore
    (make-no
        :n 2
        :esq (make-no :n 32               ;pode omitir o NIL
                      :esq (make-no :n 12 :esq NIL :dir NIL)
                      :dir (make-no :n 35 :esq NIL :dir NIL)
             )
        :dir (make-no :n 56
                      :esq (make-no :n 55 :esq NIL :dir NIL)
                      :dir (make-no :n 64 :esq NIL :dir NIL)
             )
    )
)

(setq minhaArvore1
    (make-no
        :n 51
        :esq (make-no :n 32               ;pode omitir o NIL
                      :esq (make-no :n 12 :esq NIL :dir NIL)
                      :dir (make-no :n 35 :esq NIL :dir NIL)
             )
        :dir (make-no :n 56
                      :esq (make-no :n 55 :esq NIL :dir NIL)
                      :dir NIL
             )
    )
)

(defun soma (arv)
    (if (null arv)
        0
        (+
            (no-n arv)
            (soma (no-esq arv))
            (soma (no-dir arv))
        )
    )
)

(defun buscaElemento (arv x)
    (if (null arv)
        NIL
        (or
            (= (no-n arv) x)
            (buscaElemento (no-esq arv) x)
            (buscaElemento (no-dir arv) x)
        )
    )
)

(defun minimo (x y)
    (if (< x y)
        x
        y
    )
)

(setq INF 1000)

(defun minimoElemento (arv)
    (if (null arv)
        INF
        (minimo
            (no-n arv)
            (minimo
                (minimoElemento (no-esq arv))
                (minimoElemento (no-dir arv))
            )
        )
    )
)

(defun igual (arvA arvB)
  (cond
    ((and (null arvA) (null arvB)) T)
    ((or (null arvA) (null arvB)) NIL)
    ((= (no-n arvA) (no-n arvB)) (and (igual (no-esq arvA) (no-esq arvB)) (igual (no-dir arvA) (no-dir arvB))))
  )
)

(defun folhas (arv)
  (if (and (null (no-esq arv)) (null (no-dir arv)))
    (list (no-n arv))
      (if(null (no-esq arv))
        (append (folhas (no-dir arv)))
        (if (null (no-dir arv))
          (append (folhas (no-esq arv)))
          (append (folhas (no-esq arv)) (folhas (no-dir arv)))
        )
      )
  )
)

;; Funções auxiliares para ver se um número é primo.
(defun geraLista (max &key (min 1) (step 1))
   (loop for n from min below max by step collect n)
)

(defun comprimento(lista)
  (if (null lista)
    0
    (+ 1 (comprimento (cdr lista)))
  )
)

(defun primo(x)
  (if (= (tamanhoDivisores (geraLista x) x) 1)
    T
    NIL
  )
)

(defun tamanhoDivisores(lista x)
  (if (null lista)
    0
    (if (= (mod x (car lista)) 0)
      (+ 1 (tamanhoDivisores (cdr lista) x))
      (+ (tamanhoDivisores (cdr lista) x))
    )
  )
)

(defun incrementa (arv x)
    (if (not (null arv))
        (progn
            (setf (no-n arv) (+ (no-n arv) x))
            (incrementa (no-esq arv) x)
            (incrementa (no-dir arv) x)
        )
    )
)

(defun primoToNaoPrimo (arv)
    (if (not (null arv))
        (progn
            (setf (no-n arv)
                (+ (no-n arv) 1)
              )
            (primoToNaoPrimo (no-esq arv))
            (primoToNaoPrimo (no-dir arv))
        )
    )
)

;;append (folhas (no-esq arv)) (folhas (no-dir arv))
(defun main()
  (write-line (write-to-string (igual minhaArvore minhaArvore1)))
  (write-line (write-to-string (folhas minhaArvore)))
  (write-line (write-to-string (primo 4)))
  (write-line (write-to-string (incrementa minhaArvore1 1)))
  (write-line (write-to-string (minhaArvore)))
  (write-line (write-to-string (primoToNaoPrimo minhaArvore)))

)

(main)
