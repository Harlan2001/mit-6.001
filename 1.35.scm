#lang racket

(define (fixed-point f first-guess)
  (define (close-enough? v1 v2)
    (let ((tolerance 0.00001))
      (< (abs (- v1 v2)) tolerance)))
  (define (try guess)
    (let ((next (f guess)))
      (if (close-enough? guess next)
          next
          (try next))))
  (try first-guess))

;;;;;;;;;;;;;;;;;;;;
(fixed-point (lambda (x) (+ 1 (/ 1 x)))
             1.0)
             
             
;and the return is :
1.6180327868852458