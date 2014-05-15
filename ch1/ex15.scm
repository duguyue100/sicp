(define (p) (p))

(define (test x y)
  (if (= x 0)
      0
      y))

; the procedure evaluate first argument otherwise it will
; enter a infinite stack.

(test 0 p)
