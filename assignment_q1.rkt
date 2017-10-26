#lang racket

(cons 1 2)

(cons 1 (cons 2 (cons 3 empty)))

(cons "string" (cons 1 (cons '(2 3 4) empty)))

(list 'string '1 '(2 3 4))

(append '(string) '(1) '((2 3 4)))