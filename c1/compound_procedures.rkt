#lang racket

; (define (<name> <formal parameters>) <body)
(define (square x) (* x x))

(square 10)
(square (square 3))

(define (sum-of-squares x y)
 (+ (square x) (square y)))

(sum-of-squares 3 7)

(define (f a)
  (sum-of-squares (+ a 1) (* a 2)))

; substitution model for procedure application
(f 5)
(sum-of-squares (+ 5 1) (* 5 2))
(+ (square 6) (square 10))
(+ (* 6 6) (* 10 10))