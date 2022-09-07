#lang racket

; Exercise 1.11: A function f is defined by the rule that 
; f(n)=n if n<3 and f(n)=f(n−1)+2f(n−2)+3f(n−3) if n≥3. 
; Write a procedure that computes f by means of a recursive process. 

(define (f-recursive n)
    (if (< n 3) 
        n 
        (+ (f-recursive (- n 1))
          (* 2
             (f-recursive (- n 2)))
          (* 3
             (f-recursive (- n 3))))
        ))

(f-recursive 5)

; Write a procedure that computes f by means of an iterative process.

(define (f-iterative n)
    (define (f-iter a b c count)

            ; what the fuck is going on??
            (write a)
            (write "\t")
            (write b)
            (write "\t")
            (write c)
            (newline)

            (if (= count 0) 
                a
                ;(f-iter (* 3 b) (* 2 c) (+ b c) (- count 1)))
                (f-iter (* 3 (+ a b)) 
                        (* 2 (+ b c)) 
                        b 
                        (- count 1)))
        )
    
    (f-iter 2 1 0 n))

(f-iterative 5)