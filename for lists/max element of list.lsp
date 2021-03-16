;gnu clisp  2.49.60

;max element in list
(defun maxx (s)
    (if (eq (cdr s) nil)
        (car s)
        (max2 (car s) (maxx (cdr s)))
    )
)

(defun max2(x y)
    (if (< x y)
        y
        x
    )
)

(print (maxx `(1 2 3 4)))