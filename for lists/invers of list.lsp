;gnu clisp  2.49.60

;invers of list
(defun invers (s)
    (if (eq s nil)
        nil
        (append (invers (cdr s)) (list (car s)))
    )
)


(print (invers `(1 2 3 4)))