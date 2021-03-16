;gnu clisp  2.49.60

(defun fibonacci(n)
  (cond
    ((eq n 0) 1)
    ((eq n 1) 1)
    ((+ (fibonacci (- n 1)) (fibonacci (- n 2))))))

(print (fibonacci 5))