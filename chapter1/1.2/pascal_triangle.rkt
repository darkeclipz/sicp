#lang racket

;            1
;          1   1
;        1   2   1
;      1   3   3   1
;    1   4   6   4   1
;          . . .


;
;           1
;         1   1
;

;
;
;    if we are out of the bound of the row, return 1
;    if we are beyond 1, then return 0
; 
;    if we are on row = 0, then return 1

(define (calculate-element row column)
    (cond ((< column 0) 0)
          ((> column row) 0)
          ((or (= column 0)
               (= column (- row 1)))
            1)
          (else (+ (calculate-element (- row 1) (- column 1))
                   (calculate-element (- row 1) column)))))

(calculate-element 5 2)