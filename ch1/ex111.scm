(define (f n)
  (cond ((= n 0) 0)
	((= n 1) 1)
	((= n 2) 2)
	(else (+ (f (- n 1))
		 (* 2 (f (- n 2)))
		 (* 3 (f (- n 3))))))) ; recursive process

(define (f-iter a b c count)
  (if (= count 0)
      a
      (f-iter b c (+ (* a 3) (* 2 b) c) (- count 1))))

(define (f n)
  (f-iter 0 1 2 n)) ; iterative process
