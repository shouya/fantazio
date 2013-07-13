#lang racket

(require racket/date)


(require "fantazio-app.rkt")

;;
(define hello-app
  (app "hello-fantazio"
       (make-hash (list
                   '(author . "shou ya")
                   (cons 'created_at (current-date))
                   '(description . "first demonstration application in fantazio operating system")))
       'terminal-io
       (app-code
        (display "hello\n"))))

(app-exec hello-app)
