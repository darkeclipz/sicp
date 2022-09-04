#lang racket

(define (inc x)
    (+ x 1))

(define (dec x)
    (- x 1))

; is recursive
(define (+ a b)
    (if (= a 0)
        b
        (inc (+ (dec a) b))))

; is iterative?
(define (+ a b)
    (if (= a 0)
        b
        (+ (dec a) (inc b))))


(+ 4 5)
(+ 4 5)