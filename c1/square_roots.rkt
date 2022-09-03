#lang racket

(define (sqrt x)
    (define (sqrt-iter guess)
        (if (good-enough? guess)
            guess
            (sqrt-iter (improve guess))))
    (define (improve guess)
        (average guess (/ x guess)))
    (define (average x y)
        (/ (+ x y) 2))
    (define (good-enough? guess)
        (< (abs (- (square guess) x)) 0.001))
    (define (square x)
        (* x x))
    (sqrt-iter 1.0))


(define (new-if predicate
                then-clause
                else-clause)
    (cond (predicate then-clause)
          (else else-clause)))


(sqrt 2)
(sqrt (sqrt 1000))


; (operator <operands>)

; applicative order vs. normal order
;
; applicative order:
;
; ...the interpreter first evaluates the operator and operands 
; and then applies the resulting procedure to the resulting
; arguments.
;
; normal order:
;
; An alternative evaluation model would not evaluate the operands
; until their values were needed.


; This alternative “fully expand and then reduce” evaluation method
; is known as normal-order evaluation, in contrast to 
; the “evaluate the arguments and then apply” method that the interpreter
; actually uses, which is called applicative-order evaluation.


; lexical scoping