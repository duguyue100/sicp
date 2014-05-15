(define (sum-square-large a b c)
  (cond ((= (min a b c) a) (+ (square b) (square c)))
	((= (min a b c) b) (+ (square a) (square c)))
	((= (min a b c) c) (+ (square a) (square b)))))

(sum-square-large 3 4 5) ; 41
