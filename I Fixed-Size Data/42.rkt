;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname exercise-42-car_diff_x_coordinate) (read-case-sensitive #t) (teachpacks ((lib "universe.rkt" "teachpack" "2htdp") (lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "universe.rkt" "teachpack" "2htdp") (lib "image.rkt" "teachpack" "2htdp")) #f)))
; changed point of origin of the car so it doesn't stop right
; theres also problems with check-expect, where you can see the diff.

; checks
(check-expect (render 10) (place-image CAR  10 Y-CAR BACKGROUND))
(check-expect (render 100) (place-image CAR  100 Y-CAR BACKGROUND))
(check-expect (end? 0) #false)
(check-expect (end? 100) #false)
(check-expect (end?
               (+ WIDTH-OF-WORLD
                  (/ (image-width CAR) 2))) #true)

; car
(define WHEEL-RADIUS 5) ; point of control
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
    (rectangle BODY-LENGTH BODY-HEIGHT "solid" "red")))

(define CAR
  (overlay/offset BODY
                  0 (* WHEEL-RADIUS 2)
                  BOTH-WHEELS))

; WorldState -> WorldState 
; moves the car by 3 pixels for every clock tick
; examples: 
;   given: 20, expect 23
;   given: 78, expect 81
(define (tock ws)
  (+ ws 3))

; tree
(define tree
  (underlay/xy (circle 10 "solid" "green")
               9 15
               (rectangle 2 20 "solid" "brown")))

; background
(define WIDTH-OF-WORLD 200)
(define HEIGHT-OF-WORLD (* (image-height CAR) 3))
(define Y-CAR (- HEIGHT-OF-WORLD (/ (image-height CAR) 2)))
(define BACKGROUND (place-image
                    tree
                    80 40
                    (empty-scene WIDTH-OF-WORLD HEIGHT-OF-WORLD)))


; WorldState -> Image
; places the car into the BACKGROUND scene,
; according to the given world state 
 (define (render ws)
   (place-image CAR (- ws BODY-LENGTH) Y-CAR BACKGROUND))

;end clausule
(define (end? ws)
  (= ws (+ WIDTH-OF-WORLD (/ (image-width CAR) 2))))

; main function
(define (main ws)
   (big-bang ws
             (on-tick tock)
             (to-draw render)
             (stop-when end?)))