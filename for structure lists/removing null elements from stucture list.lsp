;удаление нулевых элементов (nil) из структурного списка

;gnu clisp  2.49.60

(defun del_nil_structure_list (s)

	(if (cdr s)
        (if (atom (car s))
            
            (if (eq (car s) nil)
                (del_nil_structure_list (cdr s))
                (cons (car s) (del_nil_structure_list (cdr s)))
            )
            (cons (del_nil_structure_list (car s))  (del_nil_structure_list (cdr s)))
        )
        
        (if (atom (car s))
            (if (eq (car s) nil)
                nil
                (list (car s))
            )
            (del_nil_structure_list (car s))
        )
    )
)

(print (del_nil_structure_list '(nil 1 2 (nil 5) 3 nil nil 6)))