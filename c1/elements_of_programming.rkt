#lang racket

; an expression
486

; +/- are expression representing a primitive procedure
(* 5 99)

; compound expression that represents the application 
; of the procedure to those numbers
(/ 10 2)

; (operator <operands>)

; operator on the left is called prefix notation

(+ 21 35 12 7)
(+ (* 3 5) (- 10 6))

; pretty printing; vertically align the operands.
(+ (* 3
      (+ (* 2 4)
         (+ 3 5)))
   (+ (- 10 7)
      6))

; name identifies a variable whose value is an object.
(define size 2)
size

(* 5 size)

(define pi 3.14159)
(define radius 10)

(* pi (* radius radius))

(define circumference (* 2 pi radius))
circumference

; define is the languages most simple mean of abstraction

; to evaluate a combination, do the following
;  1. evaluate the subexpressions of the combination
;  2. apply the procedure that ist he value of the leftmost
;     sub-expression (the operator) to the arguments that
;     are the values of the other subexpressions (the operands).
;
; note that this rule invokes itself, thus it is recursive in nature.
; that is, it includes, as one of its steps, the need to invoke the
; rule itself!

; "percolate values upward" form of the evaluation rule is an
; example of general kind of process know as tree accumulation.