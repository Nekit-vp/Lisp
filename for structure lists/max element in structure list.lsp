;gnu clisp  2.49.60

(defun max2 (x y)
     (if (> x y)
          x
          y
     )
)

(defun max_element_struct_list (s) 
    (if (eq (cdr s) nil)
        (if (atom (car s))
              (car s)
              (max_element_struct_list (car s))
        )
        (if (atom (car s))
            (max2 (car s) (max_element_struct_list (cdr s)))
            (max2 (max_element_struct_list (car s)) (max_element_struct_list (cdr s)))
        )   
    )
)

(print (max_element_struct_list '(5 (1 6) 3 ((7 8)))))