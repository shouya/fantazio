#lang racket


(struct app
  [name
   meta-data
   type
   body])

(define-syntax app-code
  (syntax-rules ()
    [(_ body ...)
     (lambda () body ...)]))

(define (assert cond)
  (if cond '() (exit)))
    
(define (app-exec app . input)
  (assert (app? app))
  (let [(code (app-body app))]
    (apply code input)))
  

(provide (all-defined-out))
