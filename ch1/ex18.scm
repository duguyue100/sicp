(define (good-enough? approx x)
  (< (abs (- (* approx approx approx) x)) 0.0001))

(define (improve approx x)
  (/ (+ (/ x
	   (* approx approx))
	(* 2 approx))
     3))

(define (cube-root-iter approx x)
  (if (good-enough? approx x)
      approx
      (cube-root-iter (improve approx x)
		 x)))

(define (cube-root x)
  (cube-root-iter 1.0 x))
