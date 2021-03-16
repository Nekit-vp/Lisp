;gnu clisp  2.49.60

(defun min2 (x y)
    (if (< x y)
        x
        y
    )
)

(defun mins (s)
    (if (eq (cdr s) nil)
        (car s)
        (min2 (car s) (mins (cdr s)))
    )
)
    
(defun remv (a s)
    (if (eq s nil)
        nil
        (if (eq (car s) a)
            (cdr s)
            (cons (car s) (remv a (cdr s)))
        )
    )
)
;(print (remv 6 '(3 5 6 9 6)))

(defun sorts (s)
    (if (eq (cdr s) nil)
        (list(car s))
        (cons (mins s) (sorts (remv (mins s) s)))
    )
)


(print (sorts '(6 3 5 8 5 5 9 6 5)))
;(pr int  (append (cdr '(1 2 3 4 5)) (append (list (car '(1 2 3 4 5))) nil)))

