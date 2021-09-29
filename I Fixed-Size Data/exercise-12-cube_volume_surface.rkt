;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname exercise-12-cube_volume_surface) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define side 3)

;volume
(define (cvolume side) (* (* side side) side))

;surface
(define (csurface side) (* (* side side) 6))