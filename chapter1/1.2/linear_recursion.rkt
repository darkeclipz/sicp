#lang racket

; recursive process, interpreter needs to keep track of what
; to compute once n is reached. (deferred operations)
;
; linear recursive process; because the data grows linearly
; with n.
(define (factorial n)
    (if (= n 1)
        1
        (* n (factorial (- n 1)))))


(define (factorial2 n)
    (fact-iter 1 1 n))

; iterative process, interpreter is computing
; on every step, instead of deferred.
;
; linear iterative process
(define (fact-iter product counter max-count)
    (if (> counter max-count)
        product
        (fact-iter (* counter product)
                   (+ counter 1)
                   max-count)))

(factorial 6)
(factorial2 6)