;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname exercise-1) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; distance formula

(define x 3)
(define y 4)

;origin (0,0)
(define origin-x 0)
(define origin-y 0)

(define (distance x y )
  (sqrt(+ (sqr (- x origin-x)) (sqr (- y origin-y)))))

