(define (zeros_in_list count list1)
  (cond 
    ((null? list1) (print count))
    ((eqv? 0 (car list1)) (zeros_in_list (+ 1 count) (cdr list1)))
    (else (zeros_in_list count (cdr list1)))
))

(zeros_in_list 0 '(0 1 0 2 0 3 0 4 0 5))
(zeros_in_list 0 '(0 1 0 2 0 3 0 4))
(zeros_in_list 0 '(0 1 0 2 0 3))
(zeros_in_list 0 '(0 1 0 2))
(zeros_in_list 0 '(0 1))
(zeros_in_list 0 '(1))
