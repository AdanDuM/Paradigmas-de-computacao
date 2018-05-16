; Exerc 7

; Exerc 6
(defun tria_vare (a b c)
  (if (and(>= a b) (>= a c))
    (>= (+ b c) a)
    (if (and(>= b a) (>= b c) )
      (>= (+ a c) b)
      (if (and(>= c a) (>= c b) )
        (>= (+ a b) c)
      )
    )
  )
)

; Exerc 5
(defun alun_aprovado (a b c)
  (if (>= (/(+(+ a b)c)3) 6)
    (concatenate 'string "Aprovado" a b c)
    "Reprovado"
  )
)

; Exerc 4
(defun my_xor (a b)
  (and (or (not a) b)(or a (not b)))
)

; Exerc 3
(defun areaTri (ba alt)
  (/(* ba alt)2)
)

; Exerc 2
(defun absoluto (num)
  (if (< num 0)
    (* num -1)
    num
  )
)

;Exerc 1
(defun elev (num exp)
  (if (= exp 1)
    num
    (* num (elev num (- exp 1)))
  )
)

(defun main ()

  ; Exerc 5
  ;(setq a (read))
  ;(setq b (read))
  ;(setq c (read))
  ;(write-line (alun_aprovado a b c))

  ; Exerc 4
  ;(setq a (read))
  ;(setq b (read))
  ;(write-line (write-to-string (my_xor a b)))

  ; Exerc 3
  ;(setq ba (read))
  ;(setq alt (read))
  ;(write-line (write-to-string (areaTri ba alt)))

  ; Exerc 2
  ;(setq num (read))
  ;(write-line (write-to-string (absoluto num)))

  ; Exerc 1
  ;(setq y (read))
  ;(setq x (read))
  ;(write-line (write-to-string (elev y x)))

)

(main)
