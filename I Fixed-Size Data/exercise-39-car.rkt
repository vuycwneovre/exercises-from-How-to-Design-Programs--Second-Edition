;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname exercise-39-car) (read-case-sensitive #t) (teachpacks ((lib "universe.rkt" "teachpack" "2htdp") (lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "universe.rkt" "teachpack" "2htdp") (lib "image.rkt" "teachpack" "2htdp")) #f)))
; spanish flag car

(define WHEEL-RADIUS 50) ; point of control
(define WHEEL-DISTANCE (* WHEEL-RADIUS 5))
(define BODY-SPACE (* 4 WHEEL-RADIUS))

(define WHEEL
  (circle WHEEL-RADIUS "solid" "black"))
(define SPACE
  (rectangle BODY-SPACE WHEEL-RADIUS "solid" "red"))
(define BOTH-WHEELS
  (beside WHEEL SPACE WHEEL))
(define BODY-LENGTH (* WHEEL-RADIUS 10))
(define BODY-HEIGHT (* WHEEL-RADIUS 2))
(define BODY
  (above
    (rectangle (/ BODY-LENGTH 2) (/ BODY-HEIGHT 2) "solid" "red")
    (rectangle BODY-LENGTH BODY-HEIGHT "solid" "yellow")))

(define CAR
  (overlay/offset BODY
                  0 (* WHEEL-RADIUS 2)
                  BOTH-WHEELS))