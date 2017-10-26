#lang racket

;This is an example implementation of ins_beg,
;It obviously doesn't do what it should, so you
;can edit this function to get started.
;
;Please note the provide function is necessary
;for the unit tests to work. Please include a
;(provide) for each function you write in your
;submitted assignment.
;
;You may delete these comments!

(provide ins_beg)
(provide ins_end)
(provide cout_top_level)
(provide count_instances)
(provide count_instances_tr)
(provide count_instances_deep)

(define (ins_beg el lst)
  (cons el (cons lst empty)))

(define (ins_end el lst)
  (cons lst (cons el empty)))

(define (cout_top_level lst)
  (if(null? lst)
     0
     (+ 1 (cout_top_level(cdr lst)))))

(define (count_instances lst item)
  (cond
    [(empty? lst) 0]
    [(equal? item (car lst))
        (+ 1 (count_instances (cdr lst) item))]
    [else (count_instances (cdr lst) item)]
  )
 )

(define (count_instances_tr item lst)
  (tr_helper item lst 0)
  )

(define (tr_helper item lst total)
  (cond [(empty? lst) total]
        [(equal? item (car lst)) (tr_helper item (cdr lst) (+ 1 total))]
        [else (tr_helper item (cdr lst) total)]
   )
)
