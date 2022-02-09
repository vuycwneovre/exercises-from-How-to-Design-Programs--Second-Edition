;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname exercise-5-tree) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/image)

(define height 50)
(define width 10)
(define radius 30)


(define (tree height width radius)
  (overlay/offset
   (circle radius "solid" "green")
   0 (/ height 2)
   (rectangle width height "solid" "brown")))