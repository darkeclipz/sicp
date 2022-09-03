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

; case analysis

(define (abs x)
    (cond ((> x 0) x)
          ((= x 0) 0)
          ((< x 0) (- x))))

(abs (- 10))
(abs 0)
(abs 10)
(abs -10)

; the word predicate is used for functions that return true or false.
; uses primitive predicates (> < =)

(define (abs2 x)
    (cond ((< x 0) (- x))
    (else x)))

(abs2 (- 10))

(define (abs3 x)
    (if (< x 0)
        (- x)
        x))


(abs3 -999)

; (if <precidate> <consequent> <alternative>)


(define x 6)
(and (> x 5) (< x 10))


(define (>= x y)
    (or (> x y) (= x y)))

(>= 10 5)