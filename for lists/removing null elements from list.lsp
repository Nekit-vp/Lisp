;удаление нулевых элементов (nil) из списка

(defun delz (s)
    (if (eq s nil)
        nil
        (if (eq (car s) nil)
            (delz (cdr s))
            (cons (car s) (delz (cdr s)))
        )
    )
)

(print (delz '(nil 5 nil nil 7 5)))