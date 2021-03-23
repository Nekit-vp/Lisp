;gnu clisp  2.49.60

(defun sum_atom_list (s)
    (if (cdr s)
        (if (atom (car s))
            (+ (car s) (sum_atom_list (cdr s)))
            (+ (sum_atom_list (cdr s)) (sum_atom_list (car s)))
        )
        (if (atom (car s))
            (car s)
            (sum_atom_list (car s))
        )
    )
)


(print (sum_atom_list '(1 1 (1 1) 1 1 (1 1))))
        
