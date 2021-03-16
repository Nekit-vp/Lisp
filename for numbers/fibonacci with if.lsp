;gnu clisp  2.49.60

(defun Fib (n)
    (if (< n 2)
        1
        (+ (Fib (- n 1)) (Fib (- n 2)))))

(print (Fib 5)) ;5