(define (+ a b)
  (if (= a 0)
      b
      (1+ (+ (-1+ a) b))))

(+ 4 5) ; recursion

(define (+ a b)
  (if (= a 0)
      b
      (+ (-1+ a) (1+ b))))

(+ 4 5) ; iteration
