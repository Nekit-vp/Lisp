;gnu clisp  2.49.60

(defun sums (s)
    (if (eq (cdr s) nil)
        (car s)
        (+ (car s) (sums (cdr s)))
    )
)
(print (sums '(1 2 3 4)))