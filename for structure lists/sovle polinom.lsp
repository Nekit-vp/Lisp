;gnu clisp  2.49.60

;решение полинома (подстановка вместо икса значения и его вычисление)

(DEFUN power (x y)
    (IF (eq y 0)
        1
        (* x (power x (- y 1)))
    )
)
       
(DEFUN calculate (P x)
        (* (power x (car (cdr P))) (car P))
)

(DEFUN solve (P x)
    (IF (car P)
        (+ (calculate (car P) x) (solve (cdr P) x))
        0
    )
)

;(print (solve '((10 3)(3 1)(9 2)(5 0)) 5))
;(print (power 2 10))
;(print (calculate '(2 10) 2))
(print (solve '((1 2)(2 3)) 2))