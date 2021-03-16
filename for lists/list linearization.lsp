;gnu clisp  2.49.60


;линелизация структурного списка, то есть все атомы вынести на один уровень

(defun lin (s)
    (if (eq s nil)
        nil
        (if (atom (car s))
            (cons (car s) (lin (cdr s)))
            (append (lin (car s)) (lin (cdr s)))
        )
    )
)
     
(print (lin '((1 2 (3 56 4)) 5 3 )))