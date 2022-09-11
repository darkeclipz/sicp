#lang racket

; https://learnxinyminutes.com/docs/racket/

; (define (valid-row? row) 1)

; (valid-row? '(1 2 3))


(define (loop a b)
    (print b)
    (when (> (length a) 0) 
        (loop (cdr a) (car a))))

(loop (list 1 2 3) 0)


(length (list 1 2 3))
(car (list 1 2 3))
(cdr (cdr (list 1 2 3)))

(define (zero? x)
  (= x 0))

(define (not-zero? x)
    (not (zero? x)))

(not-zero? 2)


(define (is-valid? row)
    (= 
      (length 
        (filter not-zero? row)) 
      (length 
        (set->list 
          (list->set 
            (filter not-zero? row))))))



(filter not-zero? (list 0 1 2))
(is-valid? (list 1 2 3 4 5 6 7 8 9))

(define puzzle1 (list 0 7 0 0 4 0 8 0 0
                      0 0 9 0 0 5 0 6 0
                      0 6 0 0 0 0 0 0 3
                      0 0 4 1 0 0 0 7 0
                      0 0 0 2 0 0 0 0 6
                      0 2 0 0 3 4 0 0 0 
                      1 0 0 0 0 8 0 9 0
                      0 0 0 6 0 0 4 0 1
                      0 0 7 0 0 0 0 0 0))




; solve method
; solve-cell
; test-value

(define (get-element-at arr n)
    (if (= n 0)
      (car arr)
      (get-element-at (cdr arr) (- n 1))))

(define (set-element-at arr value index)
    (append 
      (take arr index) 
      (cons value 
        (drop arr (+ index 1)))))


(define (solve start-puzzle)

  (define (empty-cell? index puzzle)
    (not-zero? (get-element-at puzzle index)))

  (define (solve-cell current-cell puzzle)
    (print "solve-cell")
    (cond (> current-cell 80) (puzzle)
          (empty-cell? current-cell puzzle) (solve-cell (+ current-cell 1) puzzle) ; goto next cell
          (else (test-value current-cell 1 puzzle))))   ; start testing values

  (define (test-value current-cell value puzzle)
    (print "test-value")
    (solve-cell (+ current-cell 1) (set-element-at puzzle value current-cell))
  )

  ; (define (is-valid? cell #t))

  (solve-cell 0 start-puzzle)
)


;(print puzzle1)
(print (solve puzzle1))





;(get-element-at (list 1 2 3 4 5 6 7 8 9) 2)
;(set-element-at (list 1 2 3 4 5 6) -10 0)


; (apply (lambda x (- x 48))
;   (map char->integer 
;     (string->list 
;       "070040800
;        009005060
;        060000003
;        004100070
;        000200006
;        020034000
;        100008090
;        000600401
;        007000000")))

; (char->integer #\0)


; (lambda x (- x 48))