#lang racket

; How many different ways can we make change
; of $1.00, given half-dollars, quarters, dimes
; nickels, and pennies?

; The number of ways to change amount a using n kinds
; of coins equals
;
;  * the number of ways to change amount a using all
;    but the first kind of coin, plus
;
;  * the number of ways to chagne amound a - d using
;    all n kinds of coins, where d is the deomination
;    of the first kind of coin.


; 1, 0.5, 0.25, 0.10, 0.05, 0.01



(define (count-change amount)
    (cc amount 5))

(define (cc amount kinds-of-coins)
    (cond ((= amount 0) 1)
          ; base case
          ((or (< amount 0)
               (= kinds-of-coins 0))
            0)
          ; recursive case
          (else
              ; only use other coins
           (+ (cc amount (- kinds-of-coins 1))
              ; one of this, and then other coins
              (cc (- amount (first-denomination
                             kinds-of-coins))
                  kinds-of-coins)))))

(define (first-denomination kinds-of-coins)
    (cond ((= kinds-of-coins 1) 1)
          ((= kinds-of-coins 2) 5)
          ((= kinds-of-coins 3) 10)
          ((= kinds-of-coins 4) 25)
          ((= kinds-of-coins 5) 50)))

(count-change 100)



; doesnt work sad pepe
(define (count-summations sum counter)
    (cond ((= sum 0) 0)
          ((= sum 1) 1)
          ((> (/ counter 2) sum) 0)
          (else
           (+ 1
              (count-summations (- sum counter) counter))
              (count-summations counter 1))))


(count-summations 5 1)
(count-summations 100 1)



(define (CS n)
    (cond (> n 0) 
           ((write (- n 1)) 
            (write '(+)) 
            (write 1) 
            (newline)))    )



(CS 5)

(write (string-join '("hello world" "test")))
(write (0 1 2 3 4))